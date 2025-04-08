# `/api/rest/checkconfiguration`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- CheckConfigurationController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/checkconfiguration`|POST|create|
|`/checkconfiguration/{id}`|DELETE|delete|
|`/checkconfiguration?search`|GET|search|
|`/checkconfiguration?rules`|GET|getInitRules|
|`/checkconfiguration/{id}`|GET|getById|
|`/checkconfiguration/{id}?edition`|GET|getByIdForEdition|
|`/checkconfiguration?project`|GET|getByProjectId|
|`/checkconfiguration/{id}?duplicate`|GET|duplicateCheckConfiguration|
|`/checkconfiguration/{idDocUnit}?docUnit`|GET|getByDocUnit|
|`/checkconfiguration/{id}`|POST|update|
|`/checkconfiguration?add-radical-controle`|GET|updateCheckConfigurationAddRadicalControl|

# Clashing routes

## GET on `/checkconfiguration`
|functionality|params|
|-|-|
|search|search|
|getInitRules|rules|
|getByProjectId|project|
|updateCheckConfigurationAddRadicalControl|add-radical-controle|

## GET on `/checkconfiguration/{id}`
|functionality|params|
|-|-|
|getById||
|getByIdForEdition|edition|
|duplicateCheckConfiguration|duplicate|

# Proposed API
TODO