# `/api/rest/statistics/docunit`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- StatisticsDocUnitController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/statistics/docunit?count`|GET|getDocUnitList|
|`/statistics/docunit?countStatus`|GET|getDocUnitStatusRatio|
|`/statistics/docunit?average`|GET|getDocUnitAverages|
|`/statistics/docunit?export`|GET|getExportedDocUnitList|
|`/statistics/docunit?archive`|GET|getArchivedDocUnitList|
|`/statistics/docunit?checkdelay`|GET|getCheckDelayStatisitics|
|`/statistics/docunit?doc_published`|GET|getDocPublishedStat|
|`/statistics/docunit?doc_rejected`|GET|getDocRejectedStat|
|`/statistics/docunit?doc_types`|GET|getDocUnitTypes|

# Clashing routes

## GET on `/statistics/docunit`
|functionality|params|
|-|-|
|getDocUnitList|count|
|getDocUnitStatusRatio|countStatus|
|getDocUnitAverages|average|
|getExportedDocUnitList|export|
|getArchivedDocUnitList|archive|
|getCheckDelayStatisitics|checkdelay|
|getDocPublishedStat|doc_published|
|getDocRejectedStat|doc_rejected|
|getDocUnitTypes|doc_types|

# Proposed API
TODO