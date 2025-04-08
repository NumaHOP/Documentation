# `/api/rest/bibliographicrecord`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- BibliographicRecordController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/bibliographicrecord`|POST|create|
|`/bibliographicrecord/{id}?duplicate`|GET|duplicate|
|`/bibliographicrecord/{identifier}`|DELETE|delete|
|`/bibliographicrecord?delete`|POST|delete|
|`/bibliographicrecord?search`|GET|search|
|`/bibliographicrecord?searchAsList`|GET|searchAsList|
|`/bibliographicrecord?dto`|GET|findAll|
|`/bibliographicrecord?all_operations`|GET|findAllOperations|
|`/bibliographicrecord/{identifier}`|GET|getById|
|`/bibliographicrecord/{identifier}?dc`|GET|getDcById|
|`/bibliographicrecord/{identifier}`|POST|update|
|`/bibliographicrecord?update`|POST|update|
|`/bibliographicrecord/{identifier}?lock`|GET|lock|
|`/bibliographicrecord/{identifier}?unlock`|GET|unlock|

# Clashing routes

## POST on `/bibliographicrecord`
|functionality|params|
|-|-|
|create||
|delete|delete|
|update|update|

## GET on `/bibliographicrecord`
|functionality|params|
|-|-|
|search|search|
|searchAsList|searchAsList|
|findAll|dto|
|findAllOperations|all_operations|

## GET on `/bibliographicrecord/{identifier}`
|functionality|params|
|-|-|
|getById||
|getDcById|dc|
|lock|lock|
|unlock|unlock|

# Proposed API
TODO