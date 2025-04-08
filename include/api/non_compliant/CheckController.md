# `/api/rest/check`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- CheckController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/check?errors`|GET|getErrors|
|`/check/{id}`|POST|update|
|`/check`|POST|create|
|`/check/{id}?seterrors`|POST|setErrors|
|`/check/{id}?setsamplederrors`|POST|setErrorsForSampling|
|`/check/{id}?setglobalerrors`|POST|setGlobalErrors|
|`/check/{id}?setsampledglobalerrors`|POST|setGlobalErrorsForSampling|
|`/check/{id}?geterrors`|GET|getErrors|
|`/check/{id}?getsamplederrors`|GET|getErrorsForSampling|
|`/check/{id}?getcondreportforsamplepage`|GET|getCondReportForSamplePage|
|`/check/{id}?getglobalerrors`|GET|getGlobalErrors|
|`/check/{id}?getsampledglobalerrors`|GET|getGlobalErrorsForSampling|
|`/check/{id}?getdocumentallerrors`|GET|getDocumentErrors|
|`/check/{id}?getsampleallerrors`|GET|getSampleErrors|
|`/check/{id}?summaryresults`|GET|getDocumentSummaryResults|
|`/check/csv/{id}`|GET|generateSlip|
|`/check/pdf/{id}`|GET|generateSlipPdf|
|`/check/lot_csv/{id}`|GET|generateCheckSlip|
|`/check/lot_pdf/{id}`|GET|generateCheckSlipPdf|

# Clashing routes

## POST on `/check/{id}`
|functionality|params|
|-|-|
|update||
|setErrors|seterrors|
|setErrorsForSampling|setsamplederrors|
|setGlobalErrors|setglobalerrors|
|setGlobalErrorsForSampling|setsampledglobalerrors|

## GET on `/check/{id}`
|functionality|params|
|-|-|
|getErrors|geterrors|
|getErrorsForSampling|getsamplederrors|
|getCondReportForSamplePage|getcondreportforsamplepage|
|getGlobalErrors|getglobalerrors|
|getGlobalErrorsForSampling|getsampledglobalerrors|
|getDocumentErrors|getdocumentallerrors|
|getSampleErrors|getsampleallerrors|
|getDocumentSummaryResults|summaryresults|

# Proposed API
TODO