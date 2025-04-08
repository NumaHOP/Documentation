# `/api/rest/condreport_detail`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- ConditionReportDetailController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/condreport_detail?type,detail`|POST|create|
|`/condreport_detail/{identifier}`|DELETE|delete|
|`/condreport_detail/{identifier}`|GET|findByIdentifier|
|`/condreport_detail?report`|GET|findByConditionReport|
|`/condreport_detail/{identifier}`|POST|update|
|`/condreport_detail/{identifier}?confirmvalid`|POST|confirmInitialValid|

# Clashing routes

## POST on `/condreport_detail/{identifier}`
|functionality|params|
|-|-|
|update||
|confirmInitialValid|confirmvalid|

# Proposed API
TODO