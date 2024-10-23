def main [
    # Path of the source code to scrap dependencies.
    path: path
    # Path of the generated dependencies markdown table.
    out: path
] {
    let pomxml = $path | path join pom.xml;
    if (not ($pomxml | path exists)) {
        error make {
            msg: "The path provided isn't a maven project.",
            label: {
                text: "No pom.xml found in provided path."
                span: (metadata $path).span,
            }
        }
    }
    let source = open $pomxml;
    let props = $source | get content;
    $props 
        | where tag == properties 
        | get content 
        | first
        | reject attributes
        | update tag { parse '{name}.version' }
        | filter { get tag | is-not-empty}
        | update tag { first | get name }
        | update content { first | get content}
        | to md
        | save -f $out
}
