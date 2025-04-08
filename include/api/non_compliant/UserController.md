# `/api/rest//user`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- UserController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/user/{id}?change_password`|POST|changePassword|
|`/user`|POST|create|
|`/user/{id}`|DELETE|delete|
|`/user?search`|GET|search|
|`/user/{id}`|GET|getById|
|`/user/{id}?dto`|GET|getDtoById|
|`/user?dto`|GET|findAllDTO|
|`/user?providers`|GET|findProvidersDTO|
|`/user/{id}`|POST|update|
|`/user/{id}?duplicate`|GET|duplicateBorrower|
|`/user/dashboard`|POST|saveDashboard|
|`/user/{id}?signature`|GET|downloadSignature|
|`/user/{id}?thumbnail`|GET|downloadThumbnail|
|`/user/{id}?signexists`|GET|hasSignature|
|`/user/{id}?signature`|DELETE|deleteSignature|
|`/user/{id}?signature`|POST|uploadSignature|

# Clashing routes

## POST on `/user/{id}`
|functionality|params|
|-|-|
|changePassword|change_password|
|update||
|uploadSignature|signature|

## DELETE on `/user/{id}`
|functionality|params|
|-|-|
|delete||
|deleteSignature|signature|

## GET on `/user/{id}`
|functionality|params|
|-|-|
|getById||
|getDtoById|dto|
|duplicateBorrower|duplicate|
|downloadSignature|signature|
|downloadThumbnail|thumbnail|
|hasSignature|signexists|

## GET on `/user`
|functionality|params|
|-|-|
|search|search|
|findAllDTO|dto|
|findProvidersDTO|providers|

# Proposed API
TODO