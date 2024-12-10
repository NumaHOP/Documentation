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
        "object" => { (render_object $rest) }
        _ => { $"Unhandled schema type: ($rest)"; }
    }
}

def render_object [ obj, ilvl = 0] {
    let required = $obj | get required -i | default [];
    let cols = $obj | reject required -i | columns;
    if ($cols | length) == 0 {
        return "any";
    }
    mut out = [];
    match ($cols | first) {
        "properties" => {
            $out = $out | append "{\n";
            let props = $obj | get properties;
            for pname in ($props | columns) {
                let render_pname = if ($pname in $required) {
                    $"\"*($pname)\""
                } else {
                    $"\"($pname)\""
                };
                let pval = $props | get $pname;
                $out = $out | append (indent ($ilvl + 1));
                $out = $out | append $"($render_pname): (render_ty $pval $ilvl),\n";
            }
            $out = $out | append "}\n";
        }
        "allOf" => {
           $out = $out | append (render_all_of $obj ($ilvl + 1));
        },
        "oneOf" => {
           $out = $out | append (render_one_of $obj ($ilvl + 1));
        },
        _ => {
           $out = $out | append (indent ($ilvl + 1));
           $out = $out | append $"Object not handled ($obj)\n"; 
        },
    }
    $out | str join
}

def render_ty [type_rec, ilvl: int] {
    let cols = $type_rec | columns;
    if ("type" in $cols) {
        return (render_prim_ty $type_rec $ilvl);
    } else if ("$ref" in $cols) {
        return (render_ref $type_rec);
    } else if ("oneOf" in $cols) {
        return (render_one_of $type_rec $ilvl);
    } else if ("allOf" in $cols) {
        return (render_all_of $type_rec $ilvl);
    } else {
        return $"Unhandled ty ($type_rec)";
    }
}

def render_ref [type_rec] {
    return ($type_rec | get "$ref" | split row '/' | last);
}

def render_one_of [type_rec, ilvl: int] {
    let sub_types = $type_rec | get oneOf;
    mut out = "";
    if (($sub_types | length) == 1) {
        $out = (render_ty ($sub_types | first) $ilvl);
    } else {
        $out = ($sub_types | each { render_ty $in $ilvl } | str join '\n|| ');
    }
    return $out;
}

def render_all_of [type_rec, ilvl: int] {
    let sub_types = $type_rec | get allOf;
    mut out = "";
    if (($sub_types | length) == 1) {
        $out = (render_ty ($sub_types | first) $ilvl);
    } else {
        $out = ($sub_types | each { render_ty $in ($ilvl - 1) } | str join "\n& ");
    }
    return $out;
}

def render_prim_ty [ type_rec, ilvl: int ] {
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
            $out = $out | append [  (render_ty $items ($ilvl + 1)) ">" ];
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
                            return ($rest | get enum | each {echo $"\"($in)\"" } | str join ' | '); 
                        },
                    }
                }
                4 => {
                    let pat = $type_rec | get pattern;
                    return $"Pattern<($pat)> with "
                }
            }
        },
        "boolean" => {
            return "boolean";
        }
        "integer" | "number" => {
            return ($rest | get format);
        },
        "object" => {
            return (render_object $rest ($ilvl + 1));
        }
        _ => {
            return $"Unhandled type: ($rest)"
        },
    }
}



def render_routes [] {
    mut output = [];
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

    # Sort api by modules.
    let modules = $input_by_modules | columns | sort;
    for $module_name in $modules {
        # Generate module.
        let module_input = $input_by_modules | get $module_name;
        #print $"($module) -> ($module_name)";
        $output = $output | append $"\n(render_module $module_name $module_input)";

    }
    $output | str join 
}

def render_module [name, module] {
    let module_name = ($name | split row '-' | drop nth (($in | length) - 1) | str join ' ' | str capitalize);
    mut $out = []
    $out =  $out | append $"\n# ($module_name)\n";
    $out = $out | append "---\n"

    let routes = $module | get route | uniq;
    for $route in $routes {
        $out = $out | append $"## `($route)`\n"
        let methods = $module | where route == $route | get method;

        for method in $methods {
            $out = $out | append $"### ($method | str upcase)\n";
            let rest = $module
                | where route == $route and method == $method
                | reject tags operationId route method
                | first;

            let params = $rest | get parameters -i | default {}; 
            let body = $rest | get requestBody -i | default {}; 
            let responses = $rest | get responses -i | default []; 
            if not ($params | is-empty) {
                $out = $out | append $"**Parameters**: Unhandled Params ($params)\n\n";
            } else {
                $out = $out | append "**Parameters**: NONE\n\n";
            }
            if not ($body | is-empty) {
                $out = $out | append $"**Body**: Unhandled Body ($body)\n\n";
            } else {
                $out = $out | append "**Body**: NONE\n\n";
            }

            if not ($responses | is-empty) {
                let render = $responses 
                | transpose code 
                | flatten 
                | default {} content 
                | update content {
                    if not ($in | is-empty) {
                        $in | transpose content-type body | first
                    } else {
                        {content-type: "NONE", body: NONE}
                    }
                }
                | flatten
                | update body { render_resp_body $in }
                | to md;
                $out = $out | append "**Responses**:\n\n";
                $out = $out | append $"($render)\n"
            }
        }
    }
    return ($out | str join);
}

def render_resp_body [body] {
    $"` ($body) `"
}
