# `/api/rest//lot`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- LotController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/lot/{id}`|DELETE|delete|
|`/lot?delete`|POST|delete|
|`/lot?search`|GET|search|
|`/lot?search`|POST|search|
|`/lot?widget,from`|GET|getLotsForWidget|
|`/lot?simpleByProject,project`|GET|findAllSimpleForProject|
|`/lot?filterByProjects,projectIds`|GET|findAllIdentifiersForProjects|
|`/lot?dto,libraries`|GET|findAllActiveByLibraries|
|`/lot?dto,projects`|GET|findAllActiveByProjects|
|`/lot?dto,complete,libraries`|GET|findAllByLibraries|
|`/lot?dto,complete,projects`|GET|findAllByProjects|
|`/lot/{id}`|GET|getById|
|`/lot?project`|GET|findAllForProject|
|`/lot?project,simpleForDocUnit`|GET|findSimpleForDocUnit|
|`/lot/{id}?dto`|GET|getDtoById|
|`/lot?dto,lot`|GET|getDtoByIds|
|`/lot?dto`|GET|findAllDTO|
|`/lot`|POST|create|
|`/lot/{id}?unlinkProject`|POST|unlinkProject|
|`/lot/{id}?validate`|POST|validateLot|
|`/lot/{id}`|POST|update|
|`/lot?project`|POST|setProject|
|`/lot/csv/{id}`|GET|generateSlip|
|`/lot/pdf/{id}`|GET|generateSlipPdf|
|`/lot?cloturelot`|POST|closeLot|
|`/lot?decloturelot`|POST|declotureLot|

# Clashing routes

## GET on `/lot/{id}`
|functionality|params|
|-|-|
|getById||
|getDtoById|dto|

## POST on `/lot/{id}`
|functionality|params|
|-|-|
|unlinkProject|unlinkProject|
|validateLot|validate|
|update||

## POST on `/lot`
|functionality|params|
|-|-|
|delete|delete|
|search|search|
|create||
|setProject|project|
|closeLot|cloturelot|
|declotureLot|decloturelot|

## GET on `/lot`
|functionality|params|
|-|-|
|search|search|
|getLotsForWidget|widget,from|
|findAllSimpleForProject|simpleByProject,project|
|findAllIdentifiersForProjects|filterByProjects,projectIds|
|findAllActiveByLibraries|dto,libraries|
|findAllActiveByProjects|dto,projects|
|findAllByLibraries|dto,complete,libraries|
|findAllByProjects|dto,complete,projects|
|findAllForProject|project|
|findSimpleForDocUnit|project,simpleForDocUnit|
|getDtoByIds|dto,lot|
|findAllDTO|dto|

# Proposed API
TODO