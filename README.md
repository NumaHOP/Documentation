# Numahop technical documentation. 

This documentation is using mdbook and schemaspy. 

Note: This documentation is very incomplete and in its early stages.

## Dependencies

### For building
- mdbook 
- mdbook-mermaid

### For updating the generated part of the documentation.
- A running NumaHOP instance.
- bash
- nu # Temporary: will be replaced by a mdbook preprocessor at a certain point. Used for the api page.
- OpenJdk17
- wget

## Generated documentation.
Some part of the documentation is generated and needs a Numahop Installation to the version for which you want to generate the documentation.
In the `scripts` folder there are the scripts used to update the generated part of the documentation.
In the `gen` folder there are the cached generated documentation pieces allowing to build for the latest NumaHOP release.


## Building and consulting offline. 
```bash
make setup # Only once when cloning the repository
make build
make open
```

To watch changes and rebuild the book on changes.
```bash
mdbook serve 
```
Caution when using `mdbook-serve` the db page is wiped in the output directory by mdbook at each rebuild.
See [#2573](https://github.com/rust-lang/mdBook/issues/2573#issuecomment-2703634877) for more information.
