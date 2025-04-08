# `/api/rest//statistics`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- StatisticsController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/statistics?projectList`|GET|projectList|
|`/statistics?projectGroupByStatus`|GET|getProjectGroupByStatus|
|`/statistics?lotGroupByStatus`|GET|getLotGroupByStatus|
|`/statistics?projectProgress`|GET|getProjectProgress|
|`/statistics?lotProgress`|GET|getLotProgress|
|`/statistics?trainGroupByStatus`|GET|getTrainGroupByStatus|
|`/statistics?docunitGroupByStatus`|GET|getDocUnitsGroupByStatus|
|`/statistics?userGroupByLibrary`|GET|getUsersGroupByLibrary|
|`/statistics?provider_train`|GET|getProviderTrainStats|

# Clashing routes

## GET on `/statistics`
|functionality|params|
|-|-|
|projectList|projectList|
|getProjectGroupByStatus|projectGroupByStatus|
|getLotGroupByStatus|lotGroupByStatus|
|getProjectProgress|projectProgress|
|getLotProgress|lotProgress|
|getTrainGroupByStatus|trainGroupByStatus|
|getDocUnitsGroupByStatus|docunitGroupByStatus|
|getUsersGroupByLibrary|userGroupByLibrary|
|getProviderTrainStats|provider_train|

# Proposed API
TODO