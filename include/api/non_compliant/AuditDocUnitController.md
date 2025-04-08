# `/api/rest/audit/docunit`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- AuditDocUnitController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/audit/docunit/{id}?rev`|GET|getEntity|
|`/audit/docunit/{id}`|GET|getRevisions|

# Clashing routes

## GET on `/audit/docunit/{id}`
|functionality|params|
|-|-|
|getEntity|rev|
|getRevisions||

# Proposed API
TODO