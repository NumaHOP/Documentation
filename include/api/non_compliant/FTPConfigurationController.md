# `/api/rest/ftpconfiguration`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- FTPConfigurationController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/ftpconfiguration`|POST|create|
|`/ftpconfiguration/{id}`|DELETE|delete|
|`/ftpconfiguration?search`|GET|search|
|`/ftpconfiguration/{id}`|GET|getById|
|`/ftpconfiguration?project`|GET|getByProjectId|
|`/ftpconfiguration/{id}`|POST|update|

# Clashing routes

## GET on `/ftpconfiguration`
|functionality|params|
|-|-|
|search|search|
|getByProjectId|project|

# Proposed API
TODO