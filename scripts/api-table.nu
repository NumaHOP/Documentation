def main [
    # Path of the source code to scrap for api routes
    path: path
    # Path to ouput the md table
    out: path
] {
    grep @RestController -A 1 -r $path
        | lines
        | where {$in != "--"}
        | window 2 --stride 2
        | each { skip 1
            | first
            | parse '{path}-{match}'
            | first
            | update path {path relative-to $path}
        } | update match {
            let inner = $in
                | parse '@RequestMapping({inner})'
                | first
                | get inner;
            if ($inner | str starts-with value) {
                $inner
                    | parse 'value = {route}'
                    | first
                    | get route;
            } else {
                $inner
            }
        } | move match --before path
        | to md
        | save -f $out
}
