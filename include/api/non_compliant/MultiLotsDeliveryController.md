# `/api/rest//multidelivery`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- MultiLotsDeliveryController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/multidelivery/{id}?predeliver`|GET|predeliver|
|`/multidelivery/{id}?deliver`|POST|deliver|
|`/multidelivery?search`|GET|search|
|`/multidelivery/{id}`|GET|getById|
|`/multidelivery/{id}?digitalDocuments`|GET|getSimpleDigitalDocuments|
|`/multidelivery`|POST|create|
|`/multidelivery/{id}`|POST|update|
|`/multidelivery/{id}`|DELETE|delete|

# Clashing routes

## GET on `/multidelivery/{id}`
|functionality|params|
|-|-|
|predeliver|predeliver|
|getById||
|getSimpleDigitalDocuments|digitalDocuments|

## POST on `/multidelivery/{id}`
|functionality|params|
|-|-|
|deliver|deliver|
|update||

# Proposed API
TODO