# `/api/rest//conf_internet_archive`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- InternetArchiveConfigurationController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/conf_internet_archive`|POST|create|
|`/conf_internet_archive/{id}`|DELETE|delete|
|`/conf_internet_archive?collections`|GET|findIA|
|`/conf_internet_archive`|GET|findAll|
|`/conf_internet_archive?configurations,library`|GET|findByLibrary|
|`/conf_internet_archive?search`|GET|search|
|`/conf_internet_archive/{id}`|GET|getById|
|`/conf_internet_archive/{id}`|POST|udpate|

# Clashing routes

## GET on `/conf_internet_archive`
|functionality|params|
|-|-|
|findIA|collections|
|findAll||
|findByLibrary|configurations,library|
|search|search|

# Proposed API
TODO