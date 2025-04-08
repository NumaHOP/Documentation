# `/api/rest/internet_archive`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- ExportInternetArchiveController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/internet_archive/{id}?prepare_item`|GET|prepare|
|`/internet_archive/{id}?create`|POST|create|
|`/internet_archive/{id}?save`|POST|save|
|`/internet_archive?mass_export`|GET|massExport|

# Clashing routes

## POST on `/internet_archive/{id}`
|functionality|params|
|-|-|
|create|create|
|save|save|

# Proposed API
TODO