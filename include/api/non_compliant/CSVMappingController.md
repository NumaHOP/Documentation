# `/api/rest//csvmapping`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- CSVMappingController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/csvmapping`|POST|create|
|`/csvmapping/{id}`|DELETE|delete|
|`/csvmapping`|GET|findAll|
|`/csvmapping?library`|GET|findByLibrary|
|`/csvmapping?usable,library`|GET|findUsableByLibrary|
|`/csvmapping?usable`|GET|findAllUsable|
|`/csvmapping/{id}`|GET|getById|
|`/csvmapping/{id}?duplicate`|GET|duplicateMapping|
|`/csvmapping/{id}`|POST|udpate|

# Clashing routes

## GET on `/csvmapping`
|functionality|params|
|-|-|
|findAll||
|findByLibrary|library|
|findUsableByLibrary|usable,library|
|findAllUsable|usable|

## GET on `/csvmapping/{id}`
|functionality|params|
|-|-|
|getById||
|duplicateMapping|duplicate|

# Proposed API
TODO