# `/api/rest//statistics/csv`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- StatisticsCsvController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/statistics/csv?provider_train`|GET|getProviderTrainStats|
|`/statistics/csv?lotProgress`|GET|getLotProgress|
|`/statistics/csv?projectProgress`|GET|getProjectProgress|

# Clashing routes

## GET on `/statistics/csv`
|functionality|params|
|-|-|
|getProviderTrainStats|provider_train|
|getLotProgress|lotProgress|
|getProjectProgress|projectProgress|

# Proposed API
TODO