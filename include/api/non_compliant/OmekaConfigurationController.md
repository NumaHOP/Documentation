# `/api/rest/conf_omeka`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- OmekaConfigurationController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/conf_omeka`|POST|create|
|`/conf_omeka/{id}`|DELETE|delete|
|`/conf_omeka?collections`|GET|findCollections|
|`/conf_omeka?items`|GET|findItems|
|`/conf_omeka`|GET|findAll|
|`/conf_omeka?configuration,library,project`|GET|findByLibrary|
|`/conf_omeka?search`|GET|search|
|`/conf_omeka/{id}`|GET|getById|
|`/conf_omeka/{id}`|POST|udpate|

# Clashing routes

## GET on `/conf_omeka`
|functionality|params|
|-|-|
|findCollections|collections|
|findItems|items|
|findAll||
|findByLibrary|configuration,library,project|
|search|search|

# Proposed API
TODO