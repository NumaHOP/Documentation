# `/api/rest//docpropertytype`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- DocPropertyTypeController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/docpropertytype`|GET|findAll|
|`/docpropertytype?dto`|GET|findAllDto|
|`/docpropertytype?customOnly`|GET|findAllCustomDto|
|`/docpropertytype?dto,supertype`|GET|findAllBySuperType|
|`/docpropertytype/{id}`|GET|createResponseEntity|
|`/docpropertytype`|POST|create|
|`/docpropertytype/{id}`|DELETE|delete|
|`/docpropertytype/{id}`|POST|update|

# Clashing routes

## GET on `/docpropertytype`
|functionality|params|
|-|-|
|findAll||
|findAllDto|dto|
|findAllCustomDto|customOnly|
|findAllBySuperType|dto,supertype|

# Proposed API
TODO