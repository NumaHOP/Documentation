# `/api/rest/importreport`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- ImportReportController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/importreport?search`|GET|search|
|`/importreport`|GET|findAll|
|`/importreport/{id}`|GET|findOne|
|`/importreport/{id}?status`|GET|getStatus|
|`/importreport/{id}`|DELETE|delete|
|`/importreport/{id}?hasfile`|GET|hasImportFile|
|`/importreport/{id}?file`|GET|downloadImportFile|

# Clashing routes

## GET on `/importreport`
|functionality|params|
|-|-|
|search|search|
|findAll||

## GET on `/importreport/{id}`
|functionality|params|
|-|-|
|findOne||
|getStatus|status|
|hasImportFile|hasfile|
|downloadImportFile|file|

# Proposed API
TODO