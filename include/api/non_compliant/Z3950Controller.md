# `/api/rest//z3950`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- Z3950Controller.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/z3950?server`|POST|search|
|`/z3950`|POST|importFile|

# Clashing routes

## POST on `/z3950`
|functionality|params|
|-|-|
|search|server|
|importFile||

# Proposed API
TODO