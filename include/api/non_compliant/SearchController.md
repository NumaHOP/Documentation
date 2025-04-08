# `/api/rest//search`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- SearchController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/search?index`|GET|index|
|`/search?search`|GET|search|
|`/search?suggest`|GET|suggest|

# Clashing routes

## GET on `/search`
|functionality|params|
|-|-|
|index|index|
|search|search|
|suggest|suggest|

# Proposed API
TODO