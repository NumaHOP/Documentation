# `/api/rest/workflow_model`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- WorkflowModelController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/workflow_model`|POST|create|
|`/workflow_model/{id}`|DELETE|delete|
|`/workflow_model?search`|GET|search|
|`/workflow_model/{id}`|GET|createResponseEntity|
|`/workflow_model/{id}`|POST|update|
|`/workflow_model?models,library`|GET|findModelsByLibrary|

# Clashing routes

## GET on `/workflow_model`
|functionality|params|
|-|-|
|search|search|
|findModelsByLibrary|models,library|

# Proposed API
TODO