# `/api/rest/viewsformat`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- ViewsFormatConfigurationController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/viewsformat?search`|GET|search|
|`/viewsformat`|POST|create|
|`/viewsformat/{id}`|POST|update|
|`/viewsformat/{id}`|DELETE|delete|
|`/viewsformat?project`|GET|getByProjectId|
|`/viewsformat/{id}`|GET|getById|

# Clashing routes

## GET on `/viewsformat`
|functionality|params|
|-|-|
|search|search|
|getByProjectId|project|

# Proposed API
TODO