# `/api/rest//project`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- ProjectController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/project`|POST|create|
|`/project/{id}`|DELETE|delete|
|`/project?delete`|POST|delete|
|`/project/{id}?idDocs`|POST|addDocUnits|
|`/project/{id}?idLibraries`|POST|addLibraries|
|`/project?search`|GET|search|
|`/project?searchProject`|GET|searchProject|
|`/project?widget,from`|GET|getProjectsForWidget|
|`/project/{id}`|GET|getById|
|`/project?dto`|GET|findAllActiveDTO|
|`/project?dto,libraries`|GET|findAllActiveDTO|
|`/project?dto2`|GET|findAllDTO|
|`/project?dto2,libraries`|GET|findAllDTO|
|`/project/{id}`|POST|update|
|`/project/{id}?cancelProj`|POST|cancelProject|
|`/project/{id}?suspendProj`|POST|suspendProject|
|`/project/{id}?reactivProj`|POST|reactivateProject|

# Clashing routes

## POST on `/project`
|functionality|params|
|-|-|
|create||
|delete|delete|

## GET on `/project`
|functionality|params|
|-|-|
|search|search|
|searchProject|searchProject|
|getProjectsForWidget|widget,from|
|findAllActiveDTO|dto|
|findAllActiveDTO|dto,libraries|
|findAllDTO|dto2|
|findAllDTO|dto2,libraries|

## POST on `/project/{id}`
|functionality|params|
|-|-|
|addDocUnits|idDocs|
|addLibraries|idLibraries|
|update||
|cancelProject|cancelProj|
|suspendProject|suspendProj|
|reactivateProject|reactivProj|

# Proposed API
TODO