# `/api/rest//statistics/docunit/csv`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- StatisticsDocUnitCsvController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/statistics/docunit/csv?average`|GET|getDocUnitAverages|
|`/statistics/docunit/csv?doc_published`|GET|getDocPublishedStat|
|`/statistics/docunit/csv?doc_rejected`|GET|getDocRejectedStat|

# Clashing routes

## GET on `/statistics/docunit/csv`
|functionality|params|
|-|-|
|getDocUnitAverages|average|
|getDocPublishedStat|doc_published|
|getDocRejectedStat|doc_rejected|

# Proposed API
TODO