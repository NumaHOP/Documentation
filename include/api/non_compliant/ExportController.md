# `/api/rest/export`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- ExportController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/export/csv?docUnit`|GET|exportDocUnitToCsv|
|`/export/csv?lot`|GET|exportLotToCsv|
|`/export/rdfxml`|GET|exportDocUnitToRdfxml|
|`/export/ead`|GET|getEad|

# Clashing routes

## GET on `/export/csv`
|functionality|params|
|-|-|
|exportDocUnitToCsv|docUnit|
|exportLotToCsv|lot|

# Proposed API
TODO