# `/api/rest//exportftpconfiguration`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- ExportFTPConfigurationController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/exportftpconfiguration`|POST|create|
|`/exportftpconfiguration/{id}`|DELETE|delete|
|`/exportftpconfiguration?search`|GET|search|
|`/exportftpconfiguration/{id}`|GET|getById|
|`/exportftpconfiguration?project,fullConfig`|GET|getByProjectId|
|`/exportftpconfiguration?libraryId`|GET|getByLibraryId|
|`/exportftpconfiguration/{id}`|POST|update|

# Clashing routes

## GET on `/exportftpconfiguration`
|functionality|params|
|-|-|
|search|search|
|getByProjectId|project,fullConfig|
|getByLibraryId|libraryId|

# Proposed API
TODO