# `/api/rest//z3950Server`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- Z3950ServerController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/z3950Server`|POST|create|
|`/z3950Server?dto`|GET|findAll|
|`/z3950Server`|GET|findAll|
|`/z3950Server/{id}`|GET|createResponseEntity|
|`/z3950Server/{id}`|POST|udpate|
|`/z3950Server/{id}`|DELETE|delete|

# Clashing routes

## GET on `/z3950Server`
|functionality|params|
|-|-|
|findAll|dto|
|findAll||

# Proposed API
TODO