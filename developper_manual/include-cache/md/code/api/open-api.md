
> This documentation is in major party wrong because the swagger generates an incorrect api.json due to the api non-compliance to the oas v3.1 spec.

# Modules

## Account
---
### `/api/rest/reset`
#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`string`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`any`|

### `/api/rest/account/change_password`
#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`string`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|

### `/api/rest/authenticate`
#### GET
**Parameters**: NONE

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`string`|

### `/api/rest/account`
#### GET
**Parameters**: NONE

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`SimpleUserAccountDTO`|



## Admin logs
---
### `/api/rest/downloadlogsfile`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|dtFile|query|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/octet-stream|`any`|



## Audit delivery
---
### `/api/rest/audit/delivery`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|from|query|true|`Date`|
|library|query|false|`Array<string>`|
|project|query|false|`Array<string>`|
|lot|query|false|`Array<string>`|
|status|query|false|`Array<"SAVED" \| "DELIVERING" \| "DELIVERED" \| "TO_BE_CONTROLLED" \| "VALIDATED" \| "REJECTED" \| "BACK_TO_PROVIDER" \| "AUTOMATICALLY_REJECTED" \| "DELIVERED_AGAIN" \| "DELIVERING_ERROR" \| "TREATED" \| "CLOSED" \| "CANCELED">`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<AuditDeliveryRevisionDTO>`|



## Audit doc unit
---
### `/api/rest/audit/docunit/{id}`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|id|path|true|`string`||
|rev|query|false|`int32`|`1`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`DocUnit \|\| Array<AuditDocUnitRevisionDTO>`|



## Audit lot
---
### `/api/rest/audit/lot`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|from|query|true|`Date`|
|library|query|false|`Array<string>`|
|project|query|false|`Array<string>`|
|status|query|false|`Array<"CREATED" \| "ONGOING" \| "PENDING" \| "CANCELED" \| "CLOSED">`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<AuditLotRevisionDTO>`|



## Audit mapping
---
### `/api/rest/audit/mapping/{id}`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|id|path|true|`string`||
|rev|query|false|`int32`|`1`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Mapping \|\| Array<AuditRevision>`|



## Audit project
---
### `/api/rest/audit/project`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|from|query|true|`Date`|
|library|query|false|`Array<string>`|
|status|query|false|`Array<"CREATED" \| "ONGOING" \| "PENDING" \| "CANCELED" \| "CLOSED">`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<AuditProjectRevisionDTO>`|



## Audit train
---
### `/api/rest/audit/train`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|from|query|true|`Date`|
|library|query|false|`Array<string>`|
|project|query|false|`Array<string>`|
|status|query|false|`Array<"CREATED" \| "IN_PREPARATION" \| "IN_DIGITIZATION" \| "RECEIVING_PHYSICAL_DOCUMENTS" \| "CANCELED" \| "CLOSED">`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<AuditTrainRevisionDTO>`|



## Authorization
---
### `/api/rest/authorization`
#### GET
**Parameters**: NONE

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<AuthorizationDTO> \|\| Array<Authorization>`|

### `/api/rest/authorization/{identifier}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Authorization`|



## Automatic check
---
### `/api/rest/check/auto`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|docUnit|query|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`any`|



## Bibliographic record
---
### `/api/rest/bibliographicrecord`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|search|query|false|`string`||
|libraries|query|false|`Array<string>`||
|projects|query|false|`Array<string>`||
|lots|query|false|`Array<string>`||
|statuses|query|false|`Array<string>`||
|lastModifiedDateFrom|query|false|`Date`||
|lastModifiedDateTo|query|false|`Date`||
|createdDateFrom|query|false|`Date`||
|createdDateTo|query|false|`Date`||
|orphan|query|false|`boolean`||
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`10`|
|sorts|query|false|`Array<string>`||
|searchAsList|query|false|`string`||
|trains|query|false|`Array<string>`||
|identifier|query|true|`string`||

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`PageSimpleListBibliographicRecordDTO \|\| PageSimpleBibliographicRecordDTO \|\| Array<SimpleBibliographicRecordDTO>`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`Array<string>`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`BibliographicRecordDTO`|

### `/api/rest/bibliographicrecord/{identifier}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`BibliographicRecordDcDTO \|\| BibliographicRecordDTO`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`BibliographicRecordDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`BibliographicRecordDTO`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`any`|

### `/api/rest/bibliographicrecord/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`BibliographicRecordDTO`|



## Check configuration
---
### `/api/rest/checkconfiguration`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|search|query|false|`string`||
|libraries|query|false|`Array<string>`||
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`10`|
|project|query|true|`string`||

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<AutomaticCheckRuleDTO> \|\| PageSimpleCheckConfigurationDTO \|\| Array<SimpleCheckConfigurationDTO>`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`CheckConfigurationDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`CheckConfigurationDTO`|

### `/api/rest/checkconfiguration/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`CheckConfigurationDTO`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`CheckConfigurationDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`CheckConfigurationDTO`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`CheckConfigurationDTO`|

### `/api/rest/checkconfiguration/{idDocUnit}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|idDocUnit|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`CheckConfigurationDTO`|



## Check
---
### `/api/rest/check`
#### GET
**Parameters**: NONE

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`UniqArray<"UNREADABLE" \| "BAD_NAME" \| "BAD_HIERARCHY" \| "MISSING_PAGE" \| "TRUNCATED_INFORMATION" \| "BAD_RESOLUTION" \| "BAD_THRESHOLD" \| "WRONG_FORMAT" \| "FOREIGN_BODIES" \| "BAD_METADATA" \| "INCONSISTENT_METADATA" \| "ANOTHER_MAJ" \| "BLURRED_IMAGE" \| "SLANT_IMAGE" \| "HALO_ON_IMAGE" \| "SHADOW_ON_IMAGE" \| "GEOMETRICAL_ANOMALY" \| "CHROMATIC_ANOMALY" \| "WRONG_FRAMING" \| "WRONG_ORDER" \| "BAD_OCR" \| "ANOTHER_MIN">`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`CheckDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`CheckDTO`|

### `/api/rest/check/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|
|deliveryId|query|true|`string`|
|pageId|query|true|`string`|
|pageNumber|query|true|`int32`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`		Object not handled {additionalProperties: {type: object}}`|
|202|Accepted|*/*|`DocErrorReport \|\| UniqArray<"UNREADABLE" \| "BAD_NAME" \| "BAD_HIERARCHY" \| "MISSING_PAGE" \| "TRUNCATED_INFORMATION" \| "BAD_RESOLUTION" \| "BAD_THRESHOLD" \| "WRONG_FORMAT" \| "FOREIGN_BODIES" \| "BAD_METADATA" \| "INCONSISTENT_METADATA" \| "ANOTHER_MAJ" \| "BLURRED_IMAGE" \| "SLANT_IMAGE" \| "HALO_ON_IMAGE" \| "SHADOW_ON_IMAGE" \| "GEOMETRICAL_ANOMALY" \| "CHROMATIC_ANOMALY" \| "WRONG_FRAMING" \| "WRONG_ORDER" \| "BAD_OCR" \| "ANOTHER_MIN"> \|\| UniqArray<string>`|
#### POST
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|
|pageNumber|query|true|`int32`|
|deliveryId|query|true|`string`|

**Body**:
 |content-type|content|
|-|-|
|application/json|`DocPageErrorsDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`CheckDTO`|
|202|Accepted|*/*|`DocErrorReport`|
### `/api/rest/check/pdf/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|

### `/api/rest/check/lot_pdf/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|

### `/api/rest/check/lot_csv/{id}`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|id|path|true|`string`||
|encoding|query|false|`string`|`utf-8`|
|separator|query|false|`string`|`;`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|

### `/api/rest/check/csv/{id}`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|id|path|true|`string`||
|encoding|query|false|`string`|`utf-8`|
|separator|query|false|`string`|`;`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|



## Check slip configuration
---
### `/api/rest/checkslip_configuration/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`CheckSlipConfiguration`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`CheckSlipConfiguration`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`CheckSlipConfiguration`|



## Cines language code
---
### `/api/rest/conf/cineslangcode`
#### GET
**Parameters**: NONE

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<CinesLanguageCode>`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`Array<CinesLanguageCode>`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<CinesLanguageCode>`|



## Condition report attachment
---
### `/api/rest/condreport_attachment`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|report|query|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<ConditionReportAttachment>`|

#### POST
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|file|query|true|`Array<Binary>`|
|report|query|true|`string`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<ConditionReportAttachment>`|

### `/api/rest/condreport_attachment/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|

### `/api/rest/condreport_attachment/{identifier}`
#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|



## Condition report
---
### `/api/rest/condreport`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|docUnit|query|true|`string`||
|sampleId|query|true|`string`||
|import-template|query|true|`Array<string>`||
|format|query|false|`string with unhandled constraints`|`XLSX`|
|sortAttributes|query|true|`Array<string>`||

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`ConditionReport \|\| UniqArray<string>`|

#### POST
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`2147483647`|
|sorts|query|false|`Array<string>`||
|file|query|true|`Array<Binary>`||
|docUnit|query|true|`string`||

**Body**:
 |content-type|content|
|-|-|
|application/json|`SearchRequest`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<ImportResult> \|\| PageSearchResult \|\| ConditionReport`|

### `/api/rest/condreport/{id}`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|id|path|true|`string`||
|exportto|query|false|`string with unhandled constraints`|`PDF`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|

#### POST
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|docUnit|query|true|`string`|
|id|path|true|`string`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`any`|

### `/api/rest/condreport/{identifier}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`ConditionReport`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`ConditionReport`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`ConditionReport`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|

### `/api/rest/condreport/pdf`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|reports|query|true|`Array<string>`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|

### `/api/rest/condreport/csv`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|reports|query|true|`Array<string>`||
|encoding|query|false|`string`|`ISO-8859-15`|
|separator|query|false|`string`|`;`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|



## Condition report detail
---
### `/api/rest/condreport_detail`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|report|query|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<ConditionReportDetail>`|

#### POST
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|type|query|true|`"LIBRARY_LEAVING" \| "PROVIDER_RECEPTION" \| "DIGITALIZATION" \| "LIBRARY_BACK" \| "LIBRARY_RETURN" \| "LIBRARY_NEW_DIGIT"`|
|detail|query|true|`string`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`ConditionReportDetail`|

### `/api/rest/condreport_detail/{identifier}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`ConditionReportDetail`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`ConditionReportDetail`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`ConditionReportDetail`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|



## Condition report slip configuration
---
### `/api/rest/condreportslip_configuration/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`ConditionReportSlipConfiguration`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`ConditionReportSlipConfiguration`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`ConditionReportSlipConfiguration`|



## Csv mapping
---
### `/api/rest/csvmapping`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|library|query|true|`Library`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`UniqArray<CSVMappingDTO> \|\| Array<CSVMappingDTO>`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`CSVMapping`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`CSVMapping`|

### `/api/rest/csvmapping/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|
|library|query|false|`string`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`CSVMapping`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`CSVMapping`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`CSVMapping`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`any`|



## Delivery configuration
---
### `/api/rest/delivery_configuration/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`DeliverySlipConfiguration`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`DeliverySlipConfiguration`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`DeliverySlipConfiguration`|



## Delivery
---
### `/api/rest/delivery`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|lot|query|true|`string`||
|from|query|true|`Date`||
|library|query|false|`Array<string>`||
|project|query|false|`Array<string>`||
|status|query|false|`Array<"SAVED" \| "DELIVERING" \| "DELIVERED" \| "TO_BE_CONTROLLED" \| "VALIDATED" \| "REJECTED" \| "BACK_TO_PROVIDER" \| "AUTOMATICALLY_REJECTED" \| "DELIVERED_AGAIN" \| "DELIVERING_ERROR" \| "TREATED" \| "CLOSED" \| "CANCELED">`||
|search|query|false|`string`||
|libraries|query|false|`Array<string>`||
|projects|query|false|`Array<string>`||
|lots|query|false|`Array<string>`||
|providers|query|false|`Array<string>`||
|deliveryDateFrom|query|false|`Date`||
|deliveryDateTo|query|false|`Date`||
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`10`|
|digitalDocIdentifier|query|true|`string`||
|filteredProjects|query|false|`Array<string>`||
|filteredLots|query|false|`Array<string>`||
|docUnit|query|true|`string`||

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<AuditDeliveryRevisionDTO> \|\| Array<SimpleDeliveryDTO> \|\| PageSimpleDeliveryDTO \|\| Array<DeliveryDTO> \|\| DeliveryDTO \|\| 		Object not handled {additionalProperties: {type: integer, format: int64}} \|\| 		Object not handled {additionalProperties: {type: object}}`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`ManualDeliveryDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`DeliveryDTO`|

### `/api/rest/delivery/{id}`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|id|path|true|`string`||
|create_docs|query|false|`boolean`|`false`|
|digitalId|query|false|`string`||

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`SimpleDeliveryForViewerDTO \|\| DeliveryDTO \|\| Array<SimpleDeliveredDigitalDocDTO> \|\| Array<string> \|\| SampleDTO \|\| CheckConfigurationDTO`|

#### POST
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|id|path|true|`string`||
|lockedDocs|query|false|`Array<string>`||
|create_docs|query|false|`boolean`|`false`|
|prefixToExclude|query|false|`Array<string>`||

**Body**:
 |content-type|content|
|-|-|
|application/json|`Array<PreDeliveryDocumentDTO>`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`DeliveryDTO`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`any`|

### `/api/rest/delivery/pdf/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|

### `/api/rest/delivery/lot_pdf/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|

### `/api/rest/delivery/lot_csv/{id}`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|id|path|true|`string`||
|encoding|query|false|`string`|`utf-8`|
|separator|query|false|`string`|`;`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|

### `/api/rest/delivery/csv/{id}`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|id|path|true|`string`||
|encoding|query|false|`string`|`utf-8`|
|separator|query|false|`string`|`;`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|



## Description property
---
### `/api/rest/condreport_desc_prop`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|library|query|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<DescriptionProperty>`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`DescriptionProperty`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`DescriptionProperty`|

### `/api/rest/condreport_desc_prop/{identifier}`
#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`DescriptionProperty`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`DescriptionProperty`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|



## Description value
---
### `/api/rest/condreport_desc_value`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|property|query|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<DescriptionValue>`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`DescriptionValue`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`DescriptionValue`|

### `/api/rest/condreport_desc_value/{identifier}`
#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`DescriptionValue`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`DescriptionValue`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|



## Digital document
---
### `/api/rest/digitaldocument/{identifier}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|
|pageNumber|query|true|`int32`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`SimpleDocPageDTO \|\| DigitalDocumentDTO \|\| 		Object not handled {additionalProperties: {type: string}} \|\| Array<string> \|\| Array<int32> \|\| string \|\| CheckConfigurationDTO`|
|202|Accepted|*/*|`		Object not handled {additionalProperties: {type: object, additionalProperties: {type: string}}}`|
#### POST
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|
|checksOK|query|true|`boolean`|
|sampling|query|true|`boolean`|

**Body**:
 |content-type|content|
|-|-|
|application/json|`DigitalDocumentDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`any \|\| DigitalDocumentDTO`|

### `/api/rest/digitaldocument`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|search|query|false|`string`||
|status|query|false|`Array<string>`||
|libraries|query|false|`Array<string>`||
|projects|query|false|`Array<string>`||
|lots|query|false|`Array<string>`||
|trains|query|false|`Array<string>`||
|deliveries|query|false|`Array<string>`||
|page|query|false|`int32`|`0`|
|dateFrom|query|false|`Date`||
|dateTo|query|false|`Date`||
|dateLimitFrom|query|false|`Date`||
|dateLimitTo|query|false|`Date`||
|searchPgcnId|query|false|`string`||
|searchTitre|query|false|`string`||
|searchRadical|query|false|`string`||
|fileFormats|query|false|`Array<string>`||
|maxAngles|query|false|`Array<string>`||
|searchPageFrom|query|false|`int32`||
|searchPageTo|query|false|`int32`||
|searchPageCheckFrom|query|false|`int64`||
|searchPageCheckTo|query|false|`int64`||
|searchMinSize|query|false|`double`||
|searchMaxSize|query|false|`double`||
|validated|query|false|`boolean`||
|size|query|false|`int32`|`2147483647`|
|sorts|query|false|`Array<string>`||

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`Array<SimpleDigitalDocumentDTO>`|



## Digital library configuration
---
### `/api/rest/conf_digital_library`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|search|query|false|`string`||
|libraries|query|false|`Array<string>`||
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`10`|
|library|query|true|`Library`||
|active|query|false|`boolean`||

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`UniqArray<DigitalLibraryConfigurationDTO> \|\| PageDigitalLibraryConfigurationDTO`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`DigitalLibraryConfiguration`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`DigitalLibraryConfiguration`|

### `/api/rest/conf_digital_library/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`DigitalLibraryConfiguration`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`DigitalLibraryConfiguration`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`DigitalLibraryConfiguration`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`any`|



## Digital library diffusion
---
### `/api/rest/export/digitalLibrary`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|docs|query|true|`Array<string>`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`"100 CONTINUE" \| "101 SWITCHING_PROTOCOLS" \| "102 PROCESSING" \| "103 CHECKPOINT" \| "200 OK" \| "201 CREATED" \| "202 ACCEPTED" \| "203 NON_AUTHORITATIVE_INFORMATION" \| "204 NO_CONTENT" \| "205 RESET_CONTENT" \| "206 PARTIAL_CONTENT" \| "207 MULTI_STATUS" \| "208 ALREADY_REPORTED" \| "226 IM_USED" \| "300 MULTIPLE_CHOICES" \| "301 MOVED_PERMANENTLY" \| "302 FOUND" \| "302 MOVED_TEMPORARILY" \| "303 SEE_OTHER" \| "304 NOT_MODIFIED" \| "305 USE_PROXY" \| "307 TEMPORARY_REDIRECT" \| "308 PERMANENT_REDIRECT" \| "400 BAD_REQUEST" \| "401 UNAUTHORIZED" \| "402 PAYMENT_REQUIRED" \| "403 FORBIDDEN" \| "404 NOT_FOUND" \| "405 METHOD_NOT_ALLOWED" \| "406 NOT_ACCEPTABLE" \| "407 PROXY_AUTHENTICATION_REQUIRED" \| "408 REQUEST_TIMEOUT" \| "409 CONFLICT" \| "410 GONE" \| "411 LENGTH_REQUIRED" \| "412 PRECONDITION_FAILED" \| "413 PAYLOAD_TOO_LARGE" \| "413 REQUEST_ENTITY_TOO_LARGE" \| "414 URI_TOO_LONG" \| "414 REQUEST_URI_TOO_LONG" \| "415 UNSUPPORTED_MEDIA_TYPE" \| "416 REQUESTED_RANGE_NOT_SATISFIABLE" \| "417 EXPECTATION_FAILED" \| "418 I_AM_A_TEAPOT" \| "419 INSUFFICIENT_SPACE_ON_RESOURCE" \| "420 METHOD_FAILURE" \| "421 DESTINATION_LOCKED" \| "422 UNPROCESSABLE_ENTITY" \| "423 LOCKED" \| "424 FAILED_DEPENDENCY" \| "425 TOO_EARLY" \| "426 UPGRADE_REQUIRED" \| "428 PRECONDITION_REQUIRED" \| "429 TOO_MANY_REQUESTS" \| "431 REQUEST_HEADER_FIELDS_TOO_LARGE" \| "451 UNAVAILABLE_FOR_LEGAL_REASONS" \| "500 INTERNAL_SERVER_ERROR" \| "501 NOT_IMPLEMENTED" \| "502 BAD_GATEWAY" \| "503 SERVICE_UNAVAILABLE" \| "504 GATEWAY_TIMEOUT" \| "505 HTTP_VERSION_NOT_SUPPORTED" \| "506 VARIANT_ALSO_NEGOTIATES" \| "507 INSUFFICIENT_STORAGE" \| "508 LOOP_DETECTED" \| "509 BANDWIDTH_LIMIT_EXCEEDED" \| "510 NOT_EXTENDED" \| "511 NETWORK_AUTHENTICATION_REQUIRED"`|

#### POST
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|docUnit|query|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`any`|



## Doc property type
---
### `/api/rest/docpropertytype`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|supertype|query|true|`"DC" \| "DCQ" \| "CUSTOM" \| "CUSTOM_CINES" \| "CUSTOM_ARCHIVE" \| "CUSTOM_OMEKA"`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<DocPropertyTypeDTO> \|\| Array<DocPropertyType>`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`DocPropertyType`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`DocPropertyType`|

### `/api/rest/docpropertytype/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`DocPropertyType`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`DocPropertyType`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`DocPropertyType`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`DocPropertyType`|



## Doc unit
---
### `/api/rest/docunit`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|sibling|query|true|`string`||
|search|query|false|`string`||
|hasDigitalDocuments|query|false|`boolean`|`false`|
|active|query|false|`boolean`|`true`|
|archived|query|false|`boolean`|`false`|
|nonArchived|query|false|`boolean`|`false`|
|archivable|query|false|`boolean`|`false`|
|nonArchivable|query|false|`boolean`|`false`|
|distributed|query|false|`boolean`|`false`|
|nonDistributed|query|false|`boolean`|`false`|
|distributable|query|false|`boolean`|`false`|
|nonDistributable|query|false|`boolean`|`false`|
|libraries|query|false|`Array<string>`||
|projects|query|false|`Array<string>`||
|lots|query|false|`Array<string>`||
|statuses|query|false|`Array<string>`||
|lastModifiedDateFrom|query|false|`Date`||
|lastModifiedDateTo|query|false|`Date`||
|createdDateFrom|query|false|`Date`||
|createdDateTo|query|false|`Date`||
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`2147483647`|
|sorts|query|false|`Array<string>`||
|project|query|false|`string`||
|parent|query|true|`string`||
|lot|query|true|`string`||
|docs|query|true|`Array<string>`||
|types|query|false|`Array<string>`|`[METS, VIEW]`|
|pgcnId|query|false|`string`||

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`PageSimpleDocUnitDTO \|\| Array<DocUnitDTO> \|\| PageSummaryDocUnitWithLotDTO \|\| Array<SummaryDocUnitWithLotDTO> \|\| Array<SummaryDocUnitDTO> \|\| Array<SimpleDocUnitDTO>`|

#### POST
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|train|query|true|`string`||
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`2147483647`|
|sorts|query|false|`Array<string>`||
|siblingid|query|true|`string`||
|removesibling|query|true|`string`||
|parent|query|true|`string`||
|child|query|true|`string`||
|project|query|true|`string`||
|lot|query|false|`string`||

**Body**:
 |content-type|content|
|-|-|
|application/json|`Array<string>`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`Array<DocUnitUpdateErrorDTO> \|\| DocUnitDTO \|\| Array<DocUnitDeletedReportDTO> \|\| any`|

### `/api/rest/docunit/{identifier}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`DocUnitDTO`|

#### POST
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|


**Body**:
 |content-type|content|
|-|-|
|application/json|`DocUnitDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`any \|\| DocUnitDTO`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`DocUnitDeletedReportDTO`|

### `/api/rest/docunit/initHistory`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|library|query|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`any`|



## Export cines
---
### `/api/rest/export/cines`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|docUnit|query|true|`string`|
|cinesStatus|query|true|`string`|
|docs|query|true|`Array<string>`|
|conf|query|false|`MailboxConfiguration`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/xml|`any`|

#### POST
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|docUnit|query|true|`string`||
|conf|query|false|`SftpConfiguration`||
|reversion|query|false|`boolean`|`false`|

**Body**:
 |content-type|content|
|-|-|
|application/json|`BibliographicRecordDcDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`CinesReport`|

### `/api/rest/export/cines/{id}`
#### POST
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**:
 |content-type|content|
|-|-|
|application/json|`BibliographicRecordDcDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`any`|

### `/api/rest/export/cines/{identifier}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`BibliographicRecordDcDTO`|

### `/api/rest/export/cines/regenerateMets`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|library|query|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`any`|



## Export
---
### `/api/rest/export/rdfxml`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|type|query|false|`string with unhandled constraints`|`DC`|
|docUnit|query|true|`string`||

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|

### `/api/rest/export/ead`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|docUnit|query|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|

### `/api/rest/export/csv`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|lot|query|true|`string`||
|field|query|false|`Array<string>`||
|docfield|query|false|`Array<string>`||
|bibfield|query|false|`Array<string>`||
|physfield|query|false|`Array<string>`||
|encoding|query|false|`string`|`ISO-8859-15`|
|separator|query|false|`string`|`;`|
|docUnit|query|true|`Array<string>`||

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|



## Export ftp configuration
---
### `/api/rest/exportftpconfiguration`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|search|query|false|`string`||
|libraries|query|false|`Array<string>`||
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`10`|
|project|query|true|`string`||
|fullConfig|query|false|`boolean`||
|libraryId|query|true|`string`||

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<AbstractDTO> \|\| PageSimpleExportFTPConfDTO`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`ExportFTPConfigurationDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`ExportFTPConfigurationDTO`|

### `/api/rest/exportftpconfiguration/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`ExportFTPConfigurationDTO`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`ExportFTPConfigurationDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`ExportFTPConfigurationDTO`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`ExportFTPConfigurationDTO`|



## Export internet archive
---
### `/api/rest/internet_archive/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`InternetArchiveItemDTO`|

#### POST
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**:
 |content-type|content|
|-|-|
|application/json|`InternetArchiveItemDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`any`|

### `/api/rest/internet_archive`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|docs|query|true|`Array<string>`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|



## Export omeka
---
### `/api/rest/export/omeka`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|docs|query|true|`Array<string>`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`"100 CONTINUE" \| "101 SWITCHING_PROTOCOLS" \| "102 PROCESSING" \| "103 CHECKPOINT" \| "200 OK" \| "201 CREATED" \| "202 ACCEPTED" \| "203 NON_AUTHORITATIVE_INFORMATION" \| "204 NO_CONTENT" \| "205 RESET_CONTENT" \| "206 PARTIAL_CONTENT" \| "207 MULTI_STATUS" \| "208 ALREADY_REPORTED" \| "226 IM_USED" \| "300 MULTIPLE_CHOICES" \| "301 MOVED_PERMANENTLY" \| "302 FOUND" \| "302 MOVED_TEMPORARILY" \| "303 SEE_OTHER" \| "304 NOT_MODIFIED" \| "305 USE_PROXY" \| "307 TEMPORARY_REDIRECT" \| "308 PERMANENT_REDIRECT" \| "400 BAD_REQUEST" \| "401 UNAUTHORIZED" \| "402 PAYMENT_REQUIRED" \| "403 FORBIDDEN" \| "404 NOT_FOUND" \| "405 METHOD_NOT_ALLOWED" \| "406 NOT_ACCEPTABLE" \| "407 PROXY_AUTHENTICATION_REQUIRED" \| "408 REQUEST_TIMEOUT" \| "409 CONFLICT" \| "410 GONE" \| "411 LENGTH_REQUIRED" \| "412 PRECONDITION_FAILED" \| "413 PAYLOAD_TOO_LARGE" \| "413 REQUEST_ENTITY_TOO_LARGE" \| "414 URI_TOO_LONG" \| "414 REQUEST_URI_TOO_LONG" \| "415 UNSUPPORTED_MEDIA_TYPE" \| "416 REQUESTED_RANGE_NOT_SATISFIABLE" \| "417 EXPECTATION_FAILED" \| "418 I_AM_A_TEAPOT" \| "419 INSUFFICIENT_SPACE_ON_RESOURCE" \| "420 METHOD_FAILURE" \| "421 DESTINATION_LOCKED" \| "422 UNPROCESSABLE_ENTITY" \| "423 LOCKED" \| "424 FAILED_DEPENDENCY" \| "425 TOO_EARLY" \| "426 UPGRADE_REQUIRED" \| "428 PRECONDITION_REQUIRED" \| "429 TOO_MANY_REQUESTS" \| "431 REQUEST_HEADER_FIELDS_TOO_LARGE" \| "451 UNAVAILABLE_FOR_LEGAL_REASONS" \| "500 INTERNAL_SERVER_ERROR" \| "501 NOT_IMPLEMENTED" \| "502 BAD_GATEWAY" \| "503 SERVICE_UNAVAILABLE" \| "504 GATEWAY_TIMEOUT" \| "505 HTTP_VERSION_NOT_SUPPORTED" \| "506 VARIANT_ALSO_NEGOTIATES" \| "507 INSUFFICIENT_STORAGE" \| "508 LOOP_DETECTED" \| "509 BANDWIDTH_LIMIT_EXCEEDED" \| "510 NOT_EXTENDED" \| "511 NETWORK_AUTHENTICATION_REQUIRED"`|

#### POST
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|docUnit|query|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`any`|



## File cleaning
---
### `/api/rest/filecleaning/deleteorphans`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|library|query|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|



## Files gestion config
---
### `/api/rest/filesgestionconfig`
#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`FilesGestionConfigDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`FilesGestionConfigDTO`|

### `/api/rest/filesgestionconfig/{id}`
#### POST
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**:
 |content-type|content|
|-|-|
|application/json|`FilesGestionConfigDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`FilesGestionConfigDTO`|

### `/api/rest/filesgestionconfig/{idLibrary}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|idLibrary|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`FilesGestionConfigDTO`|



## Ftp configuration
---
### `/api/rest/ftpconfiguration`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|search|query|false|`string`||
|libraries|query|false|`Array<string>`||
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`10`|
|project|query|true|`string`||

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<SimpleFTPConfigurationDTO> \|\| PageSimpleFTPConfigurationDTO`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`FTPConfigurationDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`FTPConfigurationDTO`|

### `/api/rest/ftpconfiguration/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`FTPConfigurationDTO`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`FTPConfigurationDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`FTPConfigurationDTO`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`FTPConfigurationDTO`|



## Health
---
### `/api/rest/health`
#### GET
**Parameters**: NONE

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`string`|



## Help page
---
### `/api/rest/help`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|modules|query|false|`Array<string>`|
|types|query|false|`Array<"PGCN" \| "CUSTOM">`|
|search|query|false|`string`|
|tag|query|true|`string`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<ModuleDto>`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`HelpPage`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`HelpPage`|

### `/api/rest/help/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`HelpPage`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`HelpPage`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`HelpPage`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|



## Image metadata
---
### `/api/rest/imagemetadata`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|docUnitId|query|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<ImageMetadataValue> \|\| Array<ImageMetadataProperty>`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`Array<ImageMetadataProperty>`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<ImageMetadataValue> \|\| ImageMetadataProperty \|\| Array<ImageMetadataProperty>`|

### `/api/rest/imagemetadata/{id}`
#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`ImageMetadataProperty`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`ImageMetadataProperty`|



## Import
---
### `/api/rest/import`
#### POST
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|file|query|true|`Array<Binary>`||
|type|query|false|`string with unhandled constraints`|`SIMPLE`|
|format|query|true|`"MARC" \| "MARCJSON" \| "MARCXML" \| "CSV" \| "DC" \| "DCQ" \| "EAD" \| "OAIPMH"`||
|encoding|query|false|`string with unhandled constraints`|`UTF_8`|
|mapping|query|true|`string`||
|mappingChildren|query|false|`string`||
|parent|query|false|`string`||
|library|query|true|`string`||
|project|query|false|`string`||
|lot|query|false|`string`||
|join|query|false|`string`||
|validation|query|false|`boolean`|`false`|
|dedup|query|false|`boolean`|`false`|
|dedupProcess|query|false|`"ADD" \| "REPLACE" \| "IGNORE"`||
|archivable|query|false|`boolean`|`false`|
|distributable|query|false|`boolean`|`false`|
|prop_order|query|false|`string with unhandled constraints`|`BY_PROPERTY_TYPE`|
|defaultProcess|query|false|`string with unhandled constraints`|`ADD`|

**Body**:
 |content-type|content|
|-|-|
|application/json|`ImportReport`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`ImportReport`|



## Import report
---
### `/api/rest/importreport`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`10`|
|library|query|false|`Library`||
|search|query|false|`string`||
|users|query|false|`Array<string>`||
|status|query|false|`Array<"PENDING" \| "PRE_IMPORTING" \| "DEDUPLICATING" \| "USER_VALIDATION" \| "IMPORTING" \| "INDEXING" \| "COMPLETED" \| "FAILED">`||

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`PageImportReport`|

### `/api/rest/importreport/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|
|file|query|true|`string`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`		Object not handled {additionalProperties: {type: object}} \|\| ImportReport`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`any`|



## Imported doc unit
---
### `/api/rest/impdocunit/{id}`
#### POST
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|id|path|true|`string`||
|process|query|false|`string`|`false`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`any`|

### `/api/rest/impdocunit`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|report|query|true|`ImportReport`||
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`10`|
|state|query|false|`Array<"AVAILABLE" \| "NOT_AVAILABLE" \| "DELETED" \| "CANCELED" \| "CLOSED">`||
|errors|query|false|`boolean`|`false`|
|duplicates|query|false|`boolean`|`false`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`PageImportedDocUnit`|



## Internal account
---
### `/api_int/authenticate`
#### GET
**Parameters**: NONE

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`string`|

### `/api_int/account`
#### GET
**Parameters**: NONE

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`UserAccountDTO`|

### `/api_int/account/sessions`
#### GET
**Parameters**: NONE

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<PersistentToken>`|

### `/api_int/account/sessions/{series}`
#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|series|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|



## Internet archive configuration
---
### `/api/rest/conf_internet_archive`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|active|query|false|`boolean`||
|search|query|false|`string`||
|libraries|query|false|`Array<string>`||
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`10`|
|library|query|true|`Library`||
|project|query|false|`string`||

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`PageInternetArchiveConfigurationDTO \|\| Array<InternetArchiveConfigurationDTO> \|\| UniqArray<InternetArchiveConfigurationDTO> \|\| Array<InternetArchiveCollection>`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`InternetArchiveConfiguration`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`InternetArchiveConfiguration`|

### `/api/rest/conf_internet_archive/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`InternetArchiveConfiguration`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`InternetArchiveConfiguration`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`InternetArchiveConfiguration`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`any`|



## Library
---
### `/api/rest/library`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|search|query|false|`string`||
|initiale|query|false|`string`||
|institutions|query|false|`Array<string>`||
|isActive|query|false|`boolean`|`true`|
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`10`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<SimpleLibraryDTO> \|\| PageSimpleLibraryDTO`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`LibraryDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`LibraryDTO`|

### `/api/rest/library/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<SimpleUserDTO> \|\| LibraryDTO \|\| 		Object not handled {additionalProperties: {type: object}}`|

#### POST
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|
|file|query|true|`Array<Binary>`|

**Body**:
 |content-type|content|
|-|-|
|application/json|`LibraryDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`LibraryDTO`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`Library`|



## Library parameter
---
### `/api/rest/libraryparameter`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|sftpConfig|query|false|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`LibraryParameterValuedDTO`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`LibraryParameterValuedDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`LibraryParameterValuedDTO`|

### `/api/rest/libraryparameter/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`LibraryParameterDTO`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`LibraryParameterValuedDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`LibraryParameterValuedDTO`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`LibraryParameter`|



## Logs
---
### `/api_int/logs`
#### GET
**Parameters**: NONE

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<LoggerDTO>`|

#### PUT
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`LoggerDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|204|No Content|NONE|NONE|



## Lot
---
### `/api/rest/lot`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|from|query|true|`Date`||
|library|query|false|`Array<string>`||
|project|query|false|`Array<string>`||
|status|query|false|`Array<"CREATED" \| "ONGOING" \| "PENDING" \| "CANCELED" \| "CLOSED">`||
|search|query|false|`string`||
|libraries|query|false|`Array<string>`||
|projects|query|false|`Array<string>`||
|active|query|false|`boolean`|`true`|
|statuses|query|false|`Array<"CREATED" \| "ONGOING" \| "PENDING" \| "CANCELED" \| "CLOSED">`||
|docNumber|query|false|`int32`||
|fileFormat|query|false|`Array<string>`||
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`10`|
|sorts|query|false|`Array<string>`||
|projectIds|query|true|`Array<string>`||
|target|query|false|`string`||
|lot|query|true|`Array<string>`||

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<SimpleLotDTO> \|\| Array<AuditLotRevisionDTO> \|\| PageSimpleLotDTO \|\| Array<LotDTO> \|\| Array<LotListDTO>`|

#### POST
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`10`|
|sorts|query|false|`Array<string>`||
|project|query|true|`string`||

**Body**:
 |content-type|content|
|-|-|
|application/json|`Array<string>`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`Lot \|\| LotDTO \|\| Array<ResultAdminLotDTO>`|

### `/api/rest/lot/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`LotDTO`|

#### POST
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**:
 |content-type|content|
|-|-|
|application/json|`LotDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`any \|\| LotDTO`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`LotDTO`|

### `/api/rest/lot/pdf/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|

### `/api/rest/lot/csv/{id}`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|id|path|true|`string`||
|encoding|query|false|`string`|`utf-8`|
|separator|query|false|`string`|`;`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|



## Mailbox configuration
---
### `/api/rest/conf_mail`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|search|query|false|`string`||
|library|query|false|`Array<string>`||
|active|query|false|`boolean`|`true`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<MailboxConfigurationDTO>`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`MailboxConfiguration`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`MailboxConfiguration`|

### `/api/rest/conf_mail/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`MailboxConfiguration`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`MailboxConfiguration`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`MailboxConfiguration`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`any`|



## Mapping
---
### `/api/rest/mapping`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|library|query|false|`Library`|
|type|query|false|`"EAD" \| "DC" \| "DCQ" \| "MARC"`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`UniqArray<MappingDTO> \|\| Array<MappingDTO>`|

#### POST
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|library|query|true|`string`|
|file|query|true|`Array<Binary>`|

**Body**:
 |content-type|content|
|-|-|
|application/json|`Mapping`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Mapping`|

### `/api/rest/mapping/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|
|library|query|false|`string`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Mapping`|

#### POST
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|
|file|query|true|`Array<Binary>`|

**Body**:
 |content-type|content|
|-|-|
|application/json|`Mapping`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Mapping`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`any`|



## Multi lots delivery
---
### `/api/rest/multidelivery`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|search|query|false|`string`||
|libraries|query|false|`Array<string>`||
|projects|query|false|`Array<string>`||
|lots|query|false|`Array<string>`||
|providers|query|false|`Array<string>`||
|status|query|false|`Array<"SAVED" \| "DELIVERING" \| "DELIVERED" \| "TO_BE_CONTROLLED" \| "VALIDATED" \| "REJECTED" \| "BACK_TO_PROVIDER" \| "AUTOMATICALLY_REJECTED" \| "DELIVERED_AGAIN" \| "DELIVERING_ERROR" \| "TREATED" \| "CLOSED" \| "CANCELED">`||
|deliveryDateFrom|query|false|`Date`||
|deliveryDateTo|query|false|`Date`||
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`10`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`PageMultiLotsDeliveryDTO`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`MultiLotsDeliveryDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`MultiLotsDeliveryDTO`|

### `/api/rest/multidelivery/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`		Object not handled {additionalProperties: {$ref: #/components/schemas/PreDeliveryDTO}} \|\| MultiLotsDeliveryDTO \|\| 		Object not handled {additionalProperties: {type: array, items: {$ref: #/components/schemas/SimpleDeliveredDigitalDocDTO}}}`|

#### POST
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|
|prefixToExclude|query|false|`Array<string>`|

**Body**:
 |content-type|content|
|-|-|
|application/json|`MultiLotsDeliveryRequestWrapper`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`any \|\| MultiLotsDeliveryDTO`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`any`|



## Numahop
---
### `/api/rest/numahop`
#### GET
**Parameters**: NONE

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`		Object not handled {additionalProperties: {type: object}}`|



## Oai pmh
---
### `/api/rest/oaipmh`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|baseUrl|query|true|`string`|
|from|query|false|`string`|
|to|query|false|`string`|
|set|query|false|`string`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`IdentifyType \|\| 		Object not handled {additionalProperties: {type: string}}`|

#### POST
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|library|query|true|`string`||
|project|query|false|`string`||
|lot|query|false|`string`||
|validation|query|false|`boolean`|`false`|
|dedup|query|false|`boolean`|`false`|
|dedupProcess|query|false|`"ADD" \| "REPLACE" \| "IGNORE"`||
|baseUrl|query|true|`string`||
|from|query|false|`string`||
|to|query|false|`string`||
|set|query|false|`string`||

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`ImportReport`|



## Ocr lang configuration
---
### `/api/rest/ocrlangconfiguration`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|search|query|false|`string`||
|libraries|query|false|`Array<string>`||
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`10`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`PageSimpleOcrLangConfigDTO`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`OcrLangConfigurationDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`OcrLangConfigurationDTO`|

### `/api/rest/ocrlangconfiguration/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`OcrLangConfigurationDTO`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`OcrLangConfigurationDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`OcrLangConfigurationDTO`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`any`|



## Ocr language
---
### `/api/rest/ocrlanguages`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|library|query|false|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<OcrLanguageDTO>`|



## Omeka configuration
---
### `/api/rest/conf_omeka`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|active|query|false|`boolean`||
|search|query|false|`string`||
|libraries|query|false|`Array<string>`||
|omekas|query|false|`boolean`||
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`10`|
|omekaConf|query|false|`string`||
|project|query|false|`string`||
|library|query|true|`Library`||

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`PageOmekaConfigurationDTO \|\| Array<OmekaConfigurationDTO> \|\| Array<OmekaList> \|\| UniqArray<OmekaConfigurationDTO>`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`OmekaConfigurationDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`OmekaConfigurationDTO`|

### `/api/rest/conf_omeka/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`OmekaConfigurationDTO`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`OmekaConfigurationDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`OmekaConfigurationDTO`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`any`|



## Physical document
---
### `/api/rest/physicaldocument/{identifier}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`PhysicalDocumentDTO`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`PhysicalDocumentDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`PhysicalDocumentDTO`|

### `/api/rest/physicaldocument`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|train|query|true|`string`|
|docUnitIds|query|true|`Array<string>`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`Array<ListPhysicalDocumentDTO>`|



## Project
---
### `/api/rest/project`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|from|query|true|`Date`||
|library|query|false|`Array<string>`||
|status|query|false|`Array<"CREATED" \| "ONGOING" \| "PENDING" \| "CANCELED" \| "CLOSED">`||
|search|query|false|`string`||
|initiale|query|false|`string`||
|active|query|false|`boolean`|`true`|
|libraries|query|false|`Array<string>`||
|provider|query|false|`Array<string>`||
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`2147483647`|
|searchProject|query|false|`string`||
|statuses|query|false|`Array<"CREATED" \| "ONGOING" \| "PENDING" \| "CANCELED" \| "CLOSED">`||

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`PageSimpleProjectDTO \|\| Array<AuditProjectRevisionDTO> \|\| Array<SimpleProjectDTO>`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`Array<ProjectDTO>`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`ProjectDTO`|

### `/api/rest/project/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`ProjectDTO`|

#### POST
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**:
 |content-type|content|
|-|-|
|application/json|`ProjectDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`ProjectDTO`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`ProjectDTO`|



## Property configuration
---
### `/api/rest/condreport_prop_conf`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|library|query|true|`Library`|
|project|query|true|`Project`|
|internal|query|true|`"BINDING_DESC" \| "BODY_DESC" \| "DIMENSION"`|
|desc|query|true|`DescriptionProperty`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`PropertyConfigurationDTO \|\| Array<PropertyConfigurationDTO>`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`PropertyConfigurationDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`PropertyConfigurationDTO`|

### `/api/rest/condreport_prop_conf/{identifier}`
#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`PropertyConfigurationDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`PropertyConfigurationDTO`|



## Role
---
### `/api/rest/role`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|search|query|true|`string`|
|authorizations|query|false|`Array<string>`|
|dto|query|true|`boolean`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<RoleDTO> \|\| Array<Role>`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`Role`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`Role`|

### `/api/rest/role/{identifier}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Role`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`Role`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`Role`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|



## Sample
---
### `/api/rest/sample/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`SampleDTO`|



## Search
---
### `/api/rest/search`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|suggest|query|true|`string`||
|size|query|false|`int32`|`10`|
|search|query|false|`string`||
|filter|query|false|`string`||
|page|query|false|`int32`|`0`|
|get|query|false|`Array<"CONDREPORT" \| "DELIVERY" \| "DOCUNIT" \| "LOT" \| "PROJECT" \| "TRAIN">`|`[DOCUNIT]`|
|fuzzy|query|false|`boolean`|`true`|
|sort|query|false|`string`||
|facet|query|false|`boolean`|`false`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`		Object not handled {additionalProperties: {$ref: #/components/schemas/PageObject}} \|\| Array<			Object not handled {additionalProperties: {type: object}}>`|



## Sftp configuration
---
### `/api/rest/conf_sftp`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|active|query|false|`boolean`||
|search|query|false|`string`||
|libraries|query|false|`Array<string>`||
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`10`|
|library|query|false|`string`||
|project|query|false|`string`||
|configuration|query|false|`string`||

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`PageSftpConfigurationDTO \|\| Array<SftpConfigurationDTO> \|\| Array<CinesPAC> \|\| UniqArray<SftpConfigurationDTO>`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`SftpConfiguration`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`SftpConfiguration`|

### `/api/rest/conf_sftp/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`		Object not handled {additionalProperties: {type: object}} \|\| SftpConfiguration`|

#### POST
**Parameters**:

|name|in|value|
|-|-|-|
|[table 2 rows]|
|content-type|header|`"multipart/*"`|

**Body**:
 |content-type|content|
|-|-|
|application/json|`SftpConfiguration`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`SftpConfiguration`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`any`|



## Statistics
---
### `/api/rest/statistics`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|libraries|query|false|`Array<string>`||
|project|query|false|`Array<string>`||
|library|query|false|`Array<string>`||
|train|query|false|`Array<string>`||
|status|query|false|`Array<"CREATED" \| "IN_PREPARATION" \| "IN_DIGITIZATION" \| "RECEIVING_PHYSICAL_DOCUMENTS" \| "CANCELED" \| "CLOSED">`||
|returnFrom|query|false|`Date`||
|returnTo|query|false|`Date`||
|sendFrom|query|false|`Date`||
|sendTo|query|false|`Date`||
|insuranceFrom|query|false|`double`||
|insuranceTo|query|false|`double`||
|from|query|false|`Date`||
|to|query|false|`Date`||
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`10`|
|search|query|false|`string`||
|projects|query|false|`Array<string>`||
|sorts|query|false|`Array<string>`||
|lot|query|false|`Array<string>`||

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<StatisticsProviderTrainDTO> \|\| Array<			Object not handled {additionalProperties: {type: object}}> \|\| PageStatisticsProgressDTO \|\| PageStatisticsProjectDTO`|



## Statistics delivery
---
### `/api/rest/statistics/delivery`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|library|query|false|`Array<string>`|
|provider|query|false|`Array<string>`|
|from|query|false|`Date`|
|to|query|false|`Date`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<StatisticsProviderDeliveryDTO>`|



## Statistics doc unit
---
### `/api/rest/statistics/docunit`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|libraries|query|false|`Array<string>`||
|from|query|true|`Date`||
|failures|query|false|`boolean`|`false`|
|search|query|false|`string`||
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`10`|
|library|query|false|`Array<string>`||
|project|query|false|`Array<string>`||
|provider|query|false|`Array<string>`||
|to|query|false|`Date`||
|lot|query|false|`Array<string>`||
|type|query|false|`Array<string>`||
|collection|query|false|`Array<string>`||
|state|query|true|`"INITIALISATION_DOCUMENT" \| "GENERATION_BORDEREAU" \| "VALIDATION_CONSTAT_ETAT" \| "VALIDATION_BORDEREAU_CONSTAT_ETAT" \| "CONSTAT_ETAT_AVANT_NUMERISATION" \| "NUMERISATION_EN_ATTENTE" \| "CONSTAT_ETAT_APRES_NUMERISATION" \| "LIVRAISON_DOCUMENT_EN_COURS" \| "RELIVRAISON_DOCUMENT_EN_COURS" \| "CONTROLES_AUTOMATIQUES_EN_COURS" \| "CONTROLE_QUALITE_EN_COURS" \| "PREREJET_DOCUMENT" \| "PREVALIDATION_DOCUMENT" \| "VALIDATION_DOCUMENT" \| "VALIDATION_NOTICES" \| "RAPPORT_CONTROLES" \| "ARCHIVAGE_DOCUMENT" \| "DIFFUSION_DOCUMENT" \| "DIFFUSION_DOCUMENT_OMEKA" \| "DIFFUSION_DOCUMENT_DIGITAL_LIBRARY" \| "DIFFUSION_DOCUMENT_LOCALE" \| "CLOTURE_DOCUMENT"`||
|delivery|query|false|`Array<string>`||
|groupby|query|false|`string with unhandled constraints`|`PROJECT`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`PageString \|\| Array<StatisticsProcessedDocUnitDTO> \|\| PageStatisticsDocRejectedDTO \|\| PageStatisticsDocPublishedDTO \|\| PageStatisticsDocUnitCountDTO \|\| StatisticsDocUnitStatusRatioDTO \|\| any \|\| Array<StatisticsDocUnitAverageDTO>`|



## Statistics workflow
---
### `/api/rest/statistics/workflow`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|library|query|false|`Array<string>`||
|project|query|false|`Array<string>`||
|lot|query|false|`Array<string>`||
|state|query|false|`Array<"INITIALISATION_DOCUMENT" \| "GENERATION_BORDEREAU" \| "VALIDATION_CONSTAT_ETAT" \| "VALIDATION_BORDEREAU_CONSTAT_ETAT" \| "CONSTAT_ETAT_AVANT_NUMERISATION" \| "NUMERISATION_EN_ATTENTE" \| "CONSTAT_ETAT_APRES_NUMERISATION" \| "LIVRAISON_DOCUMENT_EN_COURS" \| "RELIVRAISON_DOCUMENT_EN_COURS" \| "CONTROLES_AUTOMATIQUES_EN_COURS" \| "CONTROLE_QUALITE_EN_COURS" \| "PREREJET_DOCUMENT" \| "PREVALIDATION_DOCUMENT" \| "VALIDATION_DOCUMENT" \| "VALIDATION_NOTICES" \| "RAPPORT_CONTROLES" \| "ARCHIVAGE_DOCUMENT" \| "DIFFUSION_DOCUMENT" \| "DIFFUSION_DOCUMENT_OMEKA" \| "DIFFUSION_DOCUMENT_DIGITAL_LIBRARY" \| "DIFFUSION_DOCUMENT_LOCALE" \| "CLOTURE_DOCUMENT">`||
|role|query|false|`Array<string>`||
|from|query|false|`Date`||
|to|query|false|`Date`||
|delivery|query|false|`Array<string>`||
|workflow|query|false|`Array<string>`||
|project_active|query|false|`boolean`|`false`|
|train|query|false|`Array<string>`||
|pgcnid|query|false|`string`||
|status|query|false|`Array<"NOT_STARTED" \| "PENDING" \| "FINISHED" \| "CANCELED" \| "FAILED" \| "TO_WAIT" \| "WAITING" \| "WAITING_NEXT_COMPLETED" \| "TO_SKIP" \| "SKIPPED">`||
|mine|query|false|`boolean`|`false`|
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`10`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<WorkflowUserProgressDTO> \|\| Array<WorkflowUserActivityDTO> \|\| Array<WorkflowStateProgressDTO> \|\| Array<WorkflowProfileActivityDTO> \|\| Array<WorkflowDocUnitProgressDTOPending> \|\| PageWorkflowDocUnitProgressDTO \|\| Array<WorkflowDocUnitProgressDTO> \|\| PageWorkflowDeliveryProgressDTO`|



## Template
---
### `/api/rest/template`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|library|query|false|`Library`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<Template>`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`Template`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Template`|

### `/api/rest/template/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|

#### POST
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|
|file|query|true|`Array<Binary>`|

**Body**:
 |content-type|content|
|-|-|
|application/json|`Template`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Template`|

### `/api/rest/template/{identifier}`
#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|



## Train
---
### `/api/rest/train`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|project|query|true|`string`||
|search|query|false|`string`||
|libraries|query|false|`Array<string>`||
|projects|query|false|`Array<string>`||
|active|query|false|`boolean`|`true`|
|statuses|query|false|`Array<string>`||
|providerSendingDateFrom|query|false|`Date`||
|providerSendingDateTo|query|false|`Date`||
|returnDateFrom|query|false|`Date`||
|returnDateTo|query|false|`Date`||
|docNumber|query|false|`int32`||
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`10`|
|projectIds|query|false|`Array<string>`||

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`PageSimpleTrainDTO \|\| Array<SimpleTrainDTO> \|\| Array<TrainDTO>`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`TrainDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`TrainDTO`|

### `/api/rest/train/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`TrainDTO`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`TrainDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`TrainDTO`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`TrainDTO`|

### `/api/rest/train/pdf/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|

### `/api/rest/train/csv/{id}`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|id|path|true|`string`||
|encoding|query|false|`string`|`ISO-8859-15`|
|separator|query|false|`string`|`;`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|



## User
---
### `/api/rest/user`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|search|query|false|`string`||
|initiale|query|false|`string`||
|active|query|false|`boolean`|`true`|
|libraries|query|false|`Array<string>`||
|roles|query|false|`Array<string>`||
|categories|query|false|`Array<"PROVIDER" \| "OTHER">`||
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`10`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<SimpleUserDTO> \|\| PageSimpleUserDTO`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`UserCreationDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`UserDTO`|

### `/api/rest/user/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`		Object not handled {additionalProperties: {type: object}} \|\| UserDTO`|

#### POST
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|
|file|query|true|`Array<Binary>`|

**Body**:
 |content-type|content|
|-|-|
|application/json|`UserDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`		Object not handled {additionalProperties: {type: object}} \|\| UserDTO`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`UserDTO`|

### `/api/rest/user/dashboard`
#### POST
**Parameters**: NONE

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|



## Viewer
---
### `/api/rest/viewer/document/{identifier}/{pageNumber}/{args1}/{args2}/{test}/default.jpg`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|
|pageNumber|path|true|`int32`|
|args1|path|true|`string`|
|args2|path|true|`string`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|image/jpeg|`any`|

### `/api/rest/viewer/document/{identifier}/{pageNumber}/info.json`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|
|pageNumber|path|true|`int32`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`		Object not handled {additionalProperties: {type: object}}`|

### `/api/rest/viewer/document/{identifier}/{pageNumber}/full/{dim1}/{dim2}/default.jpg`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|
|pageNumber|path|true|`int32`|
|dim1|path|true|`string`|
|dim2|path|true|`string`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|image/jpeg|`any`|

### `/api/rest/viewer/document/{identifier}/toc`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`any`|

### `/api/rest/viewer/document/{identifier}/thumbnail/{pageNumber}/thumb.jpg`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|
|pageNumber|path|true|`int32`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`any`|

### `/api/rest/viewer/document/{identifier}/master/{pageNumber}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|
|pageNumber|path|true|`int32`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`any`|

### `/api/rest/viewer/document/{identifier}/master/`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`any`|

### `/api/rest/viewer/document/{identifier}/manifest`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`any`|

### `/api/rest/viewer/document/sample/{identifier}/manifest`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`any`|



## Views format configuration
---
### `/api/rest/viewsformat`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|search|query|false|`string`||
|libraries|query|false|`Array<string>`||
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`10`|
|project|query|true|`string`||

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<SimpleViewsFormatConfigurationDTO> \|\| PageSimpleViewsFormatConfigurationDTO`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`ViewsFormatConfigurationDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`ViewsFormatConfigurationDTO`|

### `/api/rest/viewsformat/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`ViewsFormatConfigurationDTO`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`ViewsFormatConfigurationDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`ViewsFormatConfigurationDTO`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`CheckConfigurationDTO`|



## Workflow
---
### `/api/rest/workflow`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|docUnitId|query|true|`string`|
|key|query|true|`"INITIALISATION_DOCUMENT" \| "GENERATION_BORDEREAU" \| "VALIDATION_CONSTAT_ETAT" \| "VALIDATION_BORDEREAU_CONSTAT_ETAT" \| "CONSTAT_ETAT_AVANT_NUMERISATION" \| "NUMERISATION_EN_ATTENTE" \| "CONSTAT_ETAT_APRES_NUMERISATION" \| "LIVRAISON_DOCUMENT_EN_COURS" \| "RELIVRAISON_DOCUMENT_EN_COURS" \| "CONTROLES_AUTOMATIQUES_EN_COURS" \| "CONTROLE_QUALITE_EN_COURS" \| "PREREJET_DOCUMENT" \| "PREVALIDATION_DOCUMENT" \| "VALIDATION_DOCUMENT" \| "VALIDATION_NOTICES" \| "RAPPORT_CONTROLES" \| "ARCHIVAGE_DOCUMENT" \| "DIFFUSION_DOCUMENT" \| "DIFFUSION_DOCUMENT_OMEKA" \| "DIFFUSION_DOCUMENT_DIGITAL_LIBRARY" \| "DIFFUSION_DOCUMENT_LOCALE" \| "CLOTURE_DOCUMENT"`|
|doc|query|true|`string`|
|docUnit|query|true|`string`|

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`StateIsDoneDTO \|\| any \|\| DocUnitWorkflowDTO \|\| BooleanValueDTO`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`Array<string>`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`any`|

### `/api/rest/workflow/{identifier}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|identifier|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`DocUnitWorkflowDTO`|



## Workflow group
---
### `/api/rest/workflow_group`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|search|query|false|`string`||
|initiale|query|false|`string`||
|libraries|query|false|`Array<string>`||
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`10`|
|sorts|query|false|`Array<string>`||
|library|query|true|`string`||

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<SimpleWorkflowGroupDTO> \|\| PageSimpleWorkflowGroupDTO`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`WorkflowGroupDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`WorkflowGroupDTO`|

### `/api/rest/workflow_group/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`WorkflowGroupDTO`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`WorkflowGroupDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`WorkflowGroupDTO`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`any`|



## Workflow model
---
### `/api/rest/workflow_model`
#### GET
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|search|query|false|`string`||
|initiale|query|false|`string`||
|libraries|query|false|`Array<string>`||
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`10`|
|sorts|query|false|`Array<string>`||
|library|query|true|`string`||
|project|query|false|`string`||

**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<SimpleWorkflowModelDTO> \|\| PageSimpleWorkflowModelDTO`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`WorkflowModelDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`WorkflowModelDTO`|

### `/api/rest/workflow_model/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`WorkflowModelDTO`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`WorkflowModelDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`WorkflowModelDTO`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|*/*|`any`|



## Z 3950
---
### `/api/rest/z3950`
#### POST
**Parameters**:

|name|in|required|value|default|
|-|-|-|-|-|
|server|query|true|`Array<string>`||
|page|query|false|`int32`|`0`|
|size|query|false|`int32`|`10`|
|library|query|true|`string`||
|project|query|false|`string`||
|lot|query|false|`string`||
|mapping|query|true|`string`||
|validation|query|false|`boolean`|`false`|
|dedup|query|false|`boolean`|`false`|
|dedupProcess|query|false|`"ADD" \| "REPLACE" \| "IGNORE"`||

**Body**:
 |content-type|content|
|-|-|
|application/json|`Z3950RecordDTO`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`ImportReport \|\| PageZ3950RecordDTO`|



## Z 3950 server
---
### `/api/rest/z3950Server`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|dto|query|true|`boolean`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Array<Z3950ServerDTO> \|\| Array<Z3950Server>`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`Z3950Server`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Z3950Server`|

### `/api/rest/z3950Server/{id}`
#### GET
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Z3950Server`|

#### POST
**Parameters**: NONE

**Body**:
 |content-type|content|
|-|-|
|application/json|`Z3950Server`|


**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|application/json|`Z3950Server`|

#### DELETE
**Parameters**:

|name|in|required|value|
|-|-|-|-|
|id|path|true|`string`|


**Body**: NONE

**Responses**:

|code|description|content-type|body|
|-|-|-|-|
|200|OK|NONE|NONE|

# Schemas
## LoggerDTO
```ts
{
	"name": string,
	"level": string,
}

```

## PageZ3950RecordDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<Z3950RecordDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## PageableObject
```ts
{
	"pageNumber": int32,
	"pageSize": int32,
	"offset": int64,
	"sort": Array<SortObject>,
	"paged": boolean,
	"unpaged": boolean,
}

```

## SortObject
```ts
{
	"direction": string,
	"nullHandling": string,
	"ascending": boolean,
	"property": string,
	"ignoreCase": boolean,
}

```

## Z3950RecordDTO
```ts
{
	"z3950Server": Z3950ServerDTO,
	"title": string,
	"author": string,
	"isbn": string,
	"issn": string,
	"marcXml": string,
}

```

## Z3950ServerDTO
```ts
{
	"identifier": string,
	"name": string,
	"active": boolean,
	"version": int64,
}

```

## ActivatedOcrLanguage
```ts
{
	"identifier": string,
	"version": int64,
	"ocrLangConfiguration": OcrLangConfiguration,
	"ocrLanguage": OcrLanguage,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## Address
```ts
{
	"identifier": string,
	"version": int64,
	"label": string,
	"address1": string,
	"address2": string,
	"address3": string,
	"complement": string,
	"postcode": string,
	"city": string,
	"country": string,
	"user": User,
	"library": Library,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## ArchiveCollection
```ts
{
	"identifier": string,
	"version": int64,
	"value": string,
	"item": ArchiveItem,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## ArchiveContributor
```ts
{
	"identifier": string,
	"version": int64,
	"value": string,
	"item": ArchiveItem,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## ArchiveCoverage
```ts
{
	"identifier": string,
	"version": int64,
	"value": string,
	"item": ArchiveItem,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## ArchiveCreator
```ts
{
	"identifier": string,
	"version": int64,
	"value": string,
	"item": ArchiveItem,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## ArchiveHeader
```ts
{
	"identifier": string,
	"version": int64,
	"value": string,
	"type": string,
	"item": ArchiveItem,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## ArchiveItem
```ts
{
	"identifier": string,
	"version": int64,
	"collections": UniqArray<ArchiveCollection>,
	"subjects": UniqArray<ArchiveSubject>,
	"headers": UniqArray<ArchiveHeader>,
	"coverages": UniqArray<ArchiveCoverage>,
	"contributors": UniqArray<ArchiveContributor>,
	"creators": UniqArray<ArchiveCreator>,
	"languages": UniqArray<ArchiveLanguage>,
	"archiveIdentifier": string,
	"credits": string,
	"date": string,
	"description": string,
	"licenseUrl": string,
	"mediatype": string,
	"customMediatype": string,
	"notes": string,
	"publisher": string,
	"rights": string,
	"title": string,
	"type": string,
	"source": string,
	"docUnit": DocUnit,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## ArchiveLanguage
```ts
{
	"identifier": string,
	"version": int64,
	"value": string,
	"item": ArchiveItem,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## ArchiveSubject
```ts
{
	"identifier": string,
	"version": int64,
	"value": string,
	"item": ArchiveItem,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## Authorization
```ts
{
	"identifier": string,
	"version": int64,
	"code": string,
	"label": string,
	"description": string,
	"module": "ADMINISTRATION" | "CHECK" | "DOCUMENT" | "USER" | "LIBRARY" | "PROJECT" | "LOT" | "ROLE" | "DELIVERY" | "TRAIN" | "WORKFLOW",
	"roles": UniqArray<Role>,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## AutomaticCheckResult
```ts
{
	"identifier": string,
	"version": int64,
	"result": "OK" | "KO" | "OTHER",
	"message": string,
	"check": AutomaticCheckType,
	"digitalDocument": DigitalDocument,
	"physicalDocument": PhysicalDocument,
	"docUnit": DocUnit,
	"page": DocPage,
	"delivery": Delivery,
	"errorFiles": Array<string>,
	"type": "WITH_MASTER" | "FILE_INTEGRITY" | "FACILE" | "FILE_RADICAL" | "FILE_SEQUENCE" | "FILE_FORMAT" | "FILE_TOTAL_NUMBER" | "FILE_TYPE_COMPR" | "FILE_TAUX_COMPR" | "FILE_RESOLUTION" | "FILE_DEFINITION" | "FILE_COLORSPACE" | "FILE_BIB_PREFIX" | "FILE_CASE_SENSITIVE" | "FILE_IMAGE_METADATA" | "METADATA_FILE" | "FILE_PDF_MULTI" | "GENER_PDF_OCR" | "GENER_PDF_WITHOUT_OCR",
	"label": string,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## AutomaticCheckRule
```ts
{
	"identifier": string,
	"version": int64,
	"active": boolean,
	"blocking": boolean,
	"checkConfiguration": CheckConfiguration,
	"automaticCheckType": AutomaticCheckType,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## AutomaticCheckType
```ts
{
	"identifier": string,
	"version": int64,
	"label": string,
	"type": "WITH_MASTER" | "FILE_INTEGRITY" | "FACILE" | "FILE_RADICAL" | "FILE_SEQUENCE" | "FILE_FORMAT" | "FILE_TOTAL_NUMBER" | "FILE_TYPE_COMPR" | "FILE_TAUX_COMPR" | "FILE_RESOLUTION" | "FILE_DEFINITION" | "FILE_COLORSPACE" | "FILE_BIB_PREFIX" | "FILE_CASE_SENSITIVE" | "FILE_IMAGE_METADATA" | "METADATA_FILE" | "FILE_PDF_MULTI" | "GENER_PDF_OCR" | "GENER_PDF_WITHOUT_OCR",
	"active": boolean,
	"configurable": boolean,
	"order": int32,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## BibliographicRecord
```ts
{
	"identifier": string,
	"version": int64,
	"title": string,
	"sigb": string,
	"sudoc": string,
	"calames": string,
	"docElectronique": string,
	"properties": UniqArray<DocProperty>,
	"docUnit": DocUnit,
	"library": Library,
	"propertyOrder": "BY_CREATION" | "BY_PROPERTY_TYPE",
	"generalLastModifiedDate": DateTime,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## CSVMapping
```ts
{
	"identifier": string,
	"version": int64,
	"label": string,
	"library": Library,
	"rules": Array<CSVMappingRule>,
	"joinExpression": string,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## CSVMappingRule
```ts
{
	"identifier": string,
	"version": int64,
	"docUnitField": string,
	"csvField": string,
	"bibRecordField": string,
	"condReport": string,
	"metadata": string,
	"rank": int32,
	"property": DocPropertyType,
	"mapping": CSVMapping,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## Check
```ts
{
	"identifier": string,
	"version": int64,
	"errorLabel": "UNREADABLE" | "BAD_NAME" | "BAD_HIERARCHY" | "MISSING_PAGE" | "TRUNCATED_INFORMATION" | "BAD_RESOLUTION" | "BAD_THRESHOLD" | "WRONG_FORMAT" | "FOREIGN_BODIES" | "BAD_METADATA" | "INCONSISTENT_METADATA" | "ANOTHER_MAJ" | "BLURRED_IMAGE" | "SLANT_IMAGE" | "HALO_ON_IMAGE" | "SHADOW_ON_IMAGE" | "GEOMETRICAL_ANOMALY" | "CHROMATIC_ANOMALY" | "WRONG_FRAMING" | "WRONG_ORDER" | "BAD_OCR" | "ANOTHER_MIN",
	"errorType": "MAJOR" | "MINOR",
	"page": DocPage,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## CheckConfiguration
```ts
{
	"identifier": string,
	"version": int64,
	"label": string,
	"library": Library,
	"majorErrorRate": double,
	"minorErrorRate": double,
	"sampleRate": double,
	"definitionErrorRate": double,
	"sampleMode": string,
	"separators": string,
	"automaticCheckRules": Array<AutomaticCheckRule>,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## CheckSlip
```ts
{
	"identifier": string,
	"version": int64,
	"documents": UniqArray<DeliveredDocument>,
	"slipLines": UniqArray<CheckSlipLine>,
	"lotLabel": string,
	"depositDate": Date,
	"uncompleted": boolean,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## CheckSlipConfiguration
```ts
{
	"identifier": string,
	"version": int64,
	"library": Library,
	"pgcnId": boolean,
	"title": boolean,
	"state": boolean,
	"errs": boolean,
	"nbPages": boolean,
	"nbPagesToBill": boolean,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## CheckSlipLine
```ts
{
	"identifier": string,
	"version": int64,
	"checkSlip": CheckSlip,
	"pgcnId": string,
	"title": string,
	"status": string,
	"docErrors": string,
	"nbPages": int32,
	"nbPagesToBill": int32,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## CinesPAC
```ts
{
	"identifier": string,
	"version": int64,
	"name": string,
	"confPac": SftpConfiguration,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## CinesReport
```ts
{
	"identifier": string,
	"version": int64,
	"docUnit": DocUnit,
	"status": "EXPORTING" | "SENDING" | "SENT" | "AR_RECEIVED" | "REJECTED" | "ARCHIVED" | "FAILED",
	"dateSent": DateTime,
	"dateAr": DateTime,
	"dateRejection": DateTime,
	"dateArchived": DateTime,
	"rejectionMotive": string,
	"certificate": string,
	"message": string,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## ConditionReportSlipConfiguration
```ts
{
	"identifier": string,
	"version": int64,
	"library": Library,
	"pgcnId": boolean,
	"title": boolean,
	"nbPages": boolean,
	"globalReport": boolean,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## Dashboard
```ts
{
	"identifier": string,
	"version": int64,
	"dashboard": string,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## DefaultFileFormats
```ts
{
	"defThumbHeight": int64,
	"defThumbWidth": int64,
	"defViewHeight": int64,
	"defViewWidth": int64,
	"defPrintHeight": int64,
	"defPrintWidth": int64,
}

```

## DeliveredDocument
```ts
{
	"identifier": string,
	"version": int64,
	"delivery": Delivery,
	"digitalDocument": DigitalDocument,
	"status": "CREATING" | "DELIVERING" | "TO_CHECK" | "CHECKING" | "VALIDATED" | "PRE_REJECTED" | "REJECTED" | "WAITING_FOR_REPAIR" | "DELIVERING_ERROR" | "PRE_VALIDATED" | "CANCELED",
	"deliveryDate": Date,
	"nbPages": int32,
	"totalLength": int64,
	"checkSlip": CheckSlip,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## Delivery
```ts
{
	"identifier": string,
	"version": int64,
	"lot": Lot,
	"label": string,
	"documentCount": int32,
	"description": string,
	"payment": "PAID" | "UNPAID",
	"status": "SAVED" | "DELIVERING" | "DELIVERED" | "TO_BE_CONTROLLED" | "VALIDATED" | "REJECTED" | "BACK_TO_PROVIDER" | "AUTOMATICALLY_REJECTED" | "DELIVERED_AGAIN" | "DELIVERING_ERROR" | "TREATED" | "CLOSED" | "CANCELED",
	"method": "FTP" | "DISK" | "OTHER",
	"receptionDate": Date,
	"depositDate": Date,
	"folderPath": string,
	"imgFormat": string,
	"digitizingNotes": string,
	"fileFormatOK": boolean,
	"numberOfFilesOK": boolean,
	"sequentialNumbers": boolean,
	"numberOfFilesMatching": boolean,
	"mirePresent": boolean,
	"mireOK": boolean,
	"tableOfContentsPresent": boolean,
	"tableOfContentsOK": boolean,
	"altoPresent": boolean,
	"controlNotes": string,
	"compressionTypeOK": boolean,
	"compressionRateOK": boolean,
	"resolutionOK": boolean,
	"colorspaceOK": boolean,
	"fileIntegrityOk": boolean,
	"fileBibPrefixOK": boolean,
	"fileCaseOK": boolean,
	"pdfMultiPresent": boolean,
	"pdfMultiOK": boolean,
	"fileRadicalOK": boolean,
	"fileImageMetadataOK": boolean,
	"fileDefinitionOK": boolean,
	"deliverySlip": DeliverySlip,
	"automaticCheckResults": UniqArray<AutomaticCheckResult>,
	"documents": UniqArray<DeliveredDocument>,
	"multiLotsDelivery": MultiLotsDelivery,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## DeliverySlip
```ts
{
	"identifier": string,
	"version": int64,
	"slipLines": UniqArray<DeliverySlipLine>,
	"delivery": Delivery,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## DeliverySlipConfiguration
```ts
{
	"identifier": string,
	"version": int64,
	"library": Library,
	"pgcnId": boolean,
	"lot": boolean,
	"train": boolean,
	"radical": boolean,
	"title": boolean,
	"nbPages": boolean,
	"date": boolean,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## DeliverySlipLine
```ts
{
	"identifier": string,
	"version": int64,
	"pgcnId": string,
	"lot": string,
	"train": string,
	"radical": string,
	"title": string,
	"nbPages": string,
	"date": string,
	"slip": DeliverySlip,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## DigitalDocument
```ts
{
	"identifier": string,
	"version": int64,
	"docUnit": DocUnit,
	"physicalDocuments": UniqArray<PhysicalDocument>,
	"deliveries": UniqArray<DeliveredDocument>,
	"totalDelivery": int32,
	"status": "CREATING" | "DELIVERING" | "TO_CHECK" | "CHECKING" | "VALIDATED" | "PRE_REJECTED" | "REJECTED" | "WAITING_FOR_REPAIR" | "DELIVERING_ERROR" | "PRE_VALIDATED" | "CANCELED",
	"digitalId": string,
	"minorErrorRate": double,
	"majorErrorRate": double,
	"checkNotes": string,
	"deliveryDate": Date,
	"totalLength": int64,
	"pageNumber": int32,
	"checks": UniqArray<GlobalCheck>,
	"automaticCheckResults": UniqArray<AutomaticCheckResult>,
	"pages": UniqArray<DocPage>,
	"orderedPages": Array<DocPage>,
	"nbPages": int32,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## DocPage
```ts
{
	"identifier": string,
	"version": int64,
	"digitalDocument": DigitalDocument,
	"files": UniqArray<StoredFile>,
	"checks": UniqArray<Check>,
	"automaticCheckResults": UniqArray<AutomaticCheckResult>,
	"sample": Sample,
	"number": int32,
	"description": string,
	"checkNotes": string,
	"status": "TO_CHECK" | "VALIDATED" | "REJECTED" | "WAITING",
	"piece": string,
	"pieceNumber": int32,
	"master": StoredFile,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## DocProperty
```ts
{
	"identifier": string,
	"version": int64,
	"value": string,
	"type": DocPropertyType,
	"record": BibliographicRecord,
	"language": string,
	"rank": int32,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## DocPropertyType
```ts
{
	"identifier": string,
	"version": int64,
	"label": string,
	"superType": "DC" | "DCQ" | "CUSTOM" | "CUSTOM_CINES" | "CUSTOM_ARCHIVE" | "CUSTOM_OMEKA",
	"docProperties": UniqArray<DocProperty>,
	"rank": int32,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## DocSibling
```ts
{
	"identifier": string,
	"version": int64,
	"docUnits": Array<DocUnit>,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## DocUnit
```ts
{
	"identifier": string,
	"version": int64,
	"library": Library,
	"project": Project,
	"lot": Lot,
	"records": UniqArray<BibliographicRecord>,
	"exportData": ExportData,
	"archiveItem": ArchiveItem,
	"physicalDocuments": UniqArray<PhysicalDocument>,
	"digitalDocuments": UniqArray<DigitalDocument>,
	"automaticCheckResults": UniqArray<AutomaticCheckResult>,
	"pgcnId": string,
	"label": string,
	"type": string,
	"collectionIA": InternetArchiveCollection,
	"omekaCollection": OmekaList,
	"omekaItem": OmekaList,
	"arkUrl": string,
	"planClassementPAC": CinesPAC,
	"cinesVersion": int32,
	"archivable": boolean,
	"distributable": boolean,
	"rights": "TO_CHECK" | "FREE" | "RESTRICTED" | "RESTRICTED_WITH_AUTHORIZATION",
	"embargo": Date,
	"checkDelay": int32,
	"checkEndTime": Date,
	"condReportType": "MONO_PAGE" | "MULTI_PAGE",
	"parent": DocUnit,
	"children": Array<DocUnit>,
	"sibling": DocSibling,
	"state": "AVAILABLE" | "NOT_AVAILABLE" | "DELETED" | "CANCELED" | "CLOSED",
	"cancelingComment": string,
	"workflow": DocUnitWorkflow,
	"digitizingNotes": string,
	"foundRefAuthor": boolean,
	"progressStatus": "NOT_AVAILABLE" | "REQUESTED" | "VALIDATED" | "REFUSED",
	"requestDate": Date,
	"answerDate": Date,
	"omekaExportStatus": "NONE" | "IN_PROGRESS" | "SENT" | "FAILED",
	"omekaExportDate": DateTime,
	"localExportStatus": "NONE" | "IN_PROGRESS" | "SENT" | "FAILED",
	"localExportDate": DateTime,
	"digLibExportStatus": "NONE" | "IN_PROGRESS" | "SENT" | "FAILED",
	"digLibExportDate": DateTime,
	"activeOcrLanguage": OcrLanguage,
	"cinesReports": UniqArray<CinesReport>,
	"iaReports": UniqArray<InternetArchiveReport>,
	"imageHeight": int32,
	"imageWidth": int32,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## DocUnitState
```ts
{
	"identifier": string,
	"version": int64,
	"status": "NOT_STARTED" | "PENDING" | "FINISHED" | "CANCELED" | "FAILED" | "TO_WAIT" | "WAITING" | "WAITING_NEXT_COMPLETED" | "TO_SKIP" | "SKIPPED",
	"modelState": WorkflowModelState,
	"workflow": DocUnitWorkflow,
	"startDate": DateTime,
	"endDate": DateTime,
	"dueDate": DateTime,
	"discriminator": "INITIALISATION_DOCUMENT" | "GENERATION_BORDEREAU" | "VALIDATION_CONSTAT_ETAT" | "VALIDATION_BORDEREAU_CONSTAT_ETAT" | "CONSTAT_ETAT_AVANT_NUMERISATION" | "NUMERISATION_EN_ATTENTE" | "CONSTAT_ETAT_APRES_NUMERISATION" | "LIVRAISON_DOCUMENT_EN_COURS" | "RELIVRAISON_DOCUMENT_EN_COURS" | "CONTROLES_AUTOMATIQUES_EN_COURS" | "CONTROLE_QUALITE_EN_COURS" | "PREREJET_DOCUMENT" | "PREVALIDATION_DOCUMENT" | "VALIDATION_DOCUMENT" | "VALIDATION_NOTICES" | "RAPPORT_CONTROLES" | "ARCHIVAGE_DOCUMENT" | "DIFFUSION_DOCUMENT" | "DIFFUSION_DOCUMENT_OMEKA" | "DIFFUSION_DOCUMENT_DIGITAL_LIBRARY" | "DIFFUSION_DOCUMENT_LOCALE" | "CLOTURE_DOCUMENT",
	"user": string,
	"key": "INITIALISATION_DOCUMENT" | "GENERATION_BORDEREAU" | "VALIDATION_CONSTAT_ETAT" | "VALIDATION_BORDEREAU_CONSTAT_ETAT" | "CONSTAT_ETAT_AVANT_NUMERISATION" | "NUMERISATION_EN_ATTENTE" | "CONSTAT_ETAT_APRES_NUMERISATION" | "LIVRAISON_DOCUMENT_EN_COURS" | "RELIVRAISON_DOCUMENT_EN_COURS" | "CONTROLES_AUTOMATIQUES_EN_COURS" | "CONTROLE_QUALITE_EN_COURS" | "PREREJET_DOCUMENT" | "PREVALIDATION_DOCUMENT" | "VALIDATION_DOCUMENT" | "VALIDATION_NOTICES" | "RAPPORT_CONTROLES" | "ARCHIVAGE_DOCUMENT" | "DIFFUSION_DOCUMENT" | "DIFFUSION_DOCUMENT_OMEKA" | "DIFFUSION_DOCUMENT_DIGITAL_LIBRARY" | "DIFFUSION_DOCUMENT_LOCALE" | "CLOTURE_DOCUMENT",
	"done": boolean,
	"skipped": boolean,
	"futureOrCurrentState": boolean,
	"currentState": boolean,
	"rejected": boolean,
	"validated": boolean,
	"waiting": boolean,
	"toSkip": boolean,
	"skippedOrCanceled": boolean,
	"running": boolean,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## DocUnitWorkflow
```ts
{
	"identifier": string,
	"version": int64,
	"model": WorkflowModel,
	"states": UniqArray<DocUnitState>,
	"startDate": DateTime,
	"endDate": DateTime,
	"docUnit": DocUnit,
	"done": boolean,
	"futureOrRunning": Array<DocUnitState>,
	"currentStates": Array<DocUnitState>,
	"documentRejected": boolean,
	"documentValidated": boolean,
	"noticeValidated": boolean,
	"rapportSent": boolean,
	"rapportFailed": boolean,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## ExportData
```ts
{
	"identifier": string,
	"version": int64,
	"properties": UniqArray<ExportProperty>,
	"docUnit": DocUnit,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## ExportFTPConfiguration
```ts
{
	"identifier": string,
	"version": int64,
	"label": string,
	"library": Library,
	"active": boolean,
	"storageServer": string,
	"port": string,
	"address": string,
	"login": string,
	"password": string,
	"exportView": boolean,
	"exportMaster": boolean,
	"exportThumb": boolean,
	"exportPdf": boolean,
	"exportMets": boolean,
	"exportAipSip": boolean,
	"exportAlto": boolean,
	"deliveryFolders": UniqArray<ExportFTPDeliveryFolder>,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## ExportFTPDeliveryFolder
```ts
{
	"identifier": string,
	"version": int64,
	"name": string,
	"confExportFtp": ExportFTPConfiguration,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## ExportProperty
```ts
{
	"identifier": string,
	"version": int64,
	"value": string,
	"type": DocPropertyType,
	"record": ExportData,
	"rank": int32,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## FTPConfiguration
```ts
{
	"identifier": string,
	"version": int64,
	"label": string,
	"library": Library,
	"address": string,
	"login": string,
	"password": string,
	"deliveryFolder": string,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## GlobalCheck
```ts
{
	"identifier": string,
	"version": int64,
	"errorLabel": "UNREADABLE" | "BAD_NAME" | "BAD_HIERARCHY" | "MISSING_PAGE" | "TRUNCATED_INFORMATION" | "BAD_RESOLUTION" | "BAD_THRESHOLD" | "WRONG_FORMAT" | "FOREIGN_BODIES" | "BAD_METADATA" | "INCONSISTENT_METADATA" | "ANOTHER_MAJ" | "BLURRED_IMAGE" | "SLANT_IMAGE" | "HALO_ON_IMAGE" | "SHADOW_ON_IMAGE" | "GEOMETRICAL_ANOMALY" | "CHROMATIC_ANOMALY" | "WRONG_FRAMING" | "WRONG_ORDER" | "BAD_OCR" | "ANOTHER_MIN",
	"errorType": "MAJOR" | "MINOR",
	"digitalDocument": DigitalDocument,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## ImportReport
```ts
{
	"identifier": string,
	"version": int64,
	"library": Library,
	"project": Project,
	"lot": Lot,
	"mapping": Mapping,
	"mappingChildren": Mapping,
	"csvMapping": CSVMapping,
	"additionnalMapping": string,
	"type": "SIMPLE" | "SIMPLE_MULTI_NOTICE" | "SIMPLE_MULTI_MULTI_NOTICE" | "HIERARCHY_IN_SINGLE_NOTICE" | "HIERARCHY_IN_MULTIPLE_IMPORT",
	"fileFormat": "MARC" | "MARCJSON" | "MARCXML" | "CSV" | "DC" | "DCQ" | "EAD" | "OAIPMH",
	"dataEncoding": "ANSEL" | "ISO_5426" | "ISO_6937" | "ISO_8859_1" | "UTF_8",
	"parentReport": ImportReport,
	"joinExpression": string,
	"files": Array<ImportedFile>,
	"start": DateTime,
	"end": DateTime,
	"runBy": string,
	"status": "PENDING" | "PRE_IMPORTING" | "DEDUPLICATING" | "USER_VALIDATION" | "IMPORTING" | "INDEXING" | "COMPLETED" | "FAILED",
	"message": string,
	"nbImp": int32,
	"docUnits": Array<ImportedDocUnit>,
	"filesAsString": string,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## ImportedDocUnit
```ts
{
	"identifier": string,
	"version": int64,
	"report": ImportReport,
	"importDate": DateTime,
	"process": "ADD" | "REPLACE" | "IGNORE",
	"parentKey": string,
	"duplicatedUnits": UniqArray<DocUnit>,
	"messages": UniqArray<Message>,
	"docUnit": DocUnit,
	"docUnitPgcnId": string,
	"docUnitLabel": string,
	"parentDocUnit": string,
	"parentDocUnitPgcnId": string,
	"parentDocUnitLabel": string,
	"groupCode": string,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## ImportedFile
```ts
{
	"originalFilename": string,
	"fileSize": int64,
}

```

## InternetArchiveCollection
```ts
{
	"identifier": string,
	"version": int64,
	"name": string,
	"confIa": InternetArchiveConfiguration,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## InternetArchiveConfiguration
```ts
{
	"identifier": string,
	"version": int64,
	"label": string,
	"library": Library,
	"accessKey": string,
	"secretKey": ,
	"active": boolean,
	"collections": Array<InternetArchiveCollection>,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## InternetArchiveReport
```ts
{
	"identifier": string,
	"version": int64,
	"docUnit": DocUnit,
	"internetArchiveIdentifier": string,
	"number": int32,
	"total": int32,
	"status": "EXPORTING" | "SENDING" | "SENT" | "ARCHIVED" | "FAILED",
	"dateSent": DateTime,
	"message": string,
	"dateArchived": DateTime,
	"arkUrl": string,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## Library
```ts
{
	"identifier": string,
	"version": int64,
	"name": string,
	"address": Address,
	"website": string,
	"phoneNumber": string,
	"email": string,
	"prefix": string,
	"number": string,
	"active": boolean,
	"institution": string,
	"cinesService": string,
	"defaultRole": Role,
	"superuser": boolean,
	"libRespName": string,
	"libRespPhone": string,
	"libRespEmail": string,
	"platforms": UniqArray<Platform>,
	"ftpConfigurations": UniqArray<FTPConfiguration>,
	"activeFTPConfiguration": FTPConfiguration,
	"checkConfigurations": UniqArray<CheckConfiguration>,
	"deliverySlipConfiguration": DeliverySlipConfiguration,
	"checkSlipConfiguration": CheckSlipConfiguration,
	"condReportSlipConfiguration": ConditionReportSlipConfiguration,
	"activeCheckConfiguration": CheckConfiguration,
	"viewsFormatConfigurations": UniqArray<ViewsFormatConfiguration>,
	"activeFormatConfiguration": ViewsFormatConfiguration,
	"exportFtpConfigurations": UniqArray<ExportFTPConfiguration>,
	"activeExportFTPConfiguration": ExportFTPConfiguration,
	"ocrLangConfigurations": UniqArray<OcrLangConfiguration>,
	"activeOcrLangConfiguration": OcrLangConfiguration,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## Lot
```ts
{
	"identifier": string,
	"version": int64,
	"project": Project,
	"deliveries": UniqArray<Delivery>,
	"docUnits": UniqArray<DocUnit>,
	"label": string,
	"code": string,
	"activeFTPConfiguration": FTPConfiguration,
	"activeCheckConfiguration": CheckConfiguration,
	"activeFormatConfiguration": ViewsFormatConfiguration,
	"activeExportFTPConfiguration": ExportFTPConfiguration,
	"provider": User,
	"activeOcrLanguage": OcrLanguage,
	"type": "PHYSICAL" | "DIGITAL",
	"description": string,
	"active": boolean,
	"status": "CREATED" | "ONGOING" | "PENDING" | "CANCELED" | "CLOSED",
	"realEndDate": Date,
	"condNotes": string,
	"numNotes": string,
	"deliveryDateForseen": DateTime,
	"requiredFormat": string,
	"requiredTypeCompression": string,
	"requiredTauxCompression": int32,
	"requiredResolution": string,
	"requiredColorspace": string,
	"collectionIA": InternetArchiveCollection,
	"planClassementPAC": CinesPAC,
	"omekaCollection": OmekaList,
	"omekaItem": OmekaList,
	"platforms": UniqArray<Platform>,
	"workflowModel": WorkflowModel,
	"filesArchived": boolean,
	"omekaConfiguration": OmekaConfiguration,
	"activeExportFTPDeliveryFolder": ExportFTPDeliveryFolder,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## Mapping
```ts
{
	"identifier": string,
	"version": int64,
	"label": string,
	"library": Library,
	"type": "EAD" | "DC" | "DCQ" | "MARC",
	"joinExpression": string,
	"rules": Array<MappingRule>,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## MappingRule
```ts
{
	"identifier": string,
	"version": int64,
	"docUnitField": string,
	"bibRecordField": string,
	"property": DocPropertyType,
	"expressionConf": string,
	"expression": string,
	"conditionConf": string,
	"condition": string,
	"position": int32,
	"defaultRule": boolean,
	"mapping": Mapping,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## Message
```ts
{
	"code": string,
	"complement": string,
}

```

## MultiLotsDelivery
```ts
{
	"identifier": string,
	"version": int64,
	"label": string,
	"description": string,
	"payment": "PAID" | "UNPAID",
	"status": "SAVED" | "DELIVERING" | "DELIVERED" | "TO_BE_CONTROLLED" | "VALIDATED" | "REJECTED" | "BACK_TO_PROVIDER" | "AUTOMATICALLY_REJECTED" | "DELIVERED_AGAIN" | "DELIVERING_ERROR" | "TREATED" | "CLOSED" | "CANCELED",
	"method": "FTP" | "DISK" | "OTHER",
	"receptionDate": Date,
	"folderPath": string,
	"digitizingNotes": string,
	"controlNotes": string,
	"selectedByTrain": boolean,
	"trainId": string,
	"deliveries": Array<Delivery>,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## OcrLangConfiguration
```ts
{
	"identifier": string,
	"version": int64,
	"label": string,
	"active": boolean,
	"library": Library,
	"activatedOcrLanguages": UniqArray<ActivatedOcrLanguage>,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## OcrLanguage
```ts
{
	"identifier": string,
	"version": int64,
	"code": string,
	"label": string,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## OmekaConfiguration
```ts
{
	"identifier": string,
	"version": int64,
	"label": string,
	"library": Library,
	"active": boolean,
	"storageServer": string,
	"port": string,
	"address": string,
	"login": string,
	"password": string,
	"accessUrl": string,
	"mailCsv": string,
	"sftp": boolean,
	"exportMets": boolean,
	"exportMaster": boolean,
	"exportView": boolean,
	"exportThumb": boolean,
	"exportPdf": boolean,
	"omekaLists": Array<OmekaList>,
	"omekas": boolean,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## OmekaList
```ts
{
	"identifier": string,
	"version": int64,
	"name": string,
	"type": "COLLECTION" | "ITEM",
	"confOmeka": OmekaConfiguration,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## PgcnError
```ts
{
	"code": "AUTO_CHECK_TYPE_LABEL_MANDATORY" | "CONDREPORT_DUPLICATE" | "CONDREPORT_DETAIL_EMPTY" | "CONDREPORT_DETAIL_MANDATORY" | "CONDREPORT_DETAIL_DESC_EMPTY" | "CONDREPORT_DETAIL_DESC_NO_VALUE_FOR_PROP" | "CONDREPORT_DETAIL_DESC_BAD_VALUE" | "CONDREPORT_DETAIL_DESC_DIMENSION" | "CONF_CHECK_DEL_EXITS_LIB" | "CONF_CHECK_DEL_EXITS_LOT" | "CONF_CHECK_DEL_EXITS_PROJECT" | "CONF_FTP_DEL_EXITS_LIB" | "CONF_FTP_DEL_EXITS_LOT" | "CONF_FTP_DEL_EXITS_PROJECT" | "CONF_IA_LABEL_MANDATORY" | "CONF_IA_LIBRARY_MANDATORY" | "CONF_OMEKA_LABEL_MANDATORY" | "CONF_OMEKA_LIBRARY_MANDATORY" | "CONF_DIGITAL_LIBRARY_LABEL_MANDATORY" | "CONF_DIGITAL_LIBRARY_LIBRARY_MANDATORY" | "CONF_SFTP_LABEL_MANDATORY" | "CONF_SFTP_LIBRARY_MANDATORY" | "DATA_INTEGRITY_VIOLATION" | "DELIVERY_DUPLICATE_LABEL" | "DELIVERY_LOT_MANDATORY" | "DELIVERY_NO_MATCHING_PREFIX" | "DELIVERY_NO_MASTER_FOUND" | "DELIVERY_NO_CHECK_CONFIGURATION_FOUND" | "DELIVERY_NOT_ENOUGH_AVAILABLE_SPACE" | "DELIVERY_WRONG_FOLDER" | "DELIVERY_WRONG_FILE" | "DESC_PROPERTY_DEL_EXISTS_DESC" | "DESC_PROPERTY_LABEL_MANDATORY" | "DESC_PROPERTY_TYPE_MANDATORY" | "DESC_VALUE_DEL_EXISTS_DESC" | "DESC_VALUE_LABEL_MANDATORY" | "DESC_VALUE_PROPERTY_MANDATORY" | "DOC_PROP_TYPE_DEL_USED_MAPPING" | "DOC_PROP_TYPE_DEL_USED_PROP" | "DOC_PROP_TYPE_LABEL_MANDATORY" | "DOC_UNIT_DUPLICATE_PGCN_ID" | "DOC_UNIT_IMAGERESOLUTION" | "DOC_UNIT_IN_PROJECT" | "DOC_UNIT_IN_ONGOING_LOT" | "DOC_UNIT_LABEL_MANDATORY" | "DOC_UNIT_PGCN_ID_MANDATORY" | "DOC_UNIT_LIBRARY_MANDATORY" | "DOC_UNIT_RIGHT_MANDATORY" | "IMAGE_METADATA_CANT_PARSE" | "IMAGE_METADATA_FIELDS_MANDATORY" | "IMAGE_METADATA_PROPERTY_USED" | "IMAGE_METADATA_SAME_PROPERTY_EXIST" | "IMAGE_METADATA_NOT_EXIST" | "LIBRARY_DEL_EXITS_DOCUNIT" | "LIBRARY_DEL_EXITS_PROJ" | "LIBRARY_DEL_EXITS_RECORD" | "LIBRARY_DEL_EXITS_USER" | "LIBRARY_DEL_EXITS_WGROUP" | "LIBRARY_DEL_EXITS_WMODEL" | "LIBRARY_DUPLICATE_NAME" | "LIBRARY_IN_PROJECT" | "LOT_DEL_EXITS_DELIVERY" | "LOT_DEL_EXITS_DOCUNIT" | "LOT_DUPLICATE_LABEL" | "MAPPING_LABEL_MANDATORY" | "MAPPING_LIBRARY_MANDATORY" | "MAPPING_RULE_LABEL_MANDATORY" | "MAPPING_RULE_PGCNID_MANDATORY" | "MAPPING_RULE_RIGHTS_MANDATORY" | "MAPPING_RULE_FIELD_MANDATORY" | "MAPPING_TYPE_MANDATORY" | "PROJECT_DEL_EXITS_DOCUNITS" | "PROJECT_DEL_EXITS_LOTS" | "PROJECT_DEL_EXITS_TRAINS" | "PROJECT_DUPLICATE_NAME" | "RECORD_LANGUAGE_UNKNOWN" | "REPORT_GENERATION" | "ROLE_DEL_EXITS_LIB" | "ROLE_DEL_EXITS_USER" | "TPL_DUPLICATE" | "TPL_LIBRARY_MANDATORY" | "TPL_NAME_MANDATORY" | "USER_DEL_EXITS_PROJ" | "USER_DEL_EXITS_LOT" | "USER_DUPLICATE_LOGIN" | "USER_EMAIL_INVALID" | "USER_EMAIL_MANDATORY" | "USER_LIBRARY_MANDATORY" | "USER_LOGIN_MANDATORY" | "USER_ROLE_CODE_MANDATORY" | "USER_ROLE_LABEL_MANDATORY" | "USER_ROLE_MANDATORY" | "USER_ROLE_UNIQUE_CODE_VIOLATION" | "USER_ROLE_UNIQUE_LABEL_VIOLATION" | "USER_IN_WORKFLOW_GROUP" | "WORKFLOW_GROUP_NAME_MANDATORY" | "WORKFLOW_GROUP_DUPLICATE_NAME" | "WORKFLOW_GROUP_MIXED_USERS" | "WORKFLOW_GROUP_IS_IN_FUTURE_STATE" | "WORKFLOW_MODEL_MISSING" | "WORKFLOW_MODEL_NAME_MANDATORY" | "WORKFLOW_MODEL_STATE_GROUP_MANDATORY" | "WORKFLOW_MODEL_DUPLICATE_NAME" | "WORKFLOW_MODEL_DEL_EXITS_DOC" | "WORKFLOW_MODEL_DEL_EXITS_LOT" | "WORKFLOW_MODEL_DEL_EXITS_PROJ" | "WORKFLOW_PROCESS_NO_RIGHTS" | "WORKFLOW_LOT_DOCUNIT_MISSING" | "Z3950SERVER_NAME_MANDATORY" | "Z3950SERVER_UNIQUE_NAME_VIOLATION" | "Z3950_CONNECTION_FAILURE" | "Z3950_SEARCH_FAILURE",
	"field": string,
	"complements": Array<string>,
	"additionnalComplements": any,
	"message": string,
}

```

## PhysicalDocument
```ts
{
	"identifier": string,
	"version": int64,
	"docUnit": DocUnit,
	"digitalDocuments": UniqArray<DigitalDocument>,
	"status": "CREATED" | "SELECTED" | "GATHERED" | "STATE_CHECK_REALISED" | "IN_DIGITIZATION" | "TO_CHECK" | "TO_SHELVE" | "REINTEGRATED",
	"name": string,
	"totalPage": int32,
	"digitalId": string,
	"train": Train,
	"automaticCheckResults": UniqArray<AutomaticCheckResult>,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## Platform
```ts
{
	"identifier": string,
	"version": int64,
	"label": string,
	"url": string,
	"rcr": string,
	"login": string,
	"password": string,
	"format": "DC" | "DCQ",
	"type": "ARCHIVING" | "DIFFUSION",
	"library": Library,
	"associatedProjects": UniqArray<Project>,
	"lot": Lot,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## Project
```ts
{
	"identifier": string,
	"version": int64,
	"library": Library,
	"activeFTPConfiguration": FTPConfiguration,
	"activeCheckConfiguration": CheckConfiguration,
	"provider": User,
	"activeFormatConfiguration": ViewsFormatConfiguration,
	"activeExportFTPConfiguration": ExportFTPConfiguration,
	"name": string,
	"description": string,
	"startDate": Date,
	"forecastEndDate": Date,
	"realEndDate": Date,
	"active": boolean,
	"collectionIA": InternetArchiveCollection,
	"planClassementPAC": CinesPAC,
	"omekaCollection": OmekaList,
	"omekaItem": OmekaList,
	"status": "CREATED" | "ONGOING" | "PENDING" | "CANCELED" | "CLOSED",
	"lots": UniqArray<Lot>,
	"trains": UniqArray<Train>,
	"associatedPlatforms": UniqArray<Platform>,
	"associatedLibraries": UniqArray<Library>,
	"associatedUsers": UniqArray<User>,
	"docUnits": UniqArray<DocUnit>,
	"workflowModel": WorkflowModel,
	"cancelingComment": string,
	"filesArchived": boolean,
	"libRespName": string,
	"libRespPhone": string,
	"libRespEmail": string,
	"licenseUrl": string,
	"omekaConfiguration": OmekaConfiguration,
	"activeExportFTPDeliveryFolder": ExportFTPDeliveryFolder,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## Role
```ts
{
	"identifier": string,
	"version": int64,
	"*code": string,
	"label": string,
	"description": string,
	"superuser": boolean,
	"authorizations": UniqArray<Authorization>,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## Sample
```ts
{
	"identifier": string,
	"version": int64,
	"delivery": Delivery,
	"digitalDocument": DigitalDocument,
	"pages": UniqArray<DocPage>,
	"samplingMode": string,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## SftpConfiguration
```ts
{
	"identifier": string,
	"version": int64,
	"label": string,
	"library": Library,
	"username": string,
	"password": ,
	"host": string,
	"port": int32,
	"targetDir": string,
	"pacs": Array<CinesPAC>,
	"active": boolean,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## StoredFile
```ts
{
	"identifier": string,
	"version": int64,
	"filename": string,
	"length": int64,
	"width": int64,
	"height": int64,
	"titleToc": string,
	"typeToc": string,
	"orderToc": string,
	"pageDigest": string,
	"mimetype": string,
	"compressionType": string,
	"compressionRate": int32,
	"resolution": int32,
	"colorspace": string,
	"textOcr": string,
	"type": "MASTER" | "DERIVED",
	"page": DocPage,
	"formatConfiguration": ViewsFormatConfiguration,
	"fileFormat": "MASTER" | "PRINT" | "THUMB" | "VIEW" | "ZOOM" | "XTRAZOOM",
	"digest": string,
	"withoutOcrText": StoredFile,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## Train
```ts
{
	"identifier": string,
	"version": int64,
	"project": Project,
	"label": string,
	"description": string,
	"active": boolean,
	"status": "CREATED" | "IN_PREPARATION" | "IN_DIGITIZATION" | "RECEIVING_PHYSICAL_DOCUMENTS" | "CANCELED" | "CLOSED",
	"providerSendingDate": Date,
	"returnDate": Date,
	"physicalDocuments": UniqArray<PhysicalDocument>,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## User
```ts
{
	"identifier": string,
	"version": int64,
	"login": string,
	"firstname": string,
	"surname": string,
	"function": string,
	"phoneNumber": string,
	"email": string,
	"active": boolean,
	"superuser": boolean,
	"companyName": string,
	"address": Address,
	"library": Library,
	"projects": UniqArray<Project>,
	"role": Role,
	"category": "PROVIDER" | "OTHER",
	"dashboard": Dashboard,
	"lang": "FR" | "EN",
	"groups": UniqArray<WorkflowGroup>,
	"fullName": string,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## ViewsFormatConfiguration
```ts
{
	"identifier": string,
	"version": int64,
	"defaultFormats": DefaultFileFormats,
	"label": string,
	"thumbWidth": int64,
	"thumbHeight": int64,
	"viewWidth": int64,
	"viewHeight": int64,
	"printWidth": int64,
	"printHeight": int64,
	"library": Library,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## WorkflowGroup
```ts
{
	"identifier": string,
	"version": int64,
	"name": string,
	"description": string,
	"users": UniqArray<User>,
	"states": UniqArray<WorkflowModelState>,
	"library": Library,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## WorkflowModel
```ts
{
	"identifier": string,
	"version": int64,
	"name": string,
	"description": string,
	"library": Library,
	"instances": UniqArray<DocUnitWorkflow>,
	"modelStates": UniqArray<WorkflowModelState>,
	"active": boolean,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## WorkflowModelState
```ts
{
	"identifier": string,
	"version": int64,
	"group": WorkflowGroup,
	"limitDuration": {
		"seconds": int64,
		"zero": boolean,
		"nano": int32,
		"negative": boolean,
		"units": Array<{
				"durationEstimated": boolean,
				"duration": {
					"seconds": int64,
					"zero": boolean,
					"nano": int32,
					"negative": boolean,
}
,
				"timeBased": boolean,
				"dateBased": boolean,
}
>,
}
,
	"key": "INITIALISATION_DOCUMENT" | "GENERATION_BORDEREAU" | "VALIDATION_CONSTAT_ETAT" | "VALIDATION_BORDEREAU_CONSTAT_ETAT" | "CONSTAT_ETAT_AVANT_NUMERISATION" | "NUMERISATION_EN_ATTENTE" | "CONSTAT_ETAT_APRES_NUMERISATION" | "LIVRAISON_DOCUMENT_EN_COURS" | "RELIVRAISON_DOCUMENT_EN_COURS" | "CONTROLES_AUTOMATIQUES_EN_COURS" | "CONTROLE_QUALITE_EN_COURS" | "PREREJET_DOCUMENT" | "PREVALIDATION_DOCUMENT" | "VALIDATION_DOCUMENT" | "VALIDATION_NOTICES" | "RAPPORT_CONTROLES" | "ARCHIVAGE_DOCUMENT" | "DIFFUSION_DOCUMENT" | "DIFFUSION_DOCUMENT_OMEKA" | "DIFFUSION_DOCUMENT_DIGITAL_LIBRARY" | "DIFFUSION_DOCUMENT_LOCALE" | "CLOTURE_DOCUMENT",
	"type": "REQUIRED" | "TO_SKIP" | "TO_WAIT" | "OTHER",
	"model": WorkflowModel,
	"instances": UniqArray<DocUnitState>,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## Z3950Server
```ts
{
	"identifier": string,
	"version": int64,
	"name": string,
	"host": string,
	"port": int32,
	"database": string,
	"userId": string,
	"password": string,
	"active": boolean,
	"dataFormat": "INTERMARC" | "UNIMARC",
	"dataEncoding": "ANSEL" | "ISO_5426" | "ISO_6937" | "ISO_8859_1" | "UTF_8",
	"recordType": "BIBLIOGRAPHIC" | "AUTHORITY",
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## RoleDTO
```ts
{
	"identifier": string,
	"code": string,
	"label": string,
}

```

## SimpleLibraryDTO
```ts
{
	"version": int64,
	"identifier": string,
	"name": string,
	"prefix": string,
	"defaultRole": RoleDTO,
	"libRespName": string,
	"libRespPhone": string,
	"libRespEmail": string,
	"errors": Array<PgcnError>,
}

```

## SimpleWorkflowGroupDTO
```ts
{
	"identifier": string,
	"name": string,
	"errors": Array<PgcnError>,
}

```

## WorkflowModelDTO
```ts
{
	"version": int64,
	"identifier": string,
	"name": string,
	"library": SimpleLibraryDTO,
	"description": string,
	"active": boolean,
	"states": Array<WorkflowModelStateDTO>,
	"createdBy": string,
	"createdDate": DateTime,
	"lastModifiedBy": string,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## WorkflowModelStateDTO
```ts
{
	"version": int64,
	"identifier": string,
	"key": "INITIALISATION_DOCUMENT" | "GENERATION_BORDEREAU" | "VALIDATION_CONSTAT_ETAT" | "VALIDATION_BORDEREAU_CONSTAT_ETAT" | "CONSTAT_ETAT_AVANT_NUMERISATION" | "NUMERISATION_EN_ATTENTE" | "CONSTAT_ETAT_APRES_NUMERISATION" | "LIVRAISON_DOCUMENT_EN_COURS" | "RELIVRAISON_DOCUMENT_EN_COURS" | "CONTROLES_AUTOMATIQUES_EN_COURS" | "CONTROLE_QUALITE_EN_COURS" | "PREREJET_DOCUMENT" | "PREVALIDATION_DOCUMENT" | "VALIDATION_DOCUMENT" | "VALIDATION_NOTICES" | "RAPPORT_CONTROLES" | "ARCHIVAGE_DOCUMENT" | "DIFFUSION_DOCUMENT" | "DIFFUSION_DOCUMENT_OMEKA" | "DIFFUSION_DOCUMENT_DIGITAL_LIBRARY" | "DIFFUSION_DOCUMENT_LOCALE" | "CLOTURE_DOCUMENT",
	"group": SimpleWorkflowGroupDTO,
	"duration": {
		"seconds": int64,
		"zero": boolean,
		"nano": int32,
		"negative": boolean,
		"units": Array<{
				"durationEstimated": boolean,
				"timeBased": boolean,
				"dateBased": boolean,
}
>,
}
,
	"type": "REQUIRED" | "TO_SKIP" | "TO_WAIT" | "OTHER",
	"errors": Array<PgcnError>,
}

```

## SimpleUserDTO
```ts
{
	"identifier": string,
	"surname": string,
	"firstname": string,
	"fullName": string,
	"login": string,
	"library": SimpleLibraryDTO,
}

```

## WorkflowGroupDTO
```ts
{
	"version": int64,
	"identifier": string,
	"name": string,
	"library": SimpleLibraryDTO,
	"description": string,
	"users": Array<SimpleUserDTO>,
	"createdBy": string,
	"createdDate": DateTime,
	"lastModifiedBy": string,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## ViewsFormatConfigurationDTO
```ts
{
	"version": int64,
	"identifier": string,
	"label": string,
	"thumbWidth": int64,
	"thumbHeight": int64,
	"viewWidth": int64,
	"viewHeight": int64,
	"printWidth": int64,
	"printHeight": int64,
	"thumbDefaultValue": string,
	"viewDefaultValue": string,
	"printDefaultValue": string,
	"library": SimpleLibraryDTO,
	"errors": Array<PgcnError>,
}

```

## AddressDTO
```ts
{
	"identifier": string,
	"label": string,
	"address1": string,
	"address2": string,
	"address3": string,
	"complement": string,
	"postcode": string,
	"city": string,
	"country": string,
	"version": int64,
}

```

## UserCreationDTO
```ts
{
	"version": int64,
	"identifier": string,
	"login": string,
	"firstname": string,
	"surname": string,
	"active": boolean,
	"category": string,
	"lang": "FR" | "EN",
	"role": RoleDTO,
	"address": AddressDTO,
	"library": SimpleLibraryDTO,
	"phoneNumber": string,
	"email": string,
	"companyName": string,
	"function": string,
	"groups": Array<SimpleWorkflowGroupDTO>,
	"createdBy": string,
	"createdDate": DateTime,
	"lastModifiedBy": string,
	"lastModifiedDate": DateTime,
	"password": string,
	"errors": Array<PgcnError>,
}

```

## UserDTO
```ts
{
	"version": int64,
	"identifier": string,
	"login": string,
	"firstname": string,
	"surname": string,
	"active": boolean,
	"category": string,
	"lang": "FR" | "EN",
	"role": RoleDTO,
	"address": AddressDTO,
	"library": SimpleLibraryDTO,
	"phoneNumber": string,
	"email": string,
	"companyName": string,
	"function": string,
	"groups": Array<SimpleWorkflowGroupDTO>,
	"createdBy": string,
	"createdDate": DateTime,
	"lastModifiedBy": string,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## SimplePhysicalDocumentDTO
```ts
{
	"identifier": string,
	"name": string,
	"digitalId": string,
	"train": SimpleTrainDTO,
	"errors": Array<PgcnError>,
}

```

## SimpleProjectDTO
```ts
{
	"identifier": string,
	"name": string,
	"description": string,
	"status": string,
	"library": SimpleLibraryDTO,
	"cancelingComment": string,
	"filesArchived": boolean,
}

```

## SimpleTrainDTO
```ts
{
	"identifier": string,
	"label": string,
	"description": string,
	"status": "CREATED" | "IN_PREPARATION" | "IN_DIGITIZATION" | "RECEIVING_PHYSICAL_DOCUMENTS" | "CANCELED" | "CLOSED",
	"providerSendingDate": Date,
	"returnDate": Date,
	"errors": Array<PgcnError>,
}

```

## TrainDTO
```ts
{
	"version": int64,
	"identifier": string,
	"project": SimpleProjectDTO,
	"label": string,
	"description": string,
	"active": boolean,
	"status": "CREATED" | "IN_PREPARATION" | "IN_DIGITIZATION" | "RECEIVING_PHYSICAL_DOCUMENTS" | "CANCELED" | "CLOSED",
	"providerSendingDate": Date,
	"returnDate": Date,
	"physicalDocuments": UniqArray<SimplePhysicalDocumentDTO>,
	"createdBy": string,
	"createdDate": DateTime,
	"lastModifiedBy": string,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## Template
```ts
{
	"identifier": string,
	"version": int64,
	"name": "ConditionReport" | "ReinitPassword" | "UserCreation" | "ConditionReportSlip" | "DeliverySlip" | "ControlSlip",
	"originalFilename": string,
	"fileSize": int64,
	"library": Library,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## CinesPACDTO
```ts
{
	"identifier": string,
	"name": string,
}

```

## ExportFTPConfigurationDTO
```ts
{
	"version": int64,
	"identifier": string,
	"label": string,
	"library": SimpleLibraryDTO,
	"address": string,
	"login": string,
	"password": string,
	"storageServer": string,
	"port": string,
	"active": boolean,
	"exportMets": boolean,
	"exportMaster": boolean,
	"exportView": boolean,
	"exportThumb": boolean,
	"exportPdf": boolean,
	"exportAipSip": boolean,
	"exportAlto": boolean,
	"deliveryFolders": Array<ExportFTPConfigurationDeliveryFolderDTO>,
	"errors": Array<PgcnError>,
}

```

## ExportFTPConfigurationDeliveryFolderDTO
```ts
{
	"version": int64,
	"identifier": string,
	"name": string,
	"errors": Array<PgcnError>,
}

```

## InternetArchiveCollectionDTO
```ts
{
	"identifier": string,
	"name": string,
}

```

## OmekaConfigurationDTO
```ts
{
	"identifier": string,
	"label": string,
	"storageServer": string,
	"port": string,
	"library": SimpleLibraryDTO,
	"omekaCollections": Array<OmekaListDTO>,
	"omekaItems": Array<OmekaListDTO>,
	"omekaLists": Array<OmekaListDTO>,
	"active": boolean,
	"address": string,
	"login": string,
	"password": string,
	"accessUrl": string,
	"mailCsv": string,
	"exportMets": boolean,
	"exportMaster": boolean,
	"exportView": boolean,
	"exportThumb": boolean,
	"exportPdf": boolean,
	"omekas": boolean,
	"sftp": boolean,
	"zip": boolean,
}

```

## OmekaListDTO
```ts
{
	"version": int64,
	"identifier": string,
	"name": string,
	"type": string,
	"errors": Array<PgcnError>,
}

```

## ProjectDTO
```ts
{
	"version": int64,
	"identifier": string,
	"library": SimpleLibraryDTO,
	"name": string,
	"description": string,
	"active": boolean,
	"startDate": Date,
	"forecastEndDate": Date,
	"realEndDate": Date,
	"status": string,
	"activeFTPConfiguration": SimpleFTPConfigurationDTO,
	"activeExportFTPConfiguration": ExportFTPConfigurationDTO,
	"activeCheckConfiguration": SimpleCheckConfigurationDTO,
	"activeFormatConfiguration": SimpleViewsFormatConfigurationDTO,
	"collectionIA": InternetArchiveCollectionDTO,
	"licenseUrl": string,
	"planClassementPAC": CinesPACDTO,
	"provider": SimpleUserDTO,
	"workflowModel": SimpleWorkflowModelDTO,
	"cancelingComment": string,
	"omekaCollection": OmekaListDTO,
	"omekaItem": OmekaListDTO,
	"omekaConfiguration": OmekaConfigurationDTO,
	"libRespName": string,
	"libRespPhone": string,
	"libRespEmail": string,
	"activeExportFTPDeliveryFolder": ExportFTPConfigurationDeliveryFolderDTO,
	"associatedLibraries": UniqArray<SimpleLibraryDTO>,
	"associatedUsers": UniqArray<SimpleUserDTO>,
	"otherProviders": Array<SimpleUserDTO>,
	"createdBy": string,
	"createdDate": DateTime,
	"lastModifiedBy": string,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## SimpleCheckConfigurationDTO
```ts
{
	"identifier": string,
	"label": string,
	"errors": Array<PgcnError>,
}

```

## SimpleFTPConfigurationDTO
```ts
{
	"identifier": string,
	"label": string,
	"errors": Array<PgcnError>,
}

```

## SimpleViewsFormatConfigurationDTO
```ts
{
	"identifier": string,
	"label": string,
	"errors": Array<PgcnError>,
}

```

## SimpleWorkflowModelDTO
```ts
{
	"identifier": string,
	"name": string,
	"errors": Array<PgcnError>,
}

```

## PhysicalDocumentDTO
```ts
{
	"version": int64,
	"identifier": string,
	"name": string,
	"digitalId": string,
	"totalPage": int32,
	"train": SimpleTrainDTO,
	"commentaire": string,
	"errors": Array<PgcnError>,
}

```

## OcrLangConfigurationDTO
```ts
{
	"version": int64,
	"identifier": string,
	"label": string,
	"library": SimpleLibraryDTO,
	"active": boolean,
	"ocrLanguages": Array<OcrLanguageDTO>,
	"errors": Array<PgcnError>,
}

```

## OcrLanguageDTO
```ts
{
	"identifier": string,
	"label": string,
	"code": string,
	"active": boolean,
	"errors": Array<PgcnError>,
}

```

## MultiLotsDeliveryDTO
```ts
{
	"identifier": string,
	"label": string,
	"description": string,
	"payment": string,
	"status": string,
	"method": string,
	"receptionDate": Date,
	"folderPath": string,
	"digitizingNotes": string,
	"controlNotes": string,
	"trainId": string,
	"selectedByTrain": boolean,
	"train": SimpleTrainDTO,
	"createdBy": string,
	"deliveries": Array<SimpleDeliveryLotDTO>,
	"lots": Array<SimpleLotForDeliveryDTO>,
	"errors": Array<PgcnError>,
}

```

## SimpleDeliveryLotDTO
```ts
{
	"identifier": string,
	"label": string,
	"status": "SAVED" | "DELIVERING" | "DELIVERED" | "TO_BE_CONTROLLED" | "VALIDATED" | "REJECTED" | "BACK_TO_PROVIDER" | "AUTOMATICALLY_REJECTED" | "DELIVERED_AGAIN" | "DELIVERING_ERROR" | "TREATED" | "CLOSED" | "CANCELED",
	"lot": SimpleLotForDeliveryDTO,
}

```

## SimpleLotForDeliveryDTO
```ts
{
	"identifier": string,
	"label": string,
	"code": string,
	"status": "CREATED" | "ONGOING" | "PENDING" | "CANCELED" | "CLOSED",
	"type": "PHYSICAL" | "DIGITAL",
	"requiredFormat": string,
}

```

## MultiLotsDeliveryRequestWrapper
```ts
{
	"lockedDocs": Array<PreDeliveryLockedDocsDTO>,
	"metadatas": Array<PreDeliveryDocumentDTO>,
}

```

## PreDeliveryDocumentDTO
```ts
{
	"digitalId": string,
	"pageNumber": int32,
	"pieces": UniqArray<string>,
	"metaDataFiles": UniqArray<PreDeliveryDocumentFileDTO>,
	"errors": Array<PgcnError>,
}

```

## PreDeliveryDocumentFileDTO
```ts
{
	"name": string,
	"role": "NO_ROLE" | "OTHER" | "METS" | "EXCEL" | "PDF_MULTI",
	"errors": Array<PgcnError>,
}

```

## PreDeliveryLockedDocsDTO
```ts
{
	"deliveryLabel": string,
	"lockedDocsIdentifiers": Array<string>,
	"errors": Array<PgcnError>,
}

```

## LotDTO
```ts
{
	"version": int64,
	"identifier": string,
	"label": string,
	"code": string,
	"type": string,
	"description": string,
	"active": boolean,
	"status": string,
	"condNotes": string,
	"numNotes": string,
	"requiredFormat": string,
	"deliveryDateForseen": DateTime,
	"realEndDate": DateTime,
	"project": ProjectDTO,
	"docUnits": UniqArray<SimpleDocUnitDTO>,
	"activeFTPConfiguration": SimpleFTPConfigurationDTO,
	"activeExportFTPConfiguration": ExportFTPConfigurationDTO,
	"activeCheckConfiguration": SimpleCheckConfigurationDTO,
	"activeFormatConfiguration": SimpleViewsFormatConfigurationDTO,
	"collectionIA": InternetArchiveCollectionDTO,
	"planClassementPAC": CinesPACDTO,
	"provider": SimpleUserDTO,
	"requiredTypeCompression": string,
	"requiredTauxCompression": int32,
	"requiredResolution": string,
	"requiredColorspace": string,
	"workflowModel": SimpleWorkflowModelDTO,
	"omekaConfiguration": OmekaConfigurationDTO,
	"omekaCollection": OmekaListDTO,
	"omekaItem": OmekaListDTO,
	"activeOcrLanguage": OcrLanguageDTO,
	"activeExportFTPDeliveryFolder": ExportFTPConfigurationDeliveryFolderDTO,
	"errors": Array<PgcnError>,
}

```

## SimpleDocUnitDTO
```ts
{
	"identifier": string,
	"label": string,
	"pgcnId": string,
	"digitizingNotes": string,
	"library": SimpleLibraryDTO,
	"children": Array<SimpleDocUnitDTO>,
	"parentIdentifier": string,
	"errors": Array<PgcnError>,
}

```

## SearchRequest
```ts
{
	"search": string,
	"libraries": Array<string>,
	"projects": Array<string>,
	"active": boolean,
	"lotStatuses": Array<"CREATED" | "ONGOING" | "PENDING" | "CANCELED" | "CLOSED">,
	"docNumber": int32,
	"fileFormats": Array<string>,
	"filter": Array<string>,
}

```

## PageSimpleLotDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<SimpleLotDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## SimpleLotDTO
```ts
{
	"identifier": string,
	"label": string,
	"code": string,
	"requiredFormat": string,
	"project": SimpleProjectDTO,
	"status": "CREATED" | "ONGOING" | "PENDING" | "CANCELED" | "CLOSED",
	"type": "PHYSICAL" | "DIGITAL",
	"filesArchived": boolean,
	"providerLogin": string,
	"activeOcrLanguage": OcrLanguageDTO,
}

```

## ResultAdminLotDTO
```ts
{
	"identifier": string,
	"msg": string,
	"success": boolean,
}

```

## LibraryParameterValueCinesDTO
```ts
{
	"identifier": string,
	"type": string,
	"value": string,
	"errors": Array<PgcnError>,
}

```

## LibraryParameterValuedDTO
```ts
{
	"identifier": string,
	"type": string,
	"library": SimpleLibraryDTO,
	"values": Array<LibraryParameterValueCinesDTO>,
	"errors": Array<PgcnError>,
}

```

## LibraryDTO
```ts
{
	"version": int64,
	"identifier": string,
	"name": string,
	"prefix": string,
	"defaultRole": RoleDTO,
	"libRespName": string,
	"libRespPhone": string,
	"libRespEmail": string,
	"website": string,
	"phoneNumber": string,
	"email": string,
	"number": string,
	"active": boolean,
	"institution": string,
	"address": AddressDTO,
	"cinesService": string,
	"ftpConfigurations": UniqArray<SimpleFTPConfigurationDTO>,
	"activeFTPConfiguration": SimpleFTPConfigurationDTO,
	"checkConfigurations": UniqArray<SimpleCheckConfigurationDTO>,
	"activeCheckConfiguration": SimpleCheckConfigurationDTO,
	"viewsFormatConfigurations": UniqArray<SimpleViewsFormatConfigurationDTO>,
	"activeFormatConfiguration": SimpleViewsFormatConfigurationDTO,
	"ocrLangConfigurations": UniqArray<SimpleOcrLangConfigDTO>,
	"activeOcrLangConfiguration": SimpleOcrLangConfigDTO,
	"createdBy": string,
	"createdDate": DateTime,
	"lastModifiedBy": string,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## SimpleOcrLangConfigDTO
```ts
{
	"identifier": string,
	"label": string,
	"errors": Array<PgcnError>,
}

```

## CustomHeader
```ts
{
	"type": string,
	"value": string,
	"errors": Array<PgcnError>,
}

```

## InternetArchiveItemDTO
```ts
{
	"identifier": string,
	"archiveIdentifier": string,
	"collections": Array<string>,
	"contributors": Array<string>,
	"coverages": Array<string>,
	"creators": Array<string>,
	"credits": string,
	"date": string,
	"description": string,
	"languages": Array<string>,
	"licenseUrl": string,
	"mediatype": "texts" | "image" | "collection" | "autre",
	"customMediatype": string,
	"notes": string,
	"publisher": string,
	"rights": string,
	"subjects": Array<string>,
	"title": string,
	"customHeaders": Array<CustomHeader>,
	"total": int32,
	"type": string,
	"source": string,
	"errors": Array<PgcnError>,
}

```

## ImageMetadataProperty
```ts
{
	"identifier": string,
	"version": int64,
	"label": string,
	"repeat": boolean,
	"type": "STRING" | "INTEGER" | "REAL" | "BOOLEAN" | "DATE",
	"iptcTag": string,
	"xmpTag": string,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## ImageMetadataValue
```ts
{
	"identifier": string,
	"version": int64,
	"docUnit": DocUnit,
	"metadata": ImageMetadataProperty,
	"value": string,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## HelpPage
```ts
{
	"identifier": string,
	"version": int64,
	"title": string,
	"rank": int32,
	"tag": string,
	"module": string,
	"type": "PGCN" | "CUSTOM",
	"content": string,
	"parent": HelpPage,
	"children": UniqArray<HelpPage>,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## FTPConfigurationDTO
```ts
{
	"version": int64,
	"identifier": string,
	"label": string,
	"library": SimpleLibraryDTO,
	"address": string,
	"login": string,
	"password": string,
	"deliveryFolder": string,
	"errors": Array<PgcnError>,
}

```

## FilesGestionConfigDTO
```ts
{
	"version": int64,
	"identifier": string,
	"triggerType": string,
	"delay": int32,
	"useExportFtp": boolean,
	"destinationDir": string,
	"deleteMaster": boolean,
	"deletePdf": boolean,
	"deletePrint": boolean,
	"deleteView": boolean,
	"deleteThumb": boolean,
	"saveMaster": boolean,
	"savePdf": boolean,
	"savePrint": boolean,
	"saveView": boolean,
	"saveThumb": boolean,
	"saveAipSip": boolean,
	"activeExportFTPConfiguration": ExportFTPConfigurationDTO,
	"activeExportFTPDeliveryFolder": ExportFTPConfigurationDeliveryFolderDTO,
	"library": SimpleLibraryDTO,
	"errors": Array<PgcnError>,
}

```

## BibliographicRecordDcDTO
```ts
{
	"title": Array<string>,
	"creator": Array<string>,
	"subject": Array<string>,
	"description": Array<string>,
	"publisher": Array<string>,
	"contributor": Array<string>,
	"date": Array<string>,
	"type": Array<string>,
	"format": Array<string>,
	"identifier": Array<string>,
	"source": Array<string>,
	"language": Array<string>,
	"relation": Array<string>,
	"coverage": Array<string>,
	"rights": Array<string>,
	"customProperties": Array<DocPropertyDTO>,
}

```

## DocPropertyDTO
```ts
{
	"identifier": string,
	"value": string,
	"rank": int32,
	"type": DocPropertyTypeDTO,
	"weightedRank": double,
	"errors": Array<PgcnError>,
}

```

## DocPropertyTypeDTO
```ts
{
	"identifier": string,
	"label": string,
	"superType": string,
	"rank": int32,
	"errors": Array<PgcnError>,
}

```

## AutomaticCheckResultDTO
```ts
{
	"identifier": string,
	"check": AutomaticCheckTypeDTO,
	"result": string,
	"message": string,
	"createdDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## AutomaticCheckTypeDTO
```ts
{
	"identifier": string,
	"label": string,
	"type": "WITH_MASTER" | "FILE_INTEGRITY" | "FACILE" | "FILE_RADICAL" | "FILE_SEQUENCE" | "FILE_FORMAT" | "FILE_TOTAL_NUMBER" | "FILE_TYPE_COMPR" | "FILE_TAUX_COMPR" | "FILE_RESOLUTION" | "FILE_DEFINITION" | "FILE_COLORSPACE" | "FILE_BIB_PREFIX" | "FILE_CASE_SENSITIVE" | "FILE_IMAGE_METADATA" | "METADATA_FILE" | "FILE_PDF_MULTI" | "GENER_PDF_OCR" | "GENER_PDF_WITHOUT_OCR",
	"order": int32,
	"active": boolean,
	"errors": Array<PgcnError>,
}

```

## CinesReportDTO
```ts
{
	"identifier": string,
	"status": string,
	"dateSent": DateTime,
	"dateAr": DateTime,
	"dateRejection": DateTime,
	"dateArchived": DateTime,
	"lastModifiedDate": DateTime,
	"rejectionMotive": string,
	"certificate": string,
	"message": string,
	"errors": Array<PgcnError>,
}

```

## DocUnitBibliographicRecordDTO
```ts
{
	"identifier": string,
	"title": string,
	"calames": string,
	"sigb": string,
	"sudoc": string,
	"properties": Array<DocPropertyDTO>,
	"errors": Array<PgcnError>,
}

```

## DocUnitDTO
```ts
{
	"version": int64,
	"identifier": string,
	"library": LibraryDTO,
	"project": SimpleProjectDTO,
	"lot": SimpleLotDTO,
	"digitalDocuments": UniqArray<SimpleDigitalDocumentDTO>,
	"physicalDocuments": UniqArray<SimplePhysicalDocumentDTO>,
	"records": Array<DocUnitBibliographicRecordDTO>,
	"pgcnId": string,
	"label": string,
	"type": string,
	"collectionIA": InternetArchiveCollectionDTO,
	"arkUrl": string,
	"archivable": boolean,
	"distributable": boolean,
	"rights": "TO_CHECK" | "FREE" | "RESTRICTED" | "RESTRICTED_WITH_AUTHORIZATION",
	"embargo": Date,
	"checkDelay": int32,
	"checkEndTime": Date,
	"planClassementPAC": CinesPACDTO,
	"cinesVersion": int32,
	"condReportType": "MONO_PAGE" | "MULTI_PAGE",
	"digitizingNotes": string,
	"cancelingComment": string,
	"state": string,
	"omekaConfiguration": OmekaConfigurationDTO,
	"omekaCollection": OmekaListDTO,
	"omekaItem": OmekaListDTO,
	"foundRefAuthor": boolean,
	"progressStatus": "NOT_AVAILABLE" | "REQUESTED" | "VALIDATED" | "REFUSED",
	"requestDate": Date,
	"answerDate": Date,
	"omekaExportStatus": string,
	"omekaExportDate": DateTime,
	"digLibExportStatus": string,
	"digLibExportDate": DateTime,
	"activeOcrLanguage": OcrLanguageDTO,
	"automaticCheckResults": Array<AutomaticCheckResultDTO>,
	"cinesReports": Array<CinesReportDTO>,
	"iaReports": Array<InternetArchiveReportDTO>,
	"digitalId": string,
	"parentIdentifier": string,
	"parentPgcnId": string,
	"parentLabel": string,
	"nbChildren": int32,
	"nbSiblings": int32,
	"imageHeight": int32,
	"imageWidth": int32,
	"eadExport": boolean,
	"total": int32,
	"createdBy": string,
	"createdDate": DateTime,
	"lastModifiedBy": string,
	"lastModifiedDate": DateTime,
	"workflow": DocUnitWorkflowDTO,
	"errors": Array<PgcnError>,
}

```

## DocUnitStateDTO
```ts
{
	"version": int64,
	"identifier": string,
	"key": string,
	"startDate": DateTime,
	"dueDate": DateTime,
	"endDate": DateTime,
	"status": "NOT_STARTED" | "PENDING" | "FINISHED" | "CANCELED" | "FAILED" | "TO_WAIT" | "WAITING" | "WAITING_NEXT_COMPLETED" | "TO_SKIP" | "SKIPPED",
	"user": string,
	"canStateBeProcessed": boolean,
	"errors": Array<PgcnError>,
}

```

## DocUnitWorkflowDTO
```ts
{
	"version": int64,
	"identifier": string,
	"startDate": DateTime,
	"endDate": DateTime,
	"states": Array<DocUnitStateDTO>,
	"errors": Array<PgcnError>,
}

```

## InternetArchiveReportDTO
```ts
{
	"identifier": string,
	"status": string,
	"dateSent": DateTime,
	"dateArchived": DateTime,
	"internetArchiveIdentifier": string,
	"message": string,
	"number": string,
	"total": string,
	"errors": Array<PgcnError>,
}

```

## SimpleDeliveredDigitalDocDTO
```ts
{
	"identifier": string,
	"digitalId": string,
	"deliveryDate": Date,
	"nbPages": int32,
	"totalLength": int64,
	"status": "CREATING" | "DELIVERING" | "TO_CHECK" | "CHECKING" | "VALIDATED" | "PRE_REJECTED" | "REJECTED" | "WAITING_FOR_REPAIR" | "DELIVERING_ERROR" | "PRE_VALIDATED" | "CANCELED",
	"delivery": SimpleDeliveryDTO,
	"createdDate": DateTime,
	"docUnitId": string,
	"progress": string,
}

```

## SimpleDeliveryDTO
```ts
{
	"identifier": string,
	"label": string,
	"status": "SAVED" | "DELIVERING" | "DELIVERED" | "TO_BE_CONTROLLED" | "VALIDATED" | "REJECTED" | "BACK_TO_PROVIDER" | "AUTOMATICALLY_REJECTED" | "DELIVERED_AGAIN" | "DELIVERING_ERROR" | "TREATED" | "CLOSED" | "CANCELED",
}

```

## SimpleDigitalDocumentDTO
```ts
{
	"identifier": string,
	"digitalId": string,
	"status": "CREATING" | "DELIVERING" | "TO_CHECK" | "CHECKING" | "VALIDATED" | "PRE_REJECTED" | "REJECTED" | "WAITING_FOR_REPAIR" | "DELIVERING_ERROR" | "PRE_VALIDATED" | "CANCELED",
	"totalDelivery": int32,
	"checkNotes": string,
	"automaticCheckResults": Array<AutomaticCheckResultDTO>,
	"docUnit": DocUnitDTO,
	"deliveries": Array<SimpleDeliveredDigitalDocDTO>,
	"errors": Array<PgcnError>,
}

```

## DocUnitUpdateErrorDTO
```ts
{
	"identifier": string,
	"label": string,
	"message": string,
}

```

## DocUnitDeletedReportDTO
```ts
{
	"identifier": string,
	"label": string,
	"errors": Array<PgcnError>,
}

```

## MinimalListDocUnitDTO
```ts
{
	"identifier": string,
	"label": string,
	"pgcnId": string,
	"errors": Array<PgcnError>,
}

```

## PageSimpleListDocUnitDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<SimpleListDocUnitDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## SimpleListDocUnitDTO
```ts
{
	"identifier": string,
	"label": string,
	"pgcnId": string,
	"library": SimpleLibraryDTO,
	"project": SimpleProjectDTO,
	"lot": SimpleLotDTO,
	"train": SimpleTrainDTO,
	"parentIdentifier": string,
	"parentLabel": string,
	"parentPgcnId": string,
	"hasRecord": boolean,
	"digitalDocumentStatus": string,
	"changeTrainAuthorized": boolean,
	"errors": Array<PgcnError>,
}

```

## DigitalDocumentDTO
```ts
{
	"version": int64,
	"identifier": string,
	"digitalId": string,
	"checkNotes": string,
	"nbPages": int32,
	"status": string,
	"docUnit": SimpleDocUnitDTO,
	"automaticCheckResults": Array<AutomaticCheckResultDTO>,
	"errors": Array<PgcnError>,
}

```

## ManualDeliveryDTO
```ts
{
	"identifier": string,
	"lot": SimpleLotDTO,
	"label": string,
	"description": string,
	"payment": string,
	"status": string,
	"method": string,
	"receptionDate": Date,
	"folderPath": string,
	"imgFormat": string,
	"digitizingNotes": string,
	"controlNotes": string,
	"errors": Array<PgcnError>,
}

```

## DeliveryDTO
```ts
{
	"identifier": string,
	"lot": SimpleLotForDeliveryDTO,
	"label": string,
	"documentCount": int32,
	"description": string,
	"payment": string,
	"status": string,
	"method": string,
	"receptionDate": Date,
	"depositDate": Date,
	"folderPath": string,
	"imgFormat": string,
	"digitizingNotes": string,
	"fileFormatOK": boolean,
	"sequentialNumbers": boolean,
	"numberOfFilesOK": boolean,
	"numberOfFilesMatching": boolean,
	"mirePresent": boolean,
	"mireOK": boolean,
	"tableOfContentsPresent": boolean,
	"tableOfContentsOK": boolean,
	"altoPresent": boolean,
	"controlNotes": string,
	"automaticCheckResults": Array<AutomaticCheckResultDTO>,
	"createdBy": string,
	"createdDate": DateTime,
	"lastModifiedBy": string,
	"lastModifiedDate": DateTime,
	"multiLotsDelId": string,
	"multiLotsDelLabel": string,
	"errors": Array<PgcnError>,
}

```

## MailboxConfiguration
```ts
{
	"identifier": string,
	"version": int64,
	"label": string,
	"library": Library,
	"username": string,
	"password": ,
	"host": string,
	"port": int32,
	"inbox": string,
	"properties": UniqArray<Property>,
	"active": boolean,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## Property
```ts
{
	"name": string,
	"value": string,
}

```

## DigitalLibraryConfiguration
```ts
{
	"identifier": string,
	"version": int64,
	"label": string,
	"library": Library,
	"active": boolean,
	"port": string,
	"address": string,
	"login": string,
	"password": ,
	"deliveryFolder": string,
	"mail": string,
	"sftp": boolean,
	"exportView": boolean,
	"exportPrint": boolean,
	"exportThumb": boolean,
	"exportPdf": boolean,
	"exportMets": boolean,
	"exportAipSip": boolean,
	"exportAlto": boolean,
	"exportMaster": boolean,
	"defaultValue": string,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## CinesLanguageCode
```ts
{
	"identifier": string,
	"version": int64,
	"label": string,
	"getlangDC": string,
	"active": boolean,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## PropertyConfigurationDTO
```ts
{
	"version": int64,
	"identifier": string,
	"required": boolean,
	"allowComment": boolean,
	"showOnCreation": boolean,
	"types": UniqArray<string>,
	"descPropertyId": string,
	"descPropertyLabel": string,
	"internalProperty": string,
	"library": LibraryDTO,
	"errors": Array<PgcnError>,
}

```

## ConditionReport
```ts
{
	"identifier": string,
	"version": int64,
	"details": UniqArray<ConditionReportDetail>,
	"docUnit": DocUnit,
	"libRespName": string,
	"libRespPhone": string,
	"libRespEmail": string,
	"leaderName": string,
	"leaderPhone": string,
	"leaderEmail": string,
	"providerName": string,
	"providerPhone": string,
	"providerEmail": string,
	"providerContactName": string,
	"providerContactPhone": string,
	"providerContactEmail": string,
	"attachments": UniqArray<ConditionReportAttachment>,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## ConditionReportAttachment
```ts
{
	"identifier": string,
	"version": int64,
	"report": ConditionReport,
	"originalFilename": string,
	"fileSize": int64,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## ConditionReportDetail
```ts
{
	"identifier": string,
	"version": int64,
	"createdBy": string,
	"report": ConditionReport,
	"type": "LIBRARY_LEAVING" | "PROVIDER_RECEPTION" | "DIGITALIZATION" | "LIBRARY_BACK" | "LIBRARY_RETURN" | "LIBRARY_NEW_DIGIT",
	"libWriterName": string,
	"libWriterFunction": string,
	"provWriterName": string,
	"provWriterFunction": string,
	"date": Date,
	"comment": string,
	"position": int32,
	"descriptions": UniqArray<Description>,
	"nbViewBinding": int32,
	"nbViewBody": int32,
	"nbViewAdditionnal": int32,
	"dim1": int32,
	"dim2": int32,
	"dim3": int32,
	"bindingDesc": string,
	"bodyDesc": string,
	"additionnalDesc": string,
	"insurance": double,
	"nbViewTotal": int32,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## Description
```ts
{
	"identifier": string,
	"version": int64,
	"property": DescriptionProperty,
	"value": DescriptionValue,
	"comment": string,
	"detail": ConditionReportDetail,
	"empty": boolean,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## DescriptionProperty
```ts
{
	"identifier": string,
	"version": int64,
	"label": string,
	"code": string,
	"type": "TYPE" | "DESCRIPTION" | "STATE" | "NUMBERING" | "BINDING" | "VIGILANCE",
	"allowComment": boolean,
	"configurations": UniqArray<PropertyConfiguration>,
	"order": int32,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## DescriptionValue
```ts
{
	"identifier": string,
	"version": int64,
	"label": string,
	"property": DescriptionProperty,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## PropertyConfiguration
```ts
{
	"identifier": string,
	"version": int64,
	"required": boolean,
	"allowComment": boolean,
	"showOnCreation": boolean,
	"types": UniqArray<"MONO_PAGE" | "MULTI_PAGE">,
	"library": Library,
	"descProperty": DescriptionProperty,
	"internalProperty": "BINDING_DESC" | "BODY_DESC" | "DIMENSION",
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## ConditionReportDTO
```ts
{
	"identifier": string,
	"libRespName": string,
	"libRespPhone": string,
	"libRespEmail": string,
	"leaderName": string,
	"leaderPhone": string,
	"leaderEmail": string,
	"providerName": string,
	"providerPhone": string,
	"providerEmail": string,
	"providerContactName": string,
	"providerContactPhone": string,
	"providerContactEmail": string,
}

```

## ConditionReportDetailDTO
```ts
{
	"identifier": string,
	"type": string,
	"libWriterName": string,
	"libWriterFunction": string,
	"provWriterName": string,
	"provWriterFunction": string,
	"date": string,
	"comment": string,
	"nbViewBinding": int32,
	"nbViewBody": int32,
	"nbViewAdditionnal": int32,
	"nbViewTotal": int32,
	"dim1": int32,
	"dim2": int32,
	"dim3": int32,
	"bindingDesc": string,
	"bodyDesc": string,
	"additionnalDesc": string,
	"insurance": string,
	"descriptions": Array<ConditionReportValueDTO>,
	"bindings": Array<ConditionReportValueDTO>,
	"body": Array<ConditionReportValueDTO>,
	"numberings": Array<ConditionReportValueDTO>,
	"vigilances": Array<ConditionReportValueDTO>,
	"states": Array<ConditionReportValueDTO>,
	"types": Array<ConditionReportValueDTO>,
}

```

## ConditionReportValueDTO
```ts
{
	"propertyId": string,
	"propertyCode": string,
	"propertyLabel": string,
	"propertyType": string,
	"propertyOrder": int32,
	"value": string,
	"comment": string,
}

```

## PageSearchResult
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<SearchResult>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## SearchResult
```ts
{
	"report": ConditionReportDTO,
	"detail": ConditionReportDetailDTO,
	"docUnit": SimpleListDocUnitDTO,
}

```

## ImportResult
```ts
{
	"reportId": string,
	"docUnitId": string,
	"pgcnId": string,
	"errors": Array<PgcnError>,
}

```

## AutomaticCheckRuleDTO
```ts
{
	"version": int64,
	"identifier": string,
	"automaticCheckType": AutomaticCheckTypeDTO,
	"active": boolean,
	"blocking": boolean,
	"readOnly": boolean,
	"errors": Array<PgcnError>,
}

```

## CheckConfigurationDTO
```ts
{
	"version": int64,
	"identifier": string,
	"label": string,
	"library": SimpleLibraryDTO,
	"minorErrorRate": double,
	"majorErrorRate": double,
	"definitionErrorRate": double,
	"sampleRate": double,
	"sampleMode": string,
	"separators": string,
	"automaticCheckRules": Array<AutomaticCheckRuleDTO>,
	"errors": Array<PgcnError>,
}

```

## CheckDTO
```ts
{
	"version": int64,
	"identifier": string,
	"errorLabel": string,
	"errorType": string,
	"page": SimpleDocPageDTO,
	"errors": Array<PgcnError>,
}

```

## SimpleDocPageDTO
```ts
{
	"identifier": string,
	"number": int32,
	"checkNotes": string,
	"errors": Array<PgcnError>,
}

```

## DocPageErrorsDTO
```ts
{
	"failedChecks": UniqArray<"UNREADABLE" | "BAD_NAME" | "BAD_HIERARCHY" | "MISSING_PAGE" | "TRUNCATED_INFORMATION" | "BAD_RESOLUTION" | "BAD_THRESHOLD" | "WRONG_FORMAT" | "FOREIGN_BODIES" | "BAD_METADATA" | "INCONSISTENT_METADATA" | "ANOTHER_MAJ" | "BLURRED_IMAGE" | "SLANT_IMAGE" | "HALO_ON_IMAGE" | "SHADOW_ON_IMAGE" | "GEOMETRICAL_ANOMALY" | "CHROMATIC_ANOMALY" | "WRONG_FRAMING" | "WRONG_ORDER" | "BAD_OCR" | "ANOTHER_MIN">,
	"checkNotes": string,
	"typeToc": string,
	"orderToc": string,
	"titleToc": string,
	"errors": Array<PgcnError>,
}

```

## DocErrorReport
```ts
{
	"nbMinorErrors": int32,
	"nbMajorErrors": int32,
	"minorErrorRateExceeded": boolean,
	"majorErrorRateExceeded": boolean,
}

```

## BibliographicRecordDTO
```ts
{
	"version": int64,
	"identifier": string,
	"title": string,
	"calames": string,
	"sigb": string,
	"sudoc": string,
	"docElectronique": string,
	"library": SimpleLibraryDTO,
	"docUnit": SimpleDocUnitDTO,
	"properties": Array<DocPropertyDTO>,
	"createdBy": string,
	"createdDate": DateTime,
	"lastModifiedBy": string,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## UserAccountDTO
```ts
{
	"*login": string with unhandled constraints,
	"*password": string with unhandled constraints,
	"firstName": string with unhandled constraints,
	"lastName": string with unhandled constraints,
	"email": string with unhandled constraints,
	"langKey": string with unhandled constraints,
	"roles": Array<string>,
}

```

## PersistentToken
```ts
{
	"series": string,
	"ipAddress": string with unhandled constraints,
	"userAgent": string,
	"user": User,
	"formattedTokenDate": DateTime,
}

```

## PageSimpleWorkflowModelDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<SimpleWorkflowModelDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## PageSimpleWorkflowGroupDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<SimpleWorkflowGroupDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## StateIsDoneDTO
```ts
{
	"version": int64,
	"done": boolean,
	"errors": Array<PgcnError>,
}

```

## BooleanValueDTO
```ts
{
	"value": boolean,
	"errors": Array<PgcnError>,
}

```

## PageSimpleViewsFormatConfigurationDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<SimpleViewsFormatConfigurationDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## PageSimpleUserDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<SimpleUserDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## PageSimpleTrainDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<SimpleTrainDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## StatisticsProviderTrainDTO
```ts
{
	"libraryIdentifier": string,
	"libraryName": string,
	"projectIdentifier": string,
	"projectName": string,
	"trainIdentifier": string,
	"trainLabel": string,
	"status": "CREATED" | "IN_PREPARATION" | "IN_DIGITIZATION" | "RECEIVING_PHYSICAL_DOCUMENTS" | "CANCELED" | "CLOSED",
	"sendingDate": Date,
	"returnDate": Date,
	"duration": int64,
	"nbDoc": int64,
	"insurance": double,
}

```

## PageStatisticsProgressDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<StatisticsProgressDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## StatisticsProgressDTO
```ts
{
	"libraryIdentifier": string,
	"libraryName": string,
	"projectIdentifier": string,
	"projectName": string,
	"projectStatus": "CREATED" | "ONGOING" | "PENDING" | "CANCELED" | "CLOSED",
	"lotIdentifier": string,
	"lotLabel": string,
	"nbLots": int64,
	"nbDocUnits": int64,
	"nbDigitalDocs": int64,
	"pctDigitalDocs": double,
	"nbDlvControlled": int64,
	"pctDlvControlled": double,
	"nbDlvValidated": int64,
	"pctDlvValidated": double,
	"nbDlvRejected": int64,
	"pctDlvRejected": double,
	"avgDocDlv": double,
	"nbDlv": int64,
	"nbWorkflowValidated": int64,
	"pctWorkflowValidated": double,
	"nbDocDistributable": int64,
	"pctDocDistributable": double,
	"nbDocDistributed": int64,
	"pctDocDistributed": double,
	"nbDocArchivable": int64,
	"pctDocArchivable": double,
	"nbDocArchived": int64,
	"pctDocArchived": double,
}

```

## PageStatisticsProjectDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<StatisticsProjectDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## StatisticsProjectDTO
```ts
{
	"identifier": string,
	"library": SimpleLibraryDTO,
	"name": string,
	"description": string,
	"active": boolean,
	"startDate": Date,
	"forecastEndDate": Date,
	"realEndDate": Date,
	"status": string,
	"nbDocUnits": int32,
	"provider": SimpleUserDTO,
	"otherProviders": Array<SimpleUserDTO>,
	"errors": Array<PgcnError>,
}

```

## WorkflowUserActivityDTO
```ts
{
	"libraryIdentifier": string,
	"libraryName": string,
	"userIdentifier": string,
	"userLogin": string,
	"userFullName": string,
	"roleIdentifier": string,
	"roleLabel": string,
	"projectIdentifier": string,
	"projectName": string,
	"lotIdentifier": string,
	"lotLabel": string,
	"docIdentifier": string,
	"docPgcnId": string,
	"state": "INITIALISATION_DOCUMENT" | "GENERATION_BORDEREAU" | "VALIDATION_CONSTAT_ETAT" | "VALIDATION_BORDEREAU_CONSTAT_ETAT" | "CONSTAT_ETAT_AVANT_NUMERISATION" | "NUMERISATION_EN_ATTENTE" | "CONSTAT_ETAT_APRES_NUMERISATION" | "LIVRAISON_DOCUMENT_EN_COURS" | "RELIVRAISON_DOCUMENT_EN_COURS" | "CONTROLES_AUTOMATIQUES_EN_COURS" | "CONTROLE_QUALITE_EN_COURS" | "PREREJET_DOCUMENT" | "PREVALIDATION_DOCUMENT" | "VALIDATION_DOCUMENT" | "VALIDATION_NOTICES" | "RAPPORT_CONTROLES" | "ARCHIVAGE_DOCUMENT" | "DIFFUSION_DOCUMENT" | "DIFFUSION_DOCUMENT_OMEKA" | "DIFFUSION_DOCUMENT_DIGITAL_LIBRARY" | "DIFFUSION_DOCUMENT_LOCALE" | "CLOTURE_DOCUMENT",
	"startDate": DateTime,
	"endDate": DateTime,
	"duration": int64,
}

```

## WorkflowUserProgressDTO
```ts
{
	"libraryIdentifier": string,
	"libraryName": string,
	"userIdentifier": string,
	"userLogin": string,
	"userFullName": string,
	"nbDocUnit": int64,
	"nbValidatedDocUnit": int64,
	"nbRejectedDocUnit": int64,
	"avgTotalPages": int32,
	"avgDuration": int64,
	"nbPreValidatedDocUnit": int64,
	"nbPreRejectedDocUnit": int64,
}

```

## WorkflowStateProgressDTO
```ts
{
	"libraryIdentifier": string,
	"libraryName": string,
	"workflowModelIdentifier": string,
	"workflowModelName": string,
	"key": "INITIALISATION_DOCUMENT" | "GENERATION_BORDEREAU" | "VALIDATION_CONSTAT_ETAT" | "VALIDATION_BORDEREAU_CONSTAT_ETAT" | "CONSTAT_ETAT_AVANT_NUMERISATION" | "NUMERISATION_EN_ATTENTE" | "CONSTAT_ETAT_APRES_NUMERISATION" | "LIVRAISON_DOCUMENT_EN_COURS" | "RELIVRAISON_DOCUMENT_EN_COURS" | "CONTROLES_AUTOMATIQUES_EN_COURS" | "CONTROLE_QUALITE_EN_COURS" | "PREREJET_DOCUMENT" | "PREVALIDATION_DOCUMENT" | "VALIDATION_DOCUMENT" | "VALIDATION_NOTICES" | "RAPPORT_CONTROLES" | "ARCHIVAGE_DOCUMENT" | "DIFFUSION_DOCUMENT" | "DIFFUSION_DOCUMENT_OMEKA" | "DIFFUSION_DOCUMENT_DIGITAL_LIBRARY" | "DIFFUSION_DOCUMENT_LOCALE" | "CLOTURE_DOCUMENT",
	"avgDuration": int64,
}

```

## WorkflowProfileActivityDTO
```ts
{
	"libraryIdentifier": string,
	"libraryName": string,
	"roleIdentifier": string,
	"roleLabel": string,
	"projectIdentifier": string,
	"projectName": string,
	"lotIdentifier": string,
	"lotLabel": string,
	"docIdentifier": string,
	"docPgcnId": string,
	"state": "INITIALISATION_DOCUMENT" | "GENERATION_BORDEREAU" | "VALIDATION_CONSTAT_ETAT" | "VALIDATION_BORDEREAU_CONSTAT_ETAT" | "CONSTAT_ETAT_AVANT_NUMERISATION" | "NUMERISATION_EN_ATTENTE" | "CONSTAT_ETAT_APRES_NUMERISATION" | "LIVRAISON_DOCUMENT_EN_COURS" | "RELIVRAISON_DOCUMENT_EN_COURS" | "CONTROLES_AUTOMATIQUES_EN_COURS" | "CONTROLE_QUALITE_EN_COURS" | "PREREJET_DOCUMENT" | "PREVALIDATION_DOCUMENT" | "VALIDATION_DOCUMENT" | "VALIDATION_NOTICES" | "RAPPORT_CONTROLES" | "ARCHIVAGE_DOCUMENT" | "DIFFUSION_DOCUMENT" | "DIFFUSION_DOCUMENT_OMEKA" | "DIFFUSION_DOCUMENT_DIGITAL_LIBRARY" | "DIFFUSION_DOCUMENT_LOCALE" | "CLOTURE_DOCUMENT",
	"startDate": DateTime,
	"endDate": DateTime,
	"duration": int64,
}

```

## WorkflowDocUnitInfoDTO
```ts
{
	"record": string,
	"lot": string,
	"radical": string,
}

```

## WorkflowDocUnitProgressDTOPending
```ts
{
	"projectIdentifier": string,
	"projectName": string,
	"docIdentifier": string,
	"docPgcnId": string,
	"docLabel": string,
	"docStatus": string,
	"lotIdentifier": string,
	"lotLabel": string,
	"totalPage": int32,
	"workflowStateKeys": Array<string>,
	"infos": WorkflowDocUnitInfoDTO,
}

```

## PageWorkflowDocUnitProgressDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<WorkflowDocUnitProgressDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## WorkflowDocUnitProgressDTO
```ts
{
	"libraryIdentifier": string,
	"libraryName": string,
	"projectIdentifier": string,
	"projectName": string,
	"lotIdentifier": string,
	"lotLabel": string,
	"trainIdentifier": string,
	"trainLabel": string,
	"docIdentifier": string,
	"docPgcnId": string,
	"docLabel": string,
	"docStatus": string,
	"totalPage": int32,
	"workflow": Array<WorkflowState>,
	"infos": WorkflowDocUnitInfoDTO,
}

```

## WorkflowState
```ts
{
	"key": "INITIALISATION_DOCUMENT" | "GENERATION_BORDEREAU" | "VALIDATION_CONSTAT_ETAT" | "VALIDATION_BORDEREAU_CONSTAT_ETAT" | "CONSTAT_ETAT_AVANT_NUMERISATION" | "NUMERISATION_EN_ATTENTE" | "CONSTAT_ETAT_APRES_NUMERISATION" | "LIVRAISON_DOCUMENT_EN_COURS" | "RELIVRAISON_DOCUMENT_EN_COURS" | "CONTROLES_AUTOMATIQUES_EN_COURS" | "CONTROLE_QUALITE_EN_COURS" | "PREREJET_DOCUMENT" | "PREVALIDATION_DOCUMENT" | "VALIDATION_DOCUMENT" | "VALIDATION_NOTICES" | "RAPPORT_CONTROLES" | "ARCHIVAGE_DOCUMENT" | "DIFFUSION_DOCUMENT" | "DIFFUSION_DOCUMENT_OMEKA" | "DIFFUSION_DOCUMENT_DIGITAL_LIBRARY" | "DIFFUSION_DOCUMENT_LOCALE" | "CLOTURE_DOCUMENT",
	"status": "NOT_STARTED" | "PENDING" | "FINISHED" | "CANCELED" | "FAILED" | "TO_WAIT" | "WAITING" | "WAITING_NEXT_COMPLETED" | "TO_SKIP" | "SKIPPED",
	"startDate": DateTime,
	"endDate": DateTime,
}

```

## PageWorkflowDeliveryProgressDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<WorkflowDeliveryProgressDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## WorkflowDeliveryProgressDTO
```ts
{
	"libraryIdentifier": string,
	"libraryName": string,
	"projectIdentifier": string,
	"projectName": string,
	"lotIdentifier": string,
	"lotLabel": string,
	"deliveryIdentifier": string,
	"deliveryLabel": string,
	"docUnitNumber": string,
	"workflow": Array<WorkflowState>,
}

```

## StatisticsProcessedDocUnitDTO
```ts
{
	"identifier": string,
	"pgcnId": string,
	"status": string,
	"message": string,
	"date": DateTime,
}

```

## PageString
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<string>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## PageStatisticsDocRejectedDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<StatisticsDocRejectedDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## StatisticsDocRejectedDTO
```ts
{
	"libraryIdentifier": string,
	"libraryName": string,
	"projectIdentifier": string,
	"projectName": string,
	"lotIdentifier": string,
	"lotLabel": string,
	"importDate": Date,
	"providerIdentifier": string,
	"providerLogin": string,
	"providerFullName": string,
	"nbDocRejected": int64,
	"nbDocTotal": int64,
	"pctDocRejected": double,
}

```

## PageStatisticsDocPublishedDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<StatisticsDocPublishedDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## StatisticsDocPublishedDTO
```ts
{
	"libraryIdentifier": string,
	"libraryName": string,
	"projectIdentifier": string,
	"projectName": string,
	"lotIdentifier": string,
	"lotLabel": string,
	"docUnitIdentifier": string,
	"docUnitPgcnId": string,
	"docUnitLabel": string,
	"docUnitType": string,
	"parentIdentifier": string,
	"parentPgcnId": string,
	"parentLabel": string,
	"workflowState": "INITIALISATION_DOCUMENT" | "GENERATION_BORDEREAU" | "VALIDATION_CONSTAT_ETAT" | "VALIDATION_BORDEREAU_CONSTAT_ETAT" | "CONSTAT_ETAT_AVANT_NUMERISATION" | "NUMERISATION_EN_ATTENTE" | "CONSTAT_ETAT_APRES_NUMERISATION" | "LIVRAISON_DOCUMENT_EN_COURS" | "RELIVRAISON_DOCUMENT_EN_COURS" | "CONTROLES_AUTOMATIQUES_EN_COURS" | "CONTROLE_QUALITE_EN_COURS" | "PREREJET_DOCUMENT" | "PREVALIDATION_DOCUMENT" | "VALIDATION_DOCUMENT" | "VALIDATION_NOTICES" | "RAPPORT_CONTROLES" | "ARCHIVAGE_DOCUMENT" | "DIFFUSION_DOCUMENT" | "DIFFUSION_DOCUMENT_OMEKA" | "DIFFUSION_DOCUMENT_DIGITAL_LIBRARY" | "DIFFUSION_DOCUMENT_LOCALE" | "CLOTURE_DOCUMENT",
	"linkIA": string,
	"urlArk": string,
	"collection": string,
	"nbPages": int32,
	"publicationDate": Date,
}

```

## PageStatisticsDocUnitCountDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<StatisticsDocUnitCountDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## StatisticsDocUnitCountDTO
```ts
{
	"identifier": string,
	"pgcnId": string,
	"ia": boolean,
	"cines": boolean,
	"totalPage": int32,
	"totalLength": int64,
}

```

## StatisticsDocUnitStatusRatioDTO
```ts
{
	"projectIdentifier": string,
	"projectName": string,
	"lotIdentifier": string,
	"lotLabel": string,
	"state": "INITIALISATION_DOCUMENT" | "GENERATION_BORDEREAU" | "VALIDATION_CONSTAT_ETAT" | "VALIDATION_BORDEREAU_CONSTAT_ETAT" | "CONSTAT_ETAT_AVANT_NUMERISATION" | "NUMERISATION_EN_ATTENTE" | "CONSTAT_ETAT_APRES_NUMERISATION" | "LIVRAISON_DOCUMENT_EN_COURS" | "RELIVRAISON_DOCUMENT_EN_COURS" | "CONTROLES_AUTOMATIQUES_EN_COURS" | "CONTROLE_QUALITE_EN_COURS" | "PREREJET_DOCUMENT" | "PREVALIDATION_DOCUMENT" | "VALIDATION_DOCUMENT" | "VALIDATION_NOTICES" | "RAPPORT_CONTROLES" | "ARCHIVAGE_DOCUMENT" | "DIFFUSION_DOCUMENT" | "DIFFUSION_DOCUMENT_OMEKA" | "DIFFUSION_DOCUMENT_DIGITAL_LIBRARY" | "DIFFUSION_DOCUMENT_LOCALE" | "CLOTURE_DOCUMENT",
	"nbDocOnState": int64,
	"nbDoc": int64,
}

```

## StatisticsDocUnitAverageDTO
```ts
{
	"projectIdentifier": string,
	"projectName": string,
	"lotIdentifier": string,
	"lotLabel": string,
	"deliveryIdentifier": string,
	"deliveryLabel": string,
	"nbDocs": int32,
	"avgTotalPages": int32,
	"lengthDocs": int64,
	"rejectRatio": double,
	"avgDurControl": int64,
	"avgDurDelivery": int64,
	"avgDurWorkflow": int64,
}

```

## StatisticsProviderDeliveryDTO
```ts
{
	"libraryIdentifier": string,
	"libraryName": string,
	"providerIdentifier": string,
	"providerLogin": string,
	"providerFullName": string,
	"nbLot": int64,
	"nbDelivery": int64,
	"delayFirstDelivery": int64,
	"delayNextDelivery": int64,
}

```

## PageObject
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<any>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## DocPageDTO
```ts
{
	"identifier": string,
	"number": int32,
	"checkNotes": string,
	"digitalDocument": SimpleDigitalDocumentDTO,
	"errors": Array<PgcnError>,
}

```

## SampleDTO
```ts
{
	"identifier": string,
	"samplingMode": string,
	"pages": UniqArray<DocPageDTO>,
	"documents": UniqArray<SimpleDigitalDocumentDTO>,
	"delivery": DeliveryDTO,
	"errors": Array<PgcnError>,
}

```

## AuditProjectRevisionDTO
```ts
{
	"rev": int32,
	"timestamp": int64,
	"username": string,
	"identifier": string,
	"name": string,
	"status": "CREATED" | "ONGOING" | "PENDING" | "CANCELED" | "CLOSED",
}

```

## PageSimpleProjectDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<SimpleProjectDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## ListPhysicalDocumentDTO
```ts
{
	"identifier": string,
	"name": string,
	"digitalId": string,
	"totalPage": int32,
	"status": "CREATED" | "SELECTED" | "GATHERED" | "STATE_CHECK_REALISED" | "IN_DIGITIZATION" | "TO_CHECK" | "TO_SHELVE" | "REINTEGRATED",
	"docUnit": SimpleDocUnitDTO,
	"reportDetailDim": string,
	"reportDetailInsurance": string,
	"reportDetailOperture": string,
	"errors": Array<PgcnError>,
}

```

## PageSimpleOcrLangConfigDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<SimpleOcrLangConfigDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## DescriptionType
```ts
{
	"any": any,
}

```

## IdentifyType
```ts
{
	"*repositoryName": string,
	"*baseURL": string,
	"*protocolVersion": string,
	"*adminEmail": Array<string>,
	"*earliestDatestamp": string,
	"*deletedRecord": "NO" | "PERSISTENT" | "TRANSIENT",
	"*granularity": "YYYY_MM_DD" | "YYYY_MM_DD_THH_MM_SS_Z",
	"compression": Array<string>,
	"description": Array<DescriptionType>,
}

```

## PageMultiLotsDeliveryDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<MultiLotsDeliveryDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## PreDeliveryDTO
```ts
{
	"documents": UniqArray<PreDeliveryDocumentDTO>,
	"lockedDigitalDocuments": UniqArray<DigitalDocumentDTO>,
	"undeliveredDocuments": UniqArray<PhysicalDocumentDTO>,
	"errors": Array<PgcnError>,
}

```

## MappingDTO
```ts
{
	"identifier": string,
	"joinExpression": string,
	"label": string,
	"library": SimpleLibraryDTO,
	"type": string,
}

```

## AuditLotRevisionDTO
```ts
{
	"rev": int32,
	"timestamp": int64,
	"username": string,
	"identifier": string,
	"label": string,
	"status": "CREATED" | "ONGOING" | "PENDING" | "CANCELED" | "CLOSED",
}

```

## LotListDTO
```ts
{
	"identifier": string,
	"label": string,
	"code": string,
	"type": string,
	"description": string,
	"active": boolean,
	"status": string,
	"condNotes": string,
	"numNotes": string,
	"requiredFormat": string,
	"deliveryDateForseen": DateTime,
	"requiredTypeCompression": string,
	"requiredTauxCompression": int32,
	"requiredResolution": string,
	"requiredColorspace": string,
	"projectIdentifier": string,
}

```

## AbstractLibraryParameterValueDTO
```ts
{
	"identifier": string,
	"errors": Array<PgcnError>,
}

```

## LibraryParameterDTO
```ts
{
	"identifier": string,
	"type": string,
	"library": SimpleLibraryDTO,
	"values": Array<AbstractLibraryParameterValueDTO>,
	"errors": Array<PgcnError>,
}

```

## PageSimpleLibraryDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<SimpleLibraryDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## PageImportReport
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<ImportReport>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## PageImportedDocUnit
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<ImportedDocUnit>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## HelpPageDto
```ts
{
	"identifier": string,
	"title": string,
	"rank": int32,
	"module": string,
	"type": "PGCN" | "CUSTOM",
	"parent": string,
}

```

## ModuleDto
```ts
{
	"name": string,
	"type": "PGCN" | "CUSTOM",
	"pages": Array<HelpPageDto>,
}

```

## PageSimpleFTPConfigurationDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<SimpleFTPConfigurationDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## PageSimpleExportFTPConfDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<SimpleExportFTPConfDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## SimpleExportFTPConfDTO
```ts
{
	"identifier": string,
	"label": string,
	"errors": Array<PgcnError>,
}

```

## AbstractDTO
```ts
{
	"errors": Array<PgcnError>,
}

```

## PageSimpleDocUnitDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<SimpleDocUnitDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## PageSummaryDocUnitWithLotDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<SummaryDocUnitWithLotDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## SummaryDocUnitWithLotDTO
```ts
{
	"identifier": string,
	"library": LibraryDTO,
	"lot": SimpleLotDTO,
	"pgcnId": string,
	"label": string,
	"type": string,
	"archivable": boolean,
	"distributable": boolean,
	"errors": Array<PgcnError>,
}

```

## SummaryDocUnitDTO
```ts
{
	"identifier": string,
	"pgcnId": string,
	"label": string,
	"type": string,
	"archivable": boolean,
	"distributable": boolean,
	"errors": Array<PgcnError>,
}

```

## LightCondReportDetailDTO
```ts
{
	"identifier": string,
	"nbViewTotal": int32,
	"dim1": int32,
	"dim2": int32,
	"dim3": int32,
	"insurance": string,
}

```

## LightDeliveredDigitalDocDTO
```ts
{
	"identifier": string,
	"digitalId": string,
	"deliveryId": string,
	"deliveryDate": DateTime,
	"deliveryStatus": "SAVED" | "DELIVERING" | "DELIVERED" | "TO_BE_CONTROLLED" | "VALIDATED" | "REJECTED" | "BACK_TO_PROVIDER" | "AUTOMATICALLY_REJECTED" | "DELIVERED_AGAIN" | "DELIVERING_ERROR" | "TREATED" | "CLOSED" | "CANCELED",
}

```

## PageSimpleListDigitalDocumentDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<SimpleListDigitalDocumentDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## SimpleListDigitalDocumentDTO
```ts
{
	"identifier": string,
	"digitalId": string,
	"pgcnId": string,
	"label": string,
	"docUnit": SimpleDocUnitDTO,
	"project": SimpleProjectDTO,
	"lot": SimpleLotDTO,
	"status": "CREATING" | "DELIVERING" | "TO_CHECK" | "CHECKING" | "VALIDATED" | "PRE_REJECTED" | "REJECTED" | "WAITING_FOR_REPAIR" | "DELIVERING_ERROR" | "PRE_VALIDATED" | "CANCELED",
	"totalDelivery": int32,
	"deliveryDate": Date,
	"pageNumber": int32,
	"deliveries": Array<LightDeliveredDigitalDocDTO>,
	"reportDetail": LightCondReportDetailDTO,
	"reducedLabel": string,
	"errors": Array<PgcnError>,
}

```

## AuditDeliveryRevisionDTO
```ts
{
	"rev": int32,
	"timestamp": int64,
	"username": string,
	"identifier": string,
	"label": string,
	"status": "SAVED" | "DELIVERING" | "DELIVERED" | "TO_BE_CONTROLLED" | "VALIDATED" | "REJECTED" | "BACK_TO_PROVIDER" | "AUTOMATICALLY_REJECTED" | "DELIVERED_AGAIN" | "DELIVERING_ERROR" | "TREATED" | "CLOSED" | "CANCELED",
	"lotIdentifier": string,
	"lotLabel": string,
}

```

## PageSimpleDeliveryDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<SimpleDeliveryDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## SimpleDeliveryForViewerDTO
```ts
{
	"identifier": string,
	"label": string,
	"digitizingNotes": string,
	"lot": SimpleLotDTO,
}

```

## CSVMappingDTO
```ts
{
	"identifier": string,
	"joinExpression": string,
	"label": string,
	"library": SimpleLibraryDTO,
}

```

## SftpConfigurationDTO
```ts
{
	"identifier": string,
	"label": string,
	"username": string,
	"host": string,
	"port": int32,
	"targetDir": string,
	"library": SimpleLibraryDTO,
	"pacs": Array<CinesPACDTO>,
	"active": boolean,
}

```

## PageSftpConfigurationDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<SftpConfigurationDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## PageOmekaConfigurationDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<OmekaConfigurationDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## MailboxConfigurationDTO
```ts
{
	"identifier": string,
	"label": string,
	"username": string,
	"host": string,
	"port": int32,
	"inbox": string,
	"library": SimpleLibraryDTO,
	"properties": UniqArray<Property>,
	"active": boolean,
}

```

## InternetArchiveConfigurationDTO
```ts
{
	"identifier": string,
	"label": string,
	"accesKey": string,
	"library": SimpleLibraryDTO,
	"collections": Array<InternetArchiveCollectionDTO>,
	"active": boolean,
}

```

## PageInternetArchiveConfigurationDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<InternetArchiveConfigurationDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## DigitalLibraryConfigurationDTO
```ts
{
	"identifier": string,
	"label": string,
	"library": Library,
	"active": boolean,
}

```

## PageDigitalLibraryConfigurationDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<DigitalLibraryConfigurationDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## PageSimpleCheckConfigurationDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<SimpleCheckConfigurationDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## PageSimpleBibliographicRecordDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<SimpleBibliographicRecordDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## SimpleBibliographicRecordDTO
```ts
{
	"identifier": string,
	"title": string,
	"docUnit": SimpleDocUnitDTO,
}

```

## PageSimpleListBibliographicRecordDTO
```ts
{
	"totalElements": int64,
	"totalPages": int32,
	"pageable": PageableObject,
	"first": boolean,
	"size": int32,
	"content": Array<SimpleListBibliographicRecordDTO>,
	"number": int32,
	"sort": Array<SortObject>,
	"numberOfElements": int32,
	"last": boolean,
	"empty": boolean,
}

```

## SimpleListBibliographicRecordDTO
```ts
{
	"identifier": string,
	"title": string,
	"docUnit": SimpleDocUnitDTO,
	"project": SimpleProjectDTO,
	"lot": SimpleLotDTO,
	"train": SimpleTrainDTO,
	"errors": Array<PgcnError>,
}

```

## AuthorizationDTO
```ts
{
	"identifier": string,
	"code": string,
	"label": string,
	"description": string,
	"module": string,
	"requirements": Array<string>,
	"dependencies": Array<string>,
}

```

## AuditTrainRevisionDTO
```ts
{
	"rev": int32,
	"timestamp": int64,
	"username": string,
	"identifier": string,
	"label": string,
	"status": "CREATED" | "IN_PREPARATION" | "IN_DIGITIZATION" | "RECEIVING_PHYSICAL_DOCUMENTS" | "CANCELED" | "CLOSED",
}

```

## AuditRevision
```ts
{
	"id": int32,
	"timestamp": int64,
	"username": string,
	"revisionDate": DateTime,
}

```

## AuditDocUnitRevisionDTO
```ts
{
	"rev": int32,
	"timestamp": int64,
	"username": string,
	"identifier": string,
	"lotIdentifier": string,
	"lotLabel": string,
}

```

## SimpleUserAccountDTO
```ts
{
	"identifier": string,
	"surname": string,
	"firstname": string,
	"login": string,
	"dashboard": string,
	"library": string,
	"category": string,
	"roles": Array<string>,
}

```

## AbstractLibraryParameterValue
```ts
{
	"identifier": string,
	"version": int64,
	"parameter": LibraryParameter,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## LibraryParameter
```ts
{
	"identifier": string,
	"version": int64,
	"type": "CINES_EXPORT",
	"library": Library,
	"values": UniqArray<LibraryParameterValueCines>,
	"createdDate": DateTime,
	"lastModifiedDate": DateTime,
	"errors": Array<PgcnError>,
}

```

## LibraryParameterValueCines
```ts
AbstractLibraryParameterValue
& {
		"type": "TITLE_DEFAULT_VALUE" | "CREATOR_DEFAULT_VALUE" | "SUBJECT_DEFAULT_VALUE" | "PUBLISHER_DEFAULT_VALUE" | "DESCRIPTION_DEFAULT_VALUE" | "TYPE_DEFAULT_VALUE" | "FORMAT_DEFAULT_VALUE" | "LANGUAGE_DEFAULT_VALUE" | "RIGHTS_DEFAULT_VALUE",
		"value": string,
}

```

