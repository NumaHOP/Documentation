# `/api/rest//mapping`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- MappingController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/mapping`|POST|create|
|`/mapping/{id}`|DELETE|delete|
|`/mapping`|GET|findByLibraryAndType|
|`/mapping?usable,library`|GET|findUsableByLibrary|
|`/mapping?usable`|GET|findAllUsable|
|`/mapping/{id}`|GET|getById|
|`/mapping/{id}?duplicate`|GET|duplicate|
|`/mapping/{id}`|POST|update|
|`/mapping/{id}?export`|GET|exportMapping|
|`/mapping/{id}?import`|POST|importMapping|
|`/mapping?import,library`|POST|importNewMapping|

# Clashing routes

## POST on `/mapping`
|functionality|params|
|-|-|
|create||
|importNewMapping|import,library|

## GET on `/mapping`
|functionality|params|
|-|-|
|findByLibraryAndType||
|findUsableByLibrary|usable,library|
|findAllUsable|usable|

## GET on `/mapping/{id}`
|functionality|params|
|-|-|
|getById||
|duplicate|duplicate|
|exportMapping|export|

## POST on `/mapping/{id}`
|functionality|params|
|-|-|
|update||
|importMapping|import|

# Proposed API
TODO