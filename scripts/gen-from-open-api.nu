use std repeat

export def main [] {
    let input = (curl -X GET http://localhost:8080/v3/api-docs) | from json;
    mut output = []; 

    $output = $output | append ($input | get paths | render_routes);
    $output = $output | append ($input | get components.schemas | render_schemas);
    $output | str join | save -f ./gen/open-api.md;
}

def indent [lvl] {
    "\t" | repeat $lvl | str join
}

def render_schemas [] {
    let schemas = $in;
    mut output =  [];
    $output = $output | append "# Schemas\n";
    for schema_name in ($schemas | columns) {
        $output = $output | append $"## ($schema_name)\n";
        $output = $output | append $"```ts\n(render_schema ($schema_name) ($schemas | get $schema_name))\n```\n\n"
    }
    $output | str join
} 

def render_schema [ name, schema ] {
    let rest = $schema | reject type;
    let ty = $schema | get type;
    match ($ty) {
        "object" => { render_object $rest 0 false },
        _ => { $"Unhandled schema type: ($rest)" },
    }
}

def render_object [ obj, ilvl: int, in_table: bool] {
    let required = $obj | get required -i | default [];
    let cols = $obj | reject required -i | columns;
    if ($cols | length) == 0 {
        return "any";
    }
    let sep = if $in_table { '' } else { "\n" };
    mut out = [];
    match ($cols | first) {
        "properties" => {
            $out = $out | append $"{($sep)";
            let props = $obj | get properties;
            for pname in ($props | columns) {
                let render_pname = if ($pname in $required) {
                    $"\"*($pname)\""
                } else {
                    $"\"($pname)\""
                };
                let pval = $props | get $pname;
                $out = $out | append (indent ($ilvl + 1));
                $out = $out | append $"($render_pname): (render_ty $pval $ilvl $in_table),($sep)";
            }
            $out = $out | append $"}($sep)";
        }
        "allOf" => {
           $out = $out | append (render_all_of $obj ($ilvl + 1) $in_table);
        },
        "oneOf" => {
           $out = $out | append (render_one_of $obj ($ilvl + 1) $in_table);
        },
        _ => {
           $out = $out | append (indent ($ilvl + 1));
           $out = $out | append $"Object not handled ($obj)($sep)"; 
        },
    }
    $out | str join
}

def render_ty [type_rec, ilvl: int, in_table: bool] {
    let cols = $type_rec | columns;
    if ("type" in $cols) {
        return (render_prim_ty $type_rec $ilvl $in_table);
    } else if ("$ref" in $cols) {
        return (render_ref $type_rec);
    } else if ("oneOf" in $cols) {
        return (render_one_of $type_rec $ilvl $in_table);
    } else if ("allOf" in $cols) {
        return (render_all_of $type_rec $ilvl $in_table);
    } else {
        return $"Unhandled ty ($type_rec)";
    }
}

def render_ref [type_rec] {
    return ($type_rec | get "$ref" | split row '/' | last);
}

def render_one_of [type_rec, ilvl: int, in_table: bool] {
    let sub_types = $type_rec | get oneOf;
    mut out = "";
    let sep = if $in_table { ' \|\| ' } else {'\n|| '};
    if (($sub_types | length) == 1) {
        $out = (render_ty ($sub_types | first) $ilvl $in_table);
    } else {
        $out = ($sub_types | each { render_ty $in $ilvl $in_table} | str join $sep );
    }
    return $out;
}

def render_all_of [type_rec, ilvl: int, in_table: bool] {
    let sub_types = $type_rec | get allOf;
    mut out = "";
    if (($sub_types | length) == 1) {
        $out = (render_ty ($sub_types | first) $ilvl $in_table);
    } else {
        $out = ($sub_types | each { render_ty $in ($ilvl - 1) $in_table } | str join "\n& ");
    }
    return $out;
}

def render_prim_ty [ type_rec, ilvl: int, in_table: bool] {
    let type = $type_rec | get type -i;
    let rest = $type_rec | reject type -i;
    match $type {
        "array" => {
            let items = ($rest | get items);
            mut out = [];
            if ($rest | get uniqueItems -i | default false) {
                $out = $out | append "UniqArray<";
            } else {
                $out = $out | append "Array<";
            }
            $out = $out | append [  (render_ty $items ($ilvl + 1) $in_table) ">" ];
            return ($out | str join);
        },
        "string" => {
            let cols = ($rest | columns);
            match ($cols | length) {
                0 => { return "string"; }
                1 => {
                    match ($cols | first) {
                        "format" => {
                            return ($rest | get format | str camel-case | str capitalize);
                        },
                        "enum" => {
                            let sep = if $in_table { ' \| ' } else { ' | ' }
                            return ($rest | get enum | each {echo $"\"($in)\"" } | str join $sep); 
                        },
                        "default" => {
                            return "string"; 
                        },
                    }
                }
                _ => {return "string with unhandled constraints"},
            }
        },
        "boolean" => {
            return "boolean";
        }
        "integer" | "number" => {
            return ($rest | get format);
        },
        "object" => {
            return (render_object $rest ($ilvl + 1) $in_table);
        }
        _ => {
            return $"Unhandled type: ($rest)"
        },
    }
}



def render_routes [] {
    mut out = [];
    let input_by_modules =  $in
        | transpose route method 
        | update method {
            $in 
                | transpose method 
                | flatten
        }
        | flatten
        | flatten
        | update tags {first}
        | group-by tags;

    $out =  $out | append $"\n# Modules\n";
    # Sort api by modules.
    let modules = $input_by_modules | columns | sort;
    for $module_name in $modules {
        # Generate module.
        let module_input = $input_by_modules | get $module_name;
        #print $"($module) -> ($module_name)";
        $out = $out | append $"\n(render_module $module_name $module_input)";

    }
    $out | str join 
}

def render_module [name, module] {
    let module_name = ($name | split row '-' | drop nth (($in | length) - 1) | str join ' ' | str capitalize);
    mut $out = []
    $out =  $out | append $"\n## ($module_name)\n";
    $out = $out | append "---\n"

    let routes = $module | get route | uniq;
    for $route in $routes {
        $out = $out | append $"### `($route)`\n"
        let methods = $module | where route == $route | get method;

        for method in $methods {
            $out = $out | append $"#### ($method | str upcase)\n";
            let rest = $module
                | where route == $route and method == $method
                | reject tags operationId route method
                | first;

            let params = $rest | get parameters -i | default {}; 
            let body = $rest | get requestBody -i | default {}; 
            let responses = $rest | get responses -i | default []; 
            if not ($params | is-empty) {
                $out = $out | append $"**Parameters**:\n\n(render_params $params)\n\n";
            } else {
                $out = $out | append "**Parameters**: NONE\n\n";
            }

            if not ($body | is-empty) {
                $out = $out | append $"**Body**:\n (render_req_body $body)\n\n";
            } else {
                $out = $out | append "**Body**: NONE\n\n";
            }

            if not ($responses | is-empty) {
                let res = $responses 
                | transpose code 
                | flatten 
                | default {} content 
                | update content {
                    if not ($in | is-empty) {
                        $in | transpose content-type body | first
                    } else {
                        {content-type: "NONE", body: "NONE"}
                    }
                }
                | flatten;

                let render = $res
                | update body { if ($in != "NONE") {render_resp_body $in} else $in }
                | to md;
                $out = $out | append "**Responses**:\n\n";
                $out = $out | append $"($render)\n";
            }
        }
    }
    return ($out | str join);
}

def render_resp_body [body] {
    let body = $body | get schema;
    let cols = $body | columns; 
    mut $out = ["`"];
    if "type" in $cols {
        $out = $out | append (render_prim_ty $body 0 true);
    } else if ("$ref" in $cols) {
        $out = $out | append (render_ref $body);
    } else if ("oneOf" in $cols) {
        $out = $out | append (render_one_of $body 0 true);
    } else {
        $out = $out | append ["col:" ...$cols];
    }
    return ($out | append "`" | str join);
}

def render_params [params] {
    return ($params 
        | rename -c {schema: value} 
        | insert "default" { |it|
            let val = $it | get -i value.default;
            if ($val | is-empty) {""} else { $"`($val)`" }
        } 
        | compact col
        | update value { $"`(render_ty $in 0 true)`" } 
        | to md
    );
}

def "compact col" [] {
    mut res = $in;
    print $res;
    print "\n";
    let columns = $res | columns;
    for column_name in $columns {
        let column = $res | get -i $column_name;

        if ($column | compact -e | length) == 0 {
            $res = ($res | reject -i $column_name);
        }
    }
    return $res;
}

def render_req_body [body] {
    $body | get content | transpose content-type content | update content { $in | get schema | do { $"`(render_ty $in 0 true)`" } }| to md;
}
