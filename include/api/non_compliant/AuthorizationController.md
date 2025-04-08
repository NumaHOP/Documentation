# `/api/rest//authorization`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- AuthorizationController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/authorization?dto`|GET|findAllDto|
|`/authorization`|GET|findAll|
|`/authorization/{identifier}`|GET|createResponseEntity|

# Clashing routes

## GET on `/authorization`
|functionality|params|
|-|-|
|findAllDto|dto|
|findAll||

# Proposed API
TODO