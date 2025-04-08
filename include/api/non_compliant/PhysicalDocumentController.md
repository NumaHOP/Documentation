# `/api/rest/physicaldocument`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- PhysicalDocumentController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/physicaldocument/{identifier}`|GET|createResponseEntity|
|`/physicaldocument/{identifier}`|POST|update|
|`/physicaldocument?train`|GET|findByTrainIdentifier|
|`/physicaldocument?trainDocUnits`|GET|findByDocUnitIdentifiers|

# Clashing routes

## GET on `/physicaldocument`
|functionality|params|
|-|-|
|findByTrainIdentifier|train|
|findByDocUnitIdentifiers|trainDocUnits|

# Proposed API
TODO