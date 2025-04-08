# `/api/rest/statistics/workflow/csv`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- StatisticsWorkflowCsvController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/statistics/workflow/csv?wdelivery`|GET|getWorkflowDeliveryProgressStatistics|
|`/statistics/workflow/csv?wdocunit`|GET|getWorkflowDocUnitProgressStatistics|
|`/statistics/workflow/csv?wstate`|GET|getWorkflowStatesStatistics|
|`/statistics/workflow/csv?wuser`|GET|getWorkflowUsersStatistics|
|`/statistics/workflow/csv?wprofile_activity`|GET|getProfilesActivityStatistics|
|`/statistics/workflow/csv?wuser_activity`|GET|getUsersActivityStatistics|

# Clashing routes

## GET on `/statistics/workflow/csv`
|functionality|params|
|-|-|
|getWorkflowDeliveryProgressStatistics|wdelivery|
|getWorkflowDocUnitProgressStatistics|wdocunit|
|getWorkflowStatesStatistics|wstate|
|getWorkflowUsersStatistics|wuser|
|getProfilesActivityStatistics|wprofile_activity|
|getUsersActivityStatistics|wuser_activity|

# Proposed API
TODO