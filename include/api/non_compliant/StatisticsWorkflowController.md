# `/api/rest//statistics/workflow`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- StatisticsWorkflowController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/statistics/workflow?wdelivery`|GET|getWorkflowDeliveryProgressStatistics|
|`/statistics/workflow?wcontrol`|GET|getWorkflowDocUnitStateControl|
|`/statistics/workflow?wdocunit`|GET|getWorkflowDocUnitProgressStatistics|
|`/statistics/workflow?wdocunitpending`|GET|getWorkflowDocUnitProgressStatisticsLight|
|`/statistics/workflow?wdocunit,current`|GET|getWorkflowDocUnitCurrentStatistics|
|`/statistics/workflow?wstate`|GET|getWorkflowStatesStatistics|
|`/statistics/workflow?wuser`|GET|getWorkflowUsersStatistics|
|`/statistics/workflow?wprofile_activity`|GET|getProfilesActivityStatistics|
|`/statistics/workflow?wuser_activity`|GET|getUsersActivityStatistics|

# Clashing routes

## GET on `/statistics/workflow`
|functionality|params|
|-|-|
|getWorkflowDeliveryProgressStatistics|wdelivery|
|getWorkflowDocUnitStateControl|wcontrol|
|getWorkflowDocUnitProgressStatistics|wdocunit|
|getWorkflowDocUnitProgressStatisticsLight|wdocunitpending|
|getWorkflowDocUnitCurrentStatistics|wdocunit,current|
|getWorkflowStatesStatistics|wstate|
|getWorkflowUsersStatistics|wuser|
|getProfilesActivityStatistics|wprofile_activity|
|getUsersActivityStatistics|wuser_activity|

# Proposed API
TODO