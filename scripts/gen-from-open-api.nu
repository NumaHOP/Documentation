
def replace [ 
    column: string
    f: 
] {
    let old_col = $in | get $column;
    let new_cols = $old_col | do $f;
    $in | reject $column | merge $new_cols
}

export def main [] {


    let input = (curl -X GET http://localhost:8080/v3/api-docs) | from json;

    $input 
        | get paths 
        | transpose route rest 
        | update rest { $in | transpose method rest | update rest { $in | reject tags operationId } } 
        | flatten
        | flatten
        | flatten
        | to nuon
        | save -f test.md
}
