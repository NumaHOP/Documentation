# `/api/rest//conf_sftp`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- SftpConfigurationController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/conf_sftp`|POST|create|
|`/conf_sftp/{id}`|DELETE|delete|
|`/conf_sftp?pacs,library`|GET|findPACS|
|`/conf_sftp?pacs,configuration`|GET|findConfigurationPACS|
|`/conf_sftp`|GET|findAll|
|`/conf_sftp?library`|GET|findByLibrary|
|`/conf_sftp?search`|GET|search|
|`/conf_sftp/{id}`|GET|getById|
|`/conf_sftp/{id}?init`|GET|initConf|
|`/conf_sftp/{id}`|POST|udpate|
|`/conf_sftp/{id}?upload`|POST|uploadPacs|

# Clashing routes

## GET on `/conf_sftp`
|functionality|params|
|-|-|
|findPACS|pacs,library|
|findConfigurationPACS|pacs,configuration|
|findAll||
|findByLibrary|library|
|search|search|

## GET on `/conf_sftp/{id}`
|functionality|params|
|-|-|
|getById||
|initConf|init|

## POST on `/conf_sftp/{id}`
|functionality|params|
|-|-|
|udpate||
|uploadPacs|upload|

# Proposed API
TODO