# `/api/rest//conf_digital_library`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- DigitalLibraryConfigurationController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/conf_digital_library`|POST|create|
|`/conf_digital_library/{id}`|DELETE|delete|
|`/conf_digital_library?configuration,library`|GET|findByLibrary|
|`/conf_digital_library?search`|GET|search|
|`/conf_digital_library/{id}`|GET|getById|
|`/conf_digital_library/{id}`|POST|udpate|

# Clashing routes

## GET on `/conf_digital_library`
|functionality|params|
|-|-|
|findByLibrary|configuration,library|
|search|search|

# Proposed API
TODO