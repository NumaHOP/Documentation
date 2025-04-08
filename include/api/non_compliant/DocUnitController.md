# `/api/rest//docunit`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- DocUnitController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/docunit/initHistory`|GET|initDocCheckHistory|
|`/docunit`|POST|create|
|`/docunit/{identifier}`|DELETE|delete|
|`/docunit?delete`|POST|delete|
|`/docunit?updateselection`|POST|updateSelection|
|`/docunit?deleteDocUnitsProject`|POST|deleteDocUnitsProject|
|`/docunit?removeAllFromLot`|POST|removeAllFromLot|
|`/docunit?unlink`|POST|unlink|
|`/docunit?createProjectFromDoc`|POST|createProjectFromDoc|
|`/docunit?search`|GET|search|
|`/docunit?searchAllForProject,project`|GET|searchAllForProject|
|`/docunit?searchAsList`|POST|searchAsList|
|`/docunit?searchAsMinList`|POST|searchAsMinList|
|`/docunit?dto`|GET|findAllDTO|
|`/docunit/{identifier}`|GET|getById|
|`/docunit/{identifier}`|POST|update|
|`/docunit?projectAndLot`|POST|setProjectLotAndTrain|
|`/docunit?setTrain`|POST|setTrain|
|`/docunit/{identifier}?removeProject`|POST|removeFromProject|
|`/docunit/{identifier}?removeLot`|POST|removeLot|
|`/docunit/{identifier}?removeTrain`|POST|removeTrain|
|`/docunit?project`|GET|findAllForProject|
|`/docunit?lot`|GET|findAllForLot|
|`/docunit?parent`|GET|getChildrenByParentId|
|`/docunit?addchild`|POST|addChildren|
|`/docunit?removechild`|POST|removeChildren|
|`/docunit?sibling`|GET|getSiblingsByDocUnitId|
|`/docunit?addsibling`|POST|addSibling|
|`/docunit?removesibling`|POST|removeSibling|
|`/docunit?export`|GET|massExport|
|`/docunit?export_ftp`|GET|massExportFtp|
|`/docunit/{identifier}?lock`|GET|lock|
|`/docunit/{identifier}?unlock`|GET|unlock|
|`/docunit/{identifier}?inactiveDoc`|POST|inactive|

# Clashing routes

## POST on `/docunit`
|functionality|params|
|-|-|
|create||
|delete|delete|
|updateSelection|updateselection|
|deleteDocUnitsProject|deleteDocUnitsProject|
|removeAllFromLot|removeAllFromLot|
|unlink|unlink|
|createProjectFromDoc|createProjectFromDoc|
|searchAsList|searchAsList|
|searchAsMinList|searchAsMinList|
|setProjectLotAndTrain|projectAndLot|
|setTrain|setTrain|
|addChildren|addchild|
|removeChildren|removechild|
|addSibling|addsibling|
|removeSibling|removesibling|

## GET on `/docunit`
|functionality|params|
|-|-|
|search|search|
|searchAllForProject|searchAllForProject,project|
|findAllDTO|dto|
|findAllForProject|project|
|findAllForLot|lot|
|getChildrenByParentId|parent|
|getSiblingsByDocUnitId|sibling|
|massExport|export|
|massExportFtp|export_ftp|

## GET on `/docunit/{identifier}`
|functionality|params|
|-|-|
|getById||
|lock|lock|
|unlock|unlock|

## POST on `/docunit/{identifier}`
|functionality|params|
|-|-|
|update||
|removeFromProject|removeProject|
|removeLot|removeLot|
|removeTrain|removeTrain|
|inactive|inactiveDoc|

# Proposed API
TODO