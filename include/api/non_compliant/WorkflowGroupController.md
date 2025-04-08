# `/api/rest/workflow_group`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- WorkflowGroupController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/workflow_group`|POST|create|
|`/workflow_group/{id}`|DELETE|delete|
|`/workflow_group?search`|GET|search|
|`/workflow_group/{id}`|GET|createResponseEntity|
|`/workflow_group/{id}`|POST|update|
|`/workflow_group?groups,library`|GET|findGroupsByLibrary|

# Clashing routes

## GET on `/workflow_group`
|functionality|params|
|-|-|
|search|search|
|findGroupsByLibrary|groups,library|

# Proposed API
TODO