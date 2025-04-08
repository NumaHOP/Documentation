# `/api/rest/train`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- TrainController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/train?search`|GET|search|
|`/train/{id}`|GET|getById|
|`/train?filterByProjects`|GET|findAllIdentifiersForProjects|
|`/train/{id}`|POST|update|
|`/train/{id}`|DELETE|delete|
|`/train`|POST|create|
|`/train?dto`|GET|filterTrainDTOs|
|`/train?dto,complete`|GET|findAllDTO|
|`/train?project`|GET|findAllForProject|
|`/train?simpleByProject,project`|GET|findAllSimpleForProject|
|`/train/csv/{id}`|GET|generateSlip|
|`/train/pdf/{id}`|GET|generateSlipPdf|

# Clashing routes

## GET on `/train`
|functionality|params|
|-|-|
|search|search|
|findAllIdentifiersForProjects|filterByProjects|
|filterTrainDTOs|dto|
|findAllDTO|dto,complete|
|findAllForProject|project|
|findAllSimpleForProject|simpleByProject,project|

# Proposed API
TODO