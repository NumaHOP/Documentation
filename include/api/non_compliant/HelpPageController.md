# `/api/rest//help`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- HelpPageController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/help`|GET|search|
|`/help?tag`|GET|searchByTag|
|`/help/{id}`|GET|createResponseEntity|
|`/help/{id}`|POST|createResponseEntity|
|`/help/{id}`|DELETE|delete|
|`/help`|POST|createResponseEntity|
|`/help?modulelist`|GET|createResponseEntity|

# Clashing routes

## GET on `/help`
|functionality|params|
|-|-|
|search||
|searchByTag|tag|
|createResponseEntity|modulelist|

# Proposed API
TODO