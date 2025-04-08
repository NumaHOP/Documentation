# `/api/rest/export/cines`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- ExportCinesController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/export/cines/{identifier}?export`|GET|getDcById|
|`/export/cines/{id}?save`|POST|saveExportData|
|`/export/cines?send,dc`|POST|exportDocUnitToCinesWithDc|
|`/export/cines?send,ead`|POST|exportDocUnitToCinesWithEad|
|`/export/cines?check_mailbox`|GET|checkMailbox|
|`/export/cines?aip,docUnit`|GET|getAip|
|`/export/cines?sip,docUnit`|GET|getSip|
|`/export/cines?mets,docUnit`|GET|getMets|
|`/export/cines?mass_export`|GET|massExport|
|`/export/cines/regenerateMets`|GET|regenerateMets|

# Clashing routes

## POST on `/export/cines`
|functionality|params|
|-|-|
|exportDocUnitToCinesWithDc|send,dc|
|exportDocUnitToCinesWithEad|send,ead|

## GET on `/export/cines`
|functionality|params|
|-|-|
|checkMailbox|check_mailbox|
|getAip|aip,docUnit|
|getSip|sip,docUnit|
|getMets|mets,docUnit|
|massExport|mass_export|

# Proposed API
TODO