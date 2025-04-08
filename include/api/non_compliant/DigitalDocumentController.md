# `/api/rest//digitaldocument`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- DigitalDocumentController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/digitaldocument/{identifier}?thumbnail`|GET|getThumbnailById|
|`/digitaldocument/{identifier}?view`|GET|getViewById|
|`/digitaldocument/{identifier}`|GET|getByIdWithPageCount|
|`/digitaldocument/{identifier}?docUnit`|GET|getConfigurationCheck|
|`/digitaldocument/{identifier}?deliverynotes`|GET|getDeliveryNotes|
|`/digitaldocument/{identifier}?filename`|GET|getFilename|
|`/digitaldocument/{identifier}`|GET|getMasterPdfInfos|
|`/digitaldocument/{identifier}`|GET|getMetadataForFiles|
|`/digitaldocument/{identifier}`|GET|getMetadataForSample|
|`/digitaldocument/{identifier}`|GET|getFilenamesWithErrors|
|`/digitaldocument/{identifier}`|GET|getFileNumbersWithErrors|
|`/digitaldocument/{identifier}?checksOK,sampling`|POST|endChecks|
|`/digitaldocument/{identifier}`|POST|update|
|`/digitaldocument`|GET|getAllDocumentsToCheck|
|`/digitaldocument/{identifier}`|GET|getPage|
|`/digitaldocument?search`|GET|search|
|`/digitaldocument/{identifier}?nbPieces`|GET|getPiecesNumber|

# Clashing routes

## GET on `/digitaldocument/{identifier}`
|functionality|params|
|-|-|
|getThumbnailById|thumbnail|
|getViewById|view|
|getByIdWithPageCount||
|getConfigurationCheck|docUnit|
|getDeliveryNotes|deliverynotes|
|getFilename|filename|
|getMasterPdfInfos||
|getMetadataForFiles||
|getMetadataForSample||
|getFilenamesWithErrors||
|getFileNumbersWithErrors||
|getPage||
|getPiecesNumber|nbPieces|

## POST on `/digitaldocument/{identifier}`
|functionality|params|
|-|-|
|endChecks|checksOK,sampling|
|update||

## GET on `/digitaldocument`
|functionality|params|
|-|-|
|getAllDocumentsToCheck||
|search|search|

# Proposed API
TODO