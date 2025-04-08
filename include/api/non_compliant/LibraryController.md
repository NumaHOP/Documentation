# `/api/rest//library`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- LibraryController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/library`|POST|create|
|`/library/{id}`|DELETE|delete|
|`/library/{id}?dto`|GET|getDtoById|
|`/library?dto`|GET|createResponseEntity|
|`/library?search`|GET|search|
|`/library/{id}`|GET|LibraryDTO|
|`/library/{id}?providers`|GET|getProviders|
|`/library/{id}?users`|GET|getUsers|
|`/library/{id}`|POST|update|
|`/library/{id}?logo`|GET|downloadLogo|
|`/library/{id}?thumbnail`|GET|downloadThumbnail|
|`/library/{id}?logoexists`|GET|hasLogo|
|`/library/{id}?logo`|DELETE|deleteLogo|
|`/library/{id}?logo`|POST|uploadLogo|

# Clashing routes

## GET on `/library`
|functionality|params|
|-|-|
|createResponseEntity|dto|
|search|search|

## DELETE on `/library/{id}`
|functionality|params|
|-|-|
|delete||
|deleteLogo|logo|

## GET on `/library/{id}`
|functionality|params|
|-|-|
|getDtoById|dto|
|LibraryDTO||
|getProviders|providers|
|getUsers|users|
|downloadLogo|logo|
|downloadThumbnail|thumbnail|
|hasLogo|logoexists|

## POST on `/library/{id}`
|functionality|params|
|-|-|
|update||
|uploadLogo|logo|

# Proposed API
TODO