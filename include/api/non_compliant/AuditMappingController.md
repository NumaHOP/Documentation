# `/api/rest//audit/mapping`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- AuditMappingController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/audit/mapping/{id}?rev`|GET|getEntity|
|`/audit/mapping/{id}`|GET|getRevisions|

# Clashing routes

## GET on `/audit/mapping/{id}`
|functionality|params|
|-|-|
|getEntity|rev|
|getRevisions||

# Proposed API
TODO