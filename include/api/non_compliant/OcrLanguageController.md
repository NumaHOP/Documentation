# `/api/rest/ocrlanguages`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- OcrLanguageController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/ocrlanguages?languages`|GET|search|
|`/ocrlanguages?langs`|GET|getLangs|

# Clashing routes

## GET on `/ocrlanguages`
|functionality|params|
|-|-|
|search|languages|
|getLangs|langs|

# Proposed API
TODO