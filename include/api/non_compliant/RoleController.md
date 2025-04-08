# `/api/rest/role`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- RoleController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/role`|POST|create|
|`/role/{identifier}`|DELETE|delete|
|`/role?search`|GET|search|
|`/role?dto`|GET|findAll|
|`/role`|GET|findAll|
|`/role/{identifier}`|GET|createResponseEntity|
|`/role/{identifier}`|POST|udpate|

# Clashing routes

## GET on `/role`
|functionality|params|
|-|-|
|search|search|
|findAll|dto|
|findAll||

# Proposed API
TODO