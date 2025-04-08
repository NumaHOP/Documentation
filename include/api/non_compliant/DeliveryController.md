# `/api/rest//delivery`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- DeliveryController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/delivery?search`|GET|search|
|`/delivery?widget,from`|GET|getDeliveriesForWidget|
|`/delivery?sampledWidget,from`|GET|getSampledDeliveriesForWidget|
|`/delivery/{id}?deliver`|POST|deliver|
|`/delivery/{id}?predeliver`|GET|predeliver|
|`/delivery/csv/{id}`|GET|generateSlipCSV|
|`/delivery/pdf/{id}`|GET|generateSlipPDF|
|`/delivery/lot_csv/{id}`|GET|generateSlipLotCSV|
|`/delivery/lot_pdf/{id}`|GET|generateSlipLotPDF|
|`/delivery/{id}?digitalDocuments`|GET|getSimpleDigitalDocuments|
|`/delivery/{id}?deliverySample`|GET|getSample|
|`/delivery/{id}?checkConfig`|GET|getActiveCheckConfig|
|`/delivery/{id}?deliveryReport`|GET|getDeliveryReport|
|`/delivery`|POST|create|
|`/delivery/{id}`|DELETE|delete|
|`/delivery/{id}`|POST|update|
|`/delivery/{id}`|GET|getById|
|`/delivery`|GET|getByLot|
|`/delivery?dto`|GET|findAllSimpleDTO|
|`/delivery?previouscheckslip`|GET|getPreviousCheckSlips|
|`/delivery/{id}?duplicate`|GET|duplicate|
|`/delivery?filterByProjectsLots`|GET|getSimpleByProjectsLots|
|`/delivery/{id}?forViewer`|GET|getSimpleForViewer|
|`/delivery?project`|GET|findAllForProject|
|`/delivery?docUnit,latest`|GET|findLatestDelivery|
|`/delivery?delivstatus`|GET|getDeliveryStatus|
|`/delivery/{id}?detachDoc`|POST|detachDigitalDoc|
|`/delivery/{id}?delivprogress`|GET|getDeliveryProgress|
|`/delivery?diskspace,widget`|GET|getDiskInfos|

# Clashing routes

## GET on `/delivery`
|functionality|params|
|-|-|
|search|search|
|getDeliveriesForWidget|widget,from|
|getSampledDeliveriesForWidget|sampledWidget,from|
|getByLot||
|findAllSimpleDTO|dto|
|getPreviousCheckSlips|previouscheckslip|
|getSimpleByProjectsLots|filterByProjectsLots|
|findAllForProject|project|
|findLatestDelivery|docUnit,latest|
|getDeliveryStatus|delivstatus|
|getDiskInfos|diskspace,widget|

## POST on `/delivery/{id}`
|functionality|params|
|-|-|
|deliver|deliver|
|update||
|detachDigitalDoc|detachDoc|

## GET on `/delivery/{id}`
|functionality|params|
|-|-|
|predeliver|predeliver|
|getSimpleDigitalDocuments|digitalDocuments|
|getSample|deliverySample|
|getActiveCheckConfig|checkConfig|
|getDeliveryReport|deliveryReport|
|getById||
|duplicate|duplicate|
|getSimpleForViewer|forViewer|
|getDeliveryProgress|delivprogress|

# Proposed API
TODO