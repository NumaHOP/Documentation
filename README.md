# Numahop technical documentation. 

Note: This documentation is very incomplete and in its early stages.

## Dependencies

### For building
- mdbook 
- mdbook-footnote

### For updating the generated part of the documentation.
- A running NumaHOP instance.
- bash
- nu # Temporary: will be replaced by a mdbook preprocessor at a certain point. Used for the api page.
- sed
- coreutils

## Generated documentation.
Some part of the documentation is generated and needs a Numahop Installation to the version for which you want to generate the documentation.
In the `scripts` folder there are the scripts used to update the generated part of the documentation.
In the `gen` folder there are the cached generated documentation pieces allowing to build for the latest NumaHOP release.

## Building and serving
```bash
mdbook build
```

```bash
mdbook serve
```
