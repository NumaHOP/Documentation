# Temporary script that scans the NumaHOP codebase for the api annotations.
# TODO Get parameters arguments annotations to improve documentation.
# TODO Get Roles Annotations.

def main [path] {
    let input = (grep -r -e "@RequestMapping" $path -A5 | lines);
    mut files = {};
    mut lines = [];
    mut lastfile = "";
    mut first = true;
    for line in $input {
        if ($line =~ "^--") { continue }
        let res = $line | parse -r "^(.*java)([:|-])(.*)$" | first;
        let path = $res.capture0 | path basename;
        if (($res.capture1) == ":") {
            if (not $first) {
                let l = $lines;
                $files = $files | upsert $lastfile { $in | append [$l]};
            } else {
                $first = false;
            }
            $lines = [ $res.capture2 ];
            $lastfile = $path;
        } else {
            $lines = $lines | append ($res.capture2);
        }
    }
    let l = $lines;
    $files = $files | upsert $lastfile { $in | append [$l]};
    try {rm "include/api" -r}
    mkdir "include/api"
    touch "include/api/index.md"
    touch "include/api/summary_stub.md"
    $files
        | parse_files
        | sort-compliant
        | do {
            $in.compliant | render-compliant;
            $in.non-compliant | render-non-compliant;
        }
}

def parse_files [] {
    let input = $in;
    let files = $in | columns;
    mut result = {};
    for file in $files {
        let content = $input | get $file;
        mut routes = [];
        let base_route = $content
            | first
            | first
            | parse -r "\"(.*)\""
            | first
            | rename base_route
            | get base_route;
        let content = $content | skip 1;
        for route in $content {
            let source =  $route | str join;
            let annot_source = $source
                | parse -r "@RequestMapping\\((.*?)\\)"
                | rename s
                | get s
                | first;
            let sub_path = $annot_source
                | parse -r "value = \"(.*?)\""
                | get --ignore-errors 0
                | default {match: ""}
                | rename sub_route
                | update sub_route {str trim -c '/'} ;
            let method = $annot_source
                | parse -r "method = RequestMethod.(\\w+)"
                | first
                | rename method;
            let function = $source
                | parse -r "public .+ (\\w+)\\("
                | first
                | rename functionality;
            let params = $annot_source
                | parse -r "params = {(.*?)}"
                | get --ignore-errors 0
                | default {params: ""}
                | rename params
                | update params {
                    $in
                        | split row ","
                        | each {
                            $in
                                | str trim
                                | str trim -c '"'
                        }
                        | str join ','
                };

            $routes  = $routes
                | append (
                    $sub_path
                        | merge $method
                        | merge $function
                        | merge $params
                );
        }
        $result = $result
            | insert $file {base_route: $base_route, routes: $routes};
    }
    $result
}

def sort-compliant [] {
    let input = $in;
    let files = $in | columns;
    mut result = {
        compliant: {},
        non-compliant: {}
    };

    for file in $files {
        let $content =  $input | get $file;
        let routes = $content | get routes;
        # No routes is compliant
        if ($routes | is-empty) {
            $result.compliant = $result.compliant | insert $file $content
            continue
        }
        # No routes is compliant
        let grouped = $routes | group-by sub_route method --to-table;
        if ( $grouped | get items | all { ($in | length) <= 1}) {
            $result.compliant = $result.compliant | insert $file $content
            continue
        }
        let clashing = $grouped
            | filter { ($in.items | length) > 1 }
            | update items {$in | select functionality params };
        $result.non-compliant  = $result.non-compliant
            | insert $file ($content | merge {clash: $clashing});
    }
    $result
}

def render-compliant [] {
    let input = $in;
    let files = $in | columns;
    mut index = [ "" "# Compliant modules" ]
    for file in $files {
        let file_name = $file | str replace 'java' 'md';
        let content = $input | get $file;
        let base_route = $content
            | get base_route
            | parse -r "(/api/rest|/api_int)(.*)"
            | rename prefix base_route
            | first
            | update base_route { str trim --right -c '/'};
        let current_table = $content
            | get routes
            | rename -c {sub_route: route}
            | update route {|$it| $it.route | render_route ($base_route | get base_route) $it.params }
            | reject params
            | to md;

        mkdir include/api/compliant
        [
            $"# `($base_route | get prefix)($base_route | get base_route)`"
            "# Relevant files"
            $"- ($file)"
            "- TODO front end"
            ""
            "# Current API"
            ($current_table)
        ]
        | str join "\n"
        | save $"include/api/compliant/($file_name)" -f
        $index = $index | append $"- [($base_route | get prefix)($base_route | get base_route)]\(./compliant/($file_name)\)"
    }
    $index | str join "\n" | save --append "include/api/index.md"
}

def render-non-compliant [] {
    let input = $in;
    let files = $in | columns;
    mut index = ["" "# Non compliant modules" ]
    for file in $files {
        let file_name = $file | str replace 'java' 'md';
        let content = $input | get $file;
        let base_route = $content
            | get base_route
            | parse "/api/rest{base_route}"
            | first
            | get base_route
            | str trim --right -c '/';

        let current_table = $content
            | get routes
            | rename -c {sub_route: route}
            | update route {|$it| $it.route | render_route $base_route $it.params }
            | reject params
            | to md;

        let clashing_table = $content
            | get clash
            | rename -c {sub_route: route}
            | update route {|$it| $it.route | render_route $base_route }
            | update items {
                $in
                    | update params {str join ','}
                    | to md;
            }
            | each {
                [
                    ""
                    $"## ($in.method) on ($in.route | str trim --right -c '/')"
                    $in.items
                ]
            }
            | flatten
            | str join "\n";

        mkdir include/api/non_compliant
        [
            $"# `/api/rest/($base_route)`"
            "> Not Complete."
            "> Doesn't respect oas v3.1."
            ""
            "# Relevant files"
            $"- ($file)"
            "- TODO front end"
            ""
            "# Current API"
            ($current_table)
            ""
            "# Clashing routes"
            ($clashing_table)
            ""
            "# Proposed API"
            "TODO"
        ]
        | str join "\n"
        | save $"include/api/non_compliant/($file_name)" -f;

        $index = $index | append $"- [/api/rest($base_route)]\(./non_compliant/($file_name)\)";
    }
    $index | str join "\n" | save --append "include/api/index.md"
    $index | each {$"\t\t($in)"} | str join "\n" | save --append "include/api/summary_stub.md"
}

def render_route [base, params?] {
    if (not ($params | is-empty)) {
        $"`([$"($base)" $in] | path join | str trim --right -c '/')?($params)`"
    } else {
        $"`([$base $in] | path join | str trim --right -c '/')`"
    }
}

