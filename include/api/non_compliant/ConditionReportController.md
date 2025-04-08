# `/api/rest/condreport`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- ConditionReportController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/condreport?docUnit`|POST|create|
|`/condreport/{identifier}`|DELETE|delete|
|`/condreport/{identifier}`|GET|findByIdentifier|
|`/condreport?docUnit`|GET|findByDocUnit|
|`/condreport?summary,docUnit`|GET|getSummaryByDocUnit|
|`/condreport?sampleId`|GET|getSummaryBySample|
|`/condreport/{identifier}`|POST|update|
|`/condreport?search`|POST|search|
|`/condreport/{id}?exportto`|GET|exportReportOdt|
|`/condreport?import-template`|GET|getReportImportTemplate|
|`/condreport/csv`|GET|generateSlip|
|`/condreport/pdf`|GET|generateSlipPdf|
|`/condreport?import-report`|POST|updateReport|
|`/condreport/{id}?propagate`|POST|propagateReport|

# Clashing routes

## POST on `/condreport`
|functionality|params|
|-|-|
|create|docUnit|
|search|search|
|updateReport|import-report|

## GET on `/condreport`
|functionality|params|
|-|-|
|findByDocUnit|docUnit|
|getSummaryByDocUnit|summary,docUnit|
|getSummaryBySample|sampleId|
|getReportImportTemplate|import-template|

# Proposed API
TODO