# `/api/rest//imagemetadata`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- ImageMetadataController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/imagemetadata`|GET|findAll|
|`/imagemetadata`|POST|create|
|`/imagemetadata?saveList`|POST|saveList|
|`/imagemetadata/{id}`|POST|update|
|`/imagemetadata?saveValues`|POST|saveValues|
|`/imagemetadata?getMetaValues`|GET|getMetaValues|

# Clashing routes

## GET on `/imagemetadata`
|functionality|params|
|-|-|
|findAll||
|getMetaValues|getMetaValues|

## POST on `/imagemetadata`
|functionality|params|
|-|-|
|create||
|saveList|saveList|
|saveValues|saveValues|

# Proposed API
TODO