> This documentation page is temporary. When the api will be compliant the the oas v3.1 specification this page will be removed.
# Api End Points
* [/audit/delivery](#auditdelivery)
* [/audit/docunit/\{id\}](#auditdocunitid)
* [/audit/lot](#auditlot)
* [/audit/mapping/\{id\}](#auditmappingid)
* [/audit/project](#auditproject)
* [/audit/train](#audittrain)
* [/authorization](#authorization)
* [/authorization/\{identifier\}](#authorizationidentifier)
* [/bibliographicrecord](#bibliographicrecord)
* [/bibliographicrecord/\{id\}](#bibliographicrecordid)
* [/check](#check)
* [/check/\{id\}](#checkid)
* [/check/auto](#checkauto)
* [/checkconfiguration](#checkconfiguration)
* [/checkconfiguration/\{id\}](#checkconfigurationid)
* [/check/csv/\{id\}](#checkcsvid)
* [/check/lot_csv/\{id\}](#checklot_csvid)
* [/check/lot_pdf/\{id\}](#checklot_pdfid)
* [/check/pdf/\{id\}](#checkpdfid)
* [/checkslip_configuration/\{id\}](#checkslip_configurationid)
* [/condreport](#condreport)
* [/condreport/\{identifier\}](#condreportidentifier)
* [/condreport_attachment](#condreport_attachment)
* [/condreport_attachment/\{identifier\}](#condreport_attachmentidentifier)
* [/condreport_desc_prop](#condreport_desc_prop)
* [/condreport_desc_prop/\{identifier\}](#condreport_desc_propidentifier)
* [/condreport_desc_value](#condreport_desc_value)
* [/condreport_desc_value/\{identifier\}](#condreport_desc_valueidentifier)
* [/condreport_detail](#condreport_detail)
* [/condreport_detail/\{identifier\}](#condreport_detailidentifier)
* [/condreport_prop_conf](#condreport_prop_conf)
* [/condreport_prop_conf/\{identifier\}](#condreport_prop_confidentifier)
* [/condreport/csv](#condreportcsv)
* [/condreport/pdf](#condreportpdf)
* [/condreportslip_configuration/\{id\}](#condreportslip_configurationid)
* [/conf_digital_library](#conf_digital_library)
* [/conf_digital_library/\{id\}](#conf_digital_libraryid)
* [/conf_internet_archive](#conf_internet_archive)
* [/conf_internet_archive/\{id\}](#conf_internet_archiveid)
* [/conf_mail](#conf_mail)
* [/conf_mail/\{id\}](#conf_mailid)
* [/conf_omeka](#conf_omeka)
* [/conf_omeka/\{id\}](#conf_omekaid)
* [/conf_sftp](#conf_sftp)
* [/conf_sftp/\{id\}](#conf_sftpid)
* [/conf/cineslangcode](#confcineslangcode)
* [/csvmapping](#csvmapping)
* [/csvmapping/\{id\}](#csvmappingid)
* [/delivery](#delivery)
* [/delivery/\{id\}](#deliveryid)
* [/delivery_configuration/\{id\}](#delivery_configurationid)
* [/delivery/csv/\{id\}](#deliverycsvid)
* [/delivery/lot_csv/\{id\}](#deliverylot_csvid)
* [/delivery/lot_pdf/\{id\}](#deliverylot_pdfid)
* [/delivery/pdf/\{id\}](#deliverypdfid)
* [/digitaldocument/\{identifier\}](#digitaldocumentidentifier)
* [/digitaldocument](#digitaldocument)
* [/docpropertytype](#docpropertytype)
* [/docpropertytype/\{id\}](#docpropertytypeid)
* [/docunit](#docunit)
* [/docunit/\{identifier\}](#docunitidentifier)
* [/docunit/initHistory](#docunitinitHistory)
* [/downloadlogsfile](#downloadlogsfile)
* [/export/cines/\{identifier\}](#exportcinesidentifier)
* [/export/cines](#exportcines)
* [/export/cines/regenerateMets](#exportcinesregenerateMets)
* [/export/csv](#exportcsv)
* [/export/digitalLibrary](#exportdigitalLibrary)
* [/export/ead](#exportead)
* [/exportftpconfiguration](#exportftpconfiguration)
* [/exportftpconfiguration/\{id\}](#exportftpconfigurationid)
* [/export/omeka](#exportomeka)
* [/export/rdfxml](#exportrdfxml)
* [/filecleaning/deleteorphans](#filecleaningdeleteorphans)
* [/filesgestionconfig/\{idLibrary\}](#filesgestionconfigidLibrary)
* [/filesgestionconfig](#filesgestionconfig)
* [/ftpconfiguration](#ftpconfiguration)
* [/ftpconfiguration/\{id\}](#ftpconfigurationid)
* [/help](#help)
* [/help/\{id\}](#helpid)
* [/imagemetadata](#imagemetadata)
* [/imagemetadata/\{id\}](#imagemetadataid)
* [/impdocunit](#impdocunit)
* [/impdocunit/\{id\}](#impdocunitid)
* [/import](#import)
* [/importreport](#importreport)
* [/importreport/\{id\}](#importreportid)
* [/internet_archive/\{id\}](#internet_archiveid)
* [/internet_archive](#internet_archive)
* [/library](#library)
* [/library/\{id\}](#libraryid)
* [/libraryparameter](#libraryparameter)
* [/libraryparameter/\{id\}](#libraryparameterid)
* [/lot/\{id\}](#lotid)
* [/lot](#lot)
* [/lot/csv/\{id\}](#lotcsvid)
* [/lot/pdf/\{id\}](#lotpdfid)
* [/mapping](#mapping)
* [/mapping/\{id\}](#mappingid)
* [/multidelivery/\{id\}](#multideliveryid)
* [/multidelivery](#multidelivery)
* [/numahop](#numahop)
* [/oaipmh](#oaipmh)
* [/ocrlangconfiguration](#ocrlangconfiguration)
* [/ocrlangconfiguration/\{id\}](#ocrlangconfigurationid)
* [/ocrlanguages](#ocrlanguages)
* [/physicaldocument/\{identifier\}](#physicaldocumentidentifier)
* [/physicaldocument](#physicaldocument)
* [/project](#project)
* [/project/\{id\}](#projectid)
* [/role](#role)
* [/role/\{identifier\}](#roleidentifier)
* [/sample/\{id\}](#sampleid)
* [/search](#search)
* [/statistics](#statistics)
* [/statistics/csv](#statisticscsv)
* [/statistics/delivery](#statisticsdelivery)
* [/statistics/delivery/csv](#statisticsdeliverycsv)
* [/statistics/docunit](#statisticsdocunit)
* [/statistics/docunit/csv](#statisticsdocunitcsv)
* [/statistics/workflow](#statisticsworkflow)
* [/statistics/workflow/csv](#statisticsworkflowcsv)
* [/template](#template)
* [/template/\{identifier\}](#templateidentifier)
* [/train](#train)
* [/train/\{id\}](#trainid)
* [/train/csv/\{id\}](#traincsvid)
* [/train/pdf/\{id\}](#trainpdfid)
* [/user/\{id\}](#userid)
* [/user](#user)
* [/user/dashboard](#userdashboard)
* [/viewer/document/\{identifier\}/\{pageNumber\}/\{args1\}/\{args2\}/\{test\}/default.jpg](#viewerdocumentidentifierpageNumberargs1args2testdefault.jpg)
* [/viewer/document/\{identifier\}/\{pageNumber\}/full/\{dim1\}/\{dim2\}/default.jpg](#viewerdocumentidentifierpageNumberfulldim1dim2default.jpg)
* [/viewer/document/\{identifier\}/\{pageNumber\}/info.json](#viewerdocumentidentifierpageNumberinfo.json)
* [/viewer/document/\{identifier\}/manifest](#viewerdocumentidentifiermanifest)
* [/viewer/document/\{identifier\}/master/\{pageNumber\}](#viewerdocumentidentifiermasterpageNumber)
* [/viewer/document/\{identifier\}/master/](#viewerdocumentidentifiermaster)
* [/viewer/document/sample/\{identifier\}/manifest](#viewerdocumentsampleidentifiermanifest)
* [/viewer/document/\{identifier\}/thumbnail/\{pageNumber\}/thumb.jpg](#viewerdocumentidentifierthumbnailpageNumberthumb.jpg)
* [/viewer/document/\{identifier\}/toc](#viewerdocumentidentifiertoc)
* [/viewsformat](#viewsformat)
* [/viewsformat/\{id\}](#viewsformatid)
* [/workflow/\{identifier\}](#workflowidentifier)
* [/workflow](#workflow)
* [/workflow_group](#workflow_group)
* [/workflow_group/\{id\}](#workflow_groupid)
* [/workflow_model](#workflow_model)
* [/workflow_model/\{id\}](#workflow_modelid)
* [/z3950](#z3950)
* [/z3950Server](#z3950Server)
* [/z3950Server/\{id\}](#z3950Serverid)
---
# /audit/delivery

### <span api-method=GET>GET</span> /audit/delivery?from
**Implementation:** [AuditDeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/audit/AuditDeliveryController.java#L41-L58)


**Required Role\(s\):** DEL_HAB0

**Functionality:** getRevisions

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|from|LocalDate|no|`None`|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|lot|List<String>|no|`None`|


**Response Body:** ResponseEntity&lt;List&lt;AuditDeliveryRevisionDTO&gt;&gt;

---
# /audit/docunit/\{id\}

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /audit/docunit/\{id\}?rev
**Implementation:** [AuditDocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/audit/AuditDocUnitController.java#L42-L61)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** getEntity

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DocUnit&gt;


### <span api-method=GET>GET</span> /audit/docunit/\{id\}
**Implementation:** [AuditDocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/audit/AuditDocUnitController.java#L63-L80)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** getRevisions

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;AuditDocUnitRevisionDTO&gt;&gt;

---
# /audit/lot

### <span api-method=GET>GET</span> /audit/lot?from
**Implementation:** [AuditLotController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/audit/AuditLotController.java#L41-L56)


**Required Role\(s\):** LOT_HAB3

**Functionality:** getRevisions

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|from|LocalDate|no|`None`|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|


**Response Body:** ResponseEntity&lt;List&lt;AuditLotRevisionDTO&gt;&gt;

---
# /audit/mapping/\{id\}

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /audit/mapping/\{id\}?rev
**Implementation:** [AuditMappingController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/audit/AuditMappingController.java#L46-L66)


**Required Role\(s\):** MAP_HAB0

**Functionality:** getEntity

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Mapping&gt;


### <span api-method=GET>GET</span> /audit/mapping/\{id\}
**Implementation:** [AuditMappingController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/audit/AuditMappingController.java#L68-L86)


**Required Role\(s\):** MAP_HAB0

**Functionality:** getRevisions

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;AuditRevision&gt;&gt;

---
# /audit/project

### <span api-method=GET>GET</span> /audit/project?from
**Implementation:** [AuditProjectController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/audit/AuditProjectController.java#L41-L55)


**Required Role\(s\):** PROJ_HAB7

**Functionality:** getRevisions

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|from|LocalDate|no|`None`|
|library|List<String>|no|`None`|


**Response Body:** ResponseEntity&lt;List&lt;AuditProjectRevisionDTO&gt;&gt;

---
# /audit/train

### <span api-method=GET>GET</span> /audit/train?from
**Implementation:** [AuditTrainController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/audit/AuditTrainController.java#L41-L56)


**Required Role\(s\):** TRA_HAB3

**Functionality:** getRevisions

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|from|LocalDate|no|`None`|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|


**Response Body:** ResponseEntity&lt;List&lt;AuditTrainRevisionDTO&gt;&gt;

---
# /authorization

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /authorization?dto
**Implementation:** [AuthorizationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/user/AuthorizationController.java#L34-L38)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** findAllDto

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;AuthorizationDTO&gt;&gt;


### <span api-method=GET>GET</span> /authorization
**Implementation:** [AuthorizationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/user/AuthorizationController.java#L40-L44)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** findAll

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;Authorization&gt;&gt;

---
# /authorization/\{identifier\}

### <span api-method=GET>GET</span> /authorization/\{identifier\}
**Implementation:** [AuthorizationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/user/AuthorizationController.java#L46-L50)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Authorization&gt;

---
# /bibliographicrecord

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /bibliographicrecord
**Implementation:** [BibliographicRecordController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/BibliographicRecordController.java#L81-L91)


**Required Role\(s\):** DOC_UNIT_HAB1

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;BibliographicRecordDTO&gt;


### <span api-method=POST>POST</span> /bibliographicrecord?delete
**Implementation:** [BibliographicRecordController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/BibliographicRecordController.java#L126-L143)


**Required Role\(s\):** DOC_UNIT_HAB3

**Functionality:** delete

**Request Body:** TODO






### <span api-method=POST>POST</span> /bibliographicrecord?update
**Implementation:** [BibliographicRecordController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/BibliographicRecordController.java#L276-L294)


**Required Role\(s\):** DOC_UNIT_HAB2

**Functionality:** update

**Request Body:** TODO






### <span api-method=GET>GET</span> /bibliographicrecord?search
**Implementation:** [BibliographicRecordController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/BibliographicRecordController.java#L145-L171)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|search|String|no|`None`|
|libraries|List<String>|no|`None`|
|projects|List<String>|no|`None`|
|lots|List<String>|no|`None`|
|statuses|List<String>|no|`None`|
|lastModifiedDateFrom|LocalDate|no|`None`|
|lastModifiedDateTo|LocalDate|no|`None`|
|createdDateFrom|LocalDate|no|`None`|
|createdDateTo|LocalDate|no|`None`|
|orphan|Boolean|no|`None`|
|page|Integer|no|`0`|
|size|Integer|no|`10`|


**Response Body:** ResponseEntity&lt;Page&lt;SimpleBibliographicRecordDTO&gt;&gt;


### <span api-method=GET>GET</span> /bibliographicrecord?searchAsList
**Implementation:** [BibliographicRecordController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/BibliographicRecordController.java#L173-L201)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** searchAsList

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|searchAsList|String|no|`None`|
|libraries|List<String>|no|`None`|
|projects|List<String>|no|`None`|
|lots|List<String>|no|`None`|
|statuses|List<String>|no|`None`|
|trains|List<String>|no|`None`|
|lastModifiedDateFrom|LocalDate|no|`None`|
|lastModifiedDateTo|LocalDate|no|`None`|
|createdDateFrom|LocalDate|no|`None`|
|createdDateTo|LocalDate|no|`None`|
|orphan|Boolean|no|`None`|
|page|Integer|no|`0`|
|size|Integer|no|``|


**Response Body:** ResponseEntity&lt;Page&lt;SimpleListBibliographicRecordDTO&gt;&gt;


### <span api-method=GET>GET</span> /bibliographicrecord?dto
**Implementation:** [BibliographicRecordController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/BibliographicRecordController.java#L203-L212)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** findAll

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;SimpleBibliographicRecordDTO&gt;&gt;


### <span api-method=GET>GET</span> /bibliographicrecord?all_operations
**Implementation:** [BibliographicRecordController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/BibliographicRecordController.java#L214-L224)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** findAllOperations

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;SimpleBibliographicRecordDTO&gt;&gt;

---
# /bibliographicrecord/\{id\}

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /bibliographicrecord/\{id\}?duplicate
**Implementation:** [BibliographicRecordController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/BibliographicRecordController.java#L93-L107)


**Required Role\(s\):** DOC_UNIT_HAB1

**Functionality:** duplicate

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;BibliographicRecordDTO&gt;


### <span api-method=GET>GET</span> /bibliographicrecord/\{identifier\}
**Implementation:** [BibliographicRecordController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/BibliographicRecordController.java#L226-L235)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;BibliographicRecordDTO&gt;


### <span api-method=GET>GET</span> /bibliographicrecord/\{identifier\}?dc
**Implementation:** [BibliographicRecordController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/BibliographicRecordController.java#L237-L246)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** getDcById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;BibliographicRecordDcDTO&gt;


### <span api-method=GET>GET</span> /bibliographicrecord/\{identifier\}?lock
**Implementation:** [BibliographicRecordController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/BibliographicRecordController.java#L296-L313)


**Required Role\(s\):** DOC_UNIT_HAB2

**Functionality:** lock

**Request Body:** TODO






### <span api-method=GET>GET</span> /bibliographicrecord/\{identifier\}?unlock
**Implementation:** [BibliographicRecordController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/BibliographicRecordController.java#L315-L332)


**Required Role\(s\):** DOC_UNIT_HAB2

**Functionality:** unlock

**Request Body:** TODO






### <span api-method=DELETE>DELETE</span> /bibliographicrecord/\{identifier\}
**Implementation:** [BibliographicRecordController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/BibliographicRecordController.java#L109-L124)


**Required Role\(s\):** DOC_UNIT_HAB3

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=POST>POST</span> /bibliographicrecord/\{identifier\}
**Implementation:** [BibliographicRecordController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/BibliographicRecordController.java#L248-L274)


**Required Role\(s\):** DOC_UNIT_HAB2

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;BibliographicRecordDTO&gt;

---
# /check

### <span api-method=GET>GET</span> /check?errors
**Implementation:** [CheckController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/CheckController.java#L55-L59)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getErrors

**Request Body:** TODO



**Response Body:** Set&lt;Check.ErrorLabel&gt;


### <span api-method=POST>POST</span> /check
**Implementation:** [CheckController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/CheckController.java#L68-L73)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** create

**Request Body:** TODO



**Response Body:** CheckDTO

---
# /check/\{id\}

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /check/\{id\}
**Implementation:** [CheckController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/CheckController.java#L61-L66)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** update

**Request Body:** TODO



**Response Body:** CheckDTO


### <span api-method=POST>POST</span> /check/\{id\}?seterrors
**Implementation:** [CheckController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/CheckController.java#L75-L82)


**Required Role\(s\):** CHECK_HAB4

**Functionality:** setErrors

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|pageNumber|Integer|no|`None`|


**Response Body:** DocErrorReport


### <span api-method=POST>POST</span> /check/\{id\}?setsamplederrors
**Implementation:** [CheckController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/CheckController.java#L84-L92)


**Required Role\(s\):** CHECK_HAB4

**Functionality:** setErrorsForSampling

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|pageNumber|Integer|no|`None`|


**Response Body:** DocErrorReport


### <span api-method=POST>POST</span> /check/\{id\}?setglobalerrors
**Implementation:** [CheckController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/CheckController.java#L94-L100)


**Required Role\(s\):** CHECK_HAB4

**Functionality:** setGlobalErrors

**Request Body:** TODO






### <span api-method=POST>POST</span> /check/\{id\}?setsampledglobalerrors
**Implementation:** [CheckController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/CheckController.java#L102-L108)


**Required Role\(s\):** CHECK_HAB4

**Functionality:** setGlobalErrorsForSampling

**Request Body:** TODO






### <span api-method=GET>GET</span> /check/\{id\}?geterrors
**Implementation:** [CheckController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/CheckController.java#L110-L116)


**Required Role\(s\):** CHECK_HAB3

**Functionality:** getErrors

**Request Body:** TODO



**Response Body:** Set&lt;Check.ErrorLabel&gt;


### <span api-method=GET>GET</span> /check/\{id\}?getsamplederrors
**Implementation:** [CheckController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/CheckController.java#L118-L125)


**Required Role\(s\):** CHECK_HAB3

**Functionality:** getErrorsForSampling

**Request Body:** TODO



**Response Body:** Set&lt;Check.ErrorLabel&gt;


### <span api-method=GET>GET</span> /check/\{id\}?getcondreportforsamplepage
**Implementation:** [CheckController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/CheckController.java#L127-L133)


**Required Role\(s\):** CHECK_HAB3

**Functionality:** getCondReportForSamplePage

**Request Body:** TODO



**Response Body:** Set&lt;String&gt;


### <span api-method=GET>GET</span> /check/\{id\}?getglobalerrors
**Implementation:** [CheckController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/CheckController.java#L135-L141)


**Required Role\(s\):** CHECK_HAB3

**Functionality:** getGlobalErrors

**Request Body:** TODO



**Response Body:** Set&lt;Check.ErrorLabel&gt;


### <span api-method=GET>GET</span> /check/\{id\}?getsampledglobalerrors
**Implementation:** [CheckController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/CheckController.java#L143-L149)


**Required Role\(s\):** CHECK_HAB3

**Functionality:** getGlobalErrorsForSampling

**Request Body:** TODO



**Response Body:** Set&lt;Check.ErrorLabel&gt;


### <span api-method=GET>GET</span> /check/\{id\}?getdocumentallerrors
**Implementation:** [CheckController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/CheckController.java#L151-L157)


**Required Role\(s\):** CHECK_HAB3

**Functionality:** getDocumentErrors

**Request Body:** TODO



**Response Body:** DocErrorReport


### <span api-method=GET>GET</span> /check/\{id\}?getsampleallerrors
**Implementation:** [CheckController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/CheckController.java#L159-L165)


**Required Role\(s\):** CHECK_HAB3

**Functionality:** getSampleErrors

**Request Body:** TODO



**Response Body:** DocErrorReport


### <span api-method=GET>GET</span> /check/\{id\}?summaryresults
**Implementation:** [CheckController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/CheckController.java#L167-L175)


**Required Role\(s\):** CHECK_HAB3

**Functionality:** getDocumentSummaryResults

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Map&lt;String, Object&gt;&gt;

---
# /check/auto

### <span api-method=GET>GET</span> /check/auto?facile
**Implementation:** [AutomaticCheckController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/check/AutomaticCheckController.java#L50-L67)


**Required Role\(s\):** DOC_UNIT_HAB4

**Functionality:** checkFacile

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;

---
# /checkconfiguration

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /checkconfiguration
**Implementation:** [CheckConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/checkconfiguration/CheckConfigurationController.java#L54-L61)


**Required Role\(s\):** CHECK_HAB1

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;CheckConfigurationDTO&gt;


### <span api-method=GET>GET</span> /checkconfiguration?search
**Implementation:** [CheckConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/checkconfiguration/CheckConfigurationController.java#L72-L83)


**Required Role\(s\):** CHECK_HAB0

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|search|String|no|`None`|
|libraries|List<String>|no|`None`|
|page|Integer|no|`0`|


**Response Body:** ResponseEntity&lt;Page&lt;SimpleCheckConfigurationDTO&gt;&gt;


### <span api-method=GET>GET</span> /checkconfiguration?rules
**Implementation:** [CheckConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/checkconfiguration/CheckConfigurationController.java#L85-L90)


**Required Role\(s\):** CHECK_HAB0

**Functionality:** getInitRules

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;AutomaticCheckRuleDTO&gt;&gt;


### <span api-method=GET>GET</span> /checkconfiguration?project
**Implementation:** [CheckConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/checkconfiguration/CheckConfigurationController.java#L110-L118)


**Required Role\(s\):** CHECK_HAB0

**Functionality:** getByProjectId

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;SimpleCheckConfigurationDTO&gt;&gt;


### <span api-method=GET>GET</span> /checkconfiguration?add-radical-controle
**Implementation:** [CheckConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/checkconfiguration/CheckConfigurationController.java#L150-L156)


**Required Role\(s\):** CHECK_HAB1

**Functionality:** updateCheckConfigurationAddRadicalControl

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;CheckConfigurationDTO&gt;

---
# /checkconfiguration/\{id\}

> Doesn't respect oas v3.1.


### <span api-method=DELETE>DELETE</span> /checkconfiguration/\{id\}
**Implementation:** [CheckConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/checkconfiguration/CheckConfigurationController.java#L63-L70)


**Required Role\(s\):** CHECK_HAB2

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;CheckConfigurationDTO&gt;


### <span api-method=GET>GET</span> /checkconfiguration/\{id\}
**Implementation:** [CheckConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/checkconfiguration/CheckConfigurationController.java#L92-L99)


**Required Role\(s\):** CHECK_HAB0

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;CheckConfigurationDTO&gt;


### <span api-method=GET>GET</span> /checkconfiguration/\{id\}?edition
**Implementation:** [CheckConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/checkconfiguration/CheckConfigurationController.java#L101-L108)


**Required Role\(s\):** CHECK_HAB0

**Functionality:** getByIdForEdition

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;CheckConfigurationDTO&gt;


### <span api-method=GET>GET</span> /checkconfiguration/\{id\}?duplicate
**Implementation:** [CheckConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/checkconfiguration/CheckConfigurationController.java#L120-L127)


**Required Role\(s\):** USER_HAB0

**Functionality:** duplicateCheckConfiguration

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;CheckConfigurationDTO&gt;


### <span api-method=GET>GET</span> /checkconfiguration/\{idDocUnit\}?docUnit
**Implementation:** [CheckConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/checkconfiguration/CheckConfigurationController.java#L129-L136)


**Required Role\(s\):** USER_HAB0

**Functionality:** getByDocUnit

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;CheckConfigurationDTO&gt;


### <span api-method=POST>POST</span> /checkconfiguration/\{id\}
**Implementation:** [CheckConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/checkconfiguration/CheckConfigurationController.java#L138-L148)


**Required Role\(s\):** CHECK_HAB1

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;CheckConfigurationDTO&gt;

---
# /check/csv/\{id\}

### <span api-method=GET>GET</span> /check/csv/\{id\}
**Implementation:** [CheckController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/CheckController.java#L177-L193)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** generateSlip

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|encoding|String|no|`utf-8`|




---
# /check/lot_csv/\{id\}

### <span api-method=GET>GET</span> /check/lot_csv/\{id\}
**Implementation:** [CheckController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/CheckController.java#L210-L231)


**Required Role\(s\):** 
- CHECK_HAB4
- LOT_HAB0

**Functionality:** generateCheckSlip

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|encoding|String|no|`utf-8`|




---
# /check/lot_pdf/\{id\}

### <span api-method=GET>GET</span> /check/lot_pdf/\{id\}
**Implementation:** [CheckController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/CheckController.java#L233-L252)


**Required Role\(s\):** 
- CHECK_HAB4
- LOT_HAB0

**Functionality:** generateCheckSlipPdf

**Request Body:** TODO





---
# /check/pdf/\{id\}

### <span api-method=GET>GET</span> /check/pdf/\{id\}
**Implementation:** [CheckController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/CheckController.java#L195-L208)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** generateSlipPdf

**Request Body:** TODO





---
# /checkslip_configuration/\{id\}

### <span api-method=GET>GET</span> /checkslip_configuration/\{id\}
**Implementation:** [CheckSlipConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/CheckSlipConfigurationController.java#L44-L54)


**Required Role\(s\):** DEL_HAB0

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;CheckSlipConfiguration&gt;


### <span api-method=POST>POST</span> /checkslip_configuration/\{id\}
**Implementation:** [CheckSlipConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/CheckSlipConfigurationController.java#L56-L66)


**Required Role\(s\):** DEL_HAB2

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;CheckSlipConfiguration&gt;

---
# /condreport

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /condreport?docUnit
**Implementation:** [ConditionReportController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/ConditionReportController.java#L77-L89)


**Required Role\(s\):** COND_REPORT_HAB1

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ConditionReport&gt;


### <span api-method=POST>POST</span> /condreport?search
**Implementation:** [ConditionReportController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/ConditionReportController.java#L185-L204)


**Required Role\(s\):** COND_REPORT_HAB0

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|page|Integer|no|`0`|
|size|Integer|no|``|


**Response Body:** ResponseEntity&lt;Page&lt;SearchResult&gt;&gt;


### <span api-method=POST>POST</span> /condreport?import-report
**Implementation:** [ConditionReportController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/ConditionReportController.java#L346-L384)


**Required Role\(s\):** COND_REPORT_HAB1

**Functionality:** updateReport

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;ConditionReportImportService.ImportResult&gt;&gt;


### <span api-method=GET>GET</span> /condreport?docUnit
**Implementation:** [ConditionReportController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/ConditionReportController.java#L131-L141)


**Required Role\(s\):** COND_REPORT_HAB0

**Functionality:** findByDocUnit

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ConditionReport&gt;


### <span api-method=GET>GET</span> /condreport?summary", "docUnit
**Implementation:** [ConditionReportController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/ConditionReportController.java#L143-L154)


**Required Role\(s\):** COND_REPORT_HAB0

**Functionality:** getSummaryByDocUnit

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Set&lt;String&gt;&gt;


### <span api-method=GET>GET</span> /condreport?sampleId
**Implementation:** [ConditionReportController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/ConditionReportController.java#L156-L166)


**Required Role\(s\):** COND_REPORT_HAB0

**Functionality:** getSummaryBySample

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Set&lt;String&gt;&gt;


### <span api-method=GET>GET</span> /condreport?import-template
**Implementation:** [ConditionReportController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/ConditionReportController.java#L250-L289)


**Required Role\(s\):** COND_REPORT_HAB1

**Functionality:** getReportImportTemplate

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|import-template|List<String>|no|`None`|




---
# /condreport/\{identifier\}

> Doesn't respect oas v3.1.


### <span api-method=DELETE>DELETE</span> /condreport/\{identifier\}
**Implementation:** [ConditionReportController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/ConditionReportController.java#L91-L113)


**Required Role\(s\):** COND_REPORT_HAB3

**Functionality:** delete

**Request Body:** TODO






### <span api-method=GET>GET</span> /condreport/\{identifier\}
**Implementation:** [ConditionReportController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/ConditionReportController.java#L115-L129)


**Required Role\(s\):** COND_REPORT_HAB0

**Functionality:** findByIdentifier

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ConditionReport&gt;


### <span api-method=GET>GET</span> /condreport/\{id\}?exportto
**Implementation:** [ConditionReportController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/ConditionReportController.java#L212-L248)


**Required Role\(s\):** COND_REPORT_HAB4

**Functionality:** exportReportOdt

**Request Body:** TODO






### <span api-method=POST>POST</span> /condreport/\{identifier\}
**Implementation:** [ConditionReportController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/ConditionReportController.java#L168-L183)


**Required Role\(s\):** COND_REPORT_HAB2

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ConditionReport&gt;


### <span api-method=POST>POST</span> /condreport/\{id\}?propagate
**Implementation:** [ConditionReportController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/ConditionReportController.java#L394-L410)


**Required Role\(s\):** COND_REPORT_HAB0

**Functionality:** propagateReport

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|docUnit|String|no|`None`|


**Response Body:** ResponseEntity&lt;?&gt;

---
# /condreport_attachment

### <span api-method=GET>GET</span> /condreport_attachment?report
**Implementation:** [ConditionReportAttachmentController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/ConditionReportAttachmentController.java#L64-L76)


**Required Role\(s\):** COND_REPORT_HAB0

**Functionality:** findByReport

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;ConditionReportAttachment&gt;&gt;


### <span api-method=POST>POST</span> /condreport_attachment?report
**Implementation:** [ConditionReportAttachmentController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/ConditionReportAttachmentController.java#L199-L219)


**Required Role\(s\):** COND_REPORT_HAB2

**Functionality:** uploadAttachments

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|file|List<MultipartFile>|no|`None`|


**Response Body:** ResponseEntity&lt;List&lt;ConditionReportAttachment&gt;&gt;

---
# /condreport_attachment/\{identifier\}

> Doesn't respect oas v3.1.


### <span api-method=DELETE>DELETE</span> /condreport_attachment/\{identifier\}
**Implementation:** [ConditionReportAttachmentController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/ConditionReportAttachmentController.java#L82-L94)


**Required Role\(s\):** COND_REPORT_HAB2

**Functionality:** delete

**Request Body:** TODO






### <span api-method=GET>GET</span> /condreport_attachment/\{id\}?file
**Implementation:** [ConditionReportAttachmentController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/ConditionReportAttachmentController.java#L103-L133)


**Required Role\(s\):** COND_REPORT_HAB0

**Functionality:** downloadAttachment

**Request Body:** TODO






### <span api-method=GET>GET</span> /condreport_attachment/\{id\}?thumbnail
**Implementation:** [ConditionReportAttachmentController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/ConditionReportAttachmentController.java#L142-L191)


**Required Role\(s\):** COND_REPORT_HAB0

**Functionality:** downloadThumbnail

**Request Body:** TODO





---
# /condreport_desc_prop

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /condreport_desc_prop
**Implementation:** [DescriptionPropertyController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/DescriptionPropertyController.java#L39-L45)


**Required Role\(s\):** COND_REPORT_HAB6

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DescriptionProperty&gt;


### <span api-method=GET>GET</span> /condreport_desc_prop
**Implementation:** [DescriptionPropertyController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/DescriptionPropertyController.java#L55-L60)


**Required Role\(s\):** 
- COND_REPORT_HAB0
- COND_REPORT_HAB6

**Functionality:** findAll

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;DescriptionProperty&gt;&gt;


### <span api-method=GET>GET</span> /condreport_desc_prop?getAllWithFakes
**Implementation:** [DescriptionPropertyController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/DescriptionPropertyController.java#L62-L80)


**Required Role\(s\):** 
- COND_REPORT_HAB0
- COND_REPORT_HAB6

**Functionality:** getAllWithFakesAndShowCreationByLibrary

**Request Body:** TODO



**Response Body:** List&lt;DescriptionProperty&gt;

---
# /condreport_desc_prop/\{identifier\}

### <span api-method=DELETE>DELETE</span> /condreport_desc_prop/\{identifier\}
**Implementation:** [DescriptionPropertyController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/DescriptionPropertyController.java#L47-L53)


**Required Role\(s\):** COND_REPORT_HAB6

**Functionality:** delete

**Request Body:** TODO






### <span api-method=POST>POST</span> /condreport_desc_prop/\{identifier\}
**Implementation:** [DescriptionPropertyController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/DescriptionPropertyController.java#L144-L151)


**Required Role\(s\):** COND_REPORT_HAB6

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DescriptionProperty&gt;

---
# /condreport_desc_value

### <span api-method=POST>POST</span> /condreport_desc_value
**Implementation:** [DescriptionValueController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/DescriptionValueController.java#L35-L40)


**Required Role\(s\):** COND_REPORT_HAB6

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DescriptionValue&gt;


### <span api-method=GET>GET</span> /condreport_desc_value?property
**Implementation:** [DescriptionValueController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/DescriptionValueController.java#L50-L56)


**Required Role\(s\):** 
- COND_REPORT_HAB0
- COND_REPORT_HAB6

**Functionality:** findByProperty

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;DescriptionValue&gt;&gt;

---
# /condreport_desc_value/\{identifier\}

### <span api-method=DELETE>DELETE</span> /condreport_desc_value/\{identifier\}
**Implementation:** [DescriptionValueController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/DescriptionValueController.java#L42-L48)


**Required Role\(s\):** COND_REPORT_HAB6

**Functionality:** delete

**Request Body:** TODO






### <span api-method=POST>POST</span> /condreport_desc_value/\{identifier\}
**Implementation:** [DescriptionValueController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/DescriptionValueController.java#L58-L64)


**Required Role\(s\):** COND_REPORT_HAB6

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DescriptionValue&gt;

---
# /condreport_detail

### <span api-method=POST>POST</span> /condreport_detail?type", "detail
**Implementation:** [ConditionReportDetailController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/ConditionReportDetailController.java#L56-L81)


**Required Role\(s\):** COND_REPORT_HAB1

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ConditionReportDetail&gt;


### <span api-method=GET>GET</span> /condreport_detail?report
**Implementation:** [ConditionReportDetailController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/ConditionReportDetailController.java#L120-L131)


**Required Role\(s\):** COND_REPORT_HAB0

**Functionality:** findByConditionReport

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;ConditionReportDetail&gt;&gt;

---
# /condreport_detail/\{identifier\}

> Doesn't respect oas v3.1.


### <span api-method=DELETE>DELETE</span> /condreport_detail/\{identifier\}
**Implementation:** [ConditionReportDetailController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/ConditionReportDetailController.java#L83-L106)


**Required Role\(s\):** COND_REPORT_HAB3

**Functionality:** delete

**Request Body:** TODO






### <span api-method=GET>GET</span> /condreport_detail/\{identifier\}
**Implementation:** [ConditionReportDetailController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/ConditionReportDetailController.java#L108-L118)


**Required Role\(s\):** COND_REPORT_HAB0

**Functionality:** findByIdentifier

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ConditionReportDetail&gt;


### <span api-method=POST>POST</span> /condreport_detail/\{identifier\}
**Implementation:** [ConditionReportDetailController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/ConditionReportDetailController.java#L133-L155)


**Required Role\(s\):** COND_REPORT_HAB2

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ConditionReportDetail&gt;


### <span api-method=POST>POST</span> /condreport_detail/\{identifier\}?confirmvalid
**Implementation:** [ConditionReportDetailController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/ConditionReportDetailController.java#L157-L176)


**Required Role\(s\):** COND_REPORT_HAB2

**Functionality:** confirmInitialValid

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ConditionReportDetail&gt;

---
# /condreport_prop_conf

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /condreport_prop_conf
**Implementation:** [PropertyConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/PropertyConfigurationController.java#L47-L57)


**Required Role\(s\):** COND_REPORT_HAB5

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;PropertyConfigurationDTO&gt;


### <span api-method=GET>GET</span> /condreport_prop_conf?library
**Implementation:** [PropertyConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/PropertyConfigurationController.java#L59-L71)


**Required Role\(s\):** COND_REPORT_HAB0

**Functionality:** findByLibrary

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|Library|no|`None`|


**Response Body:** ResponseEntity&lt;List&lt;PropertyConfigurationDTO&gt;&gt;


### <span api-method=GET>GET</span> /condreport_prop_conf?desc", "library
**Implementation:** [PropertyConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/PropertyConfigurationController.java#L73-L85)


**Required Role\(s\):** COND_REPORT_HAB0

**Functionality:** findByDescPropertyAndLibrary

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|desc|DescriptionProperty|no|`None`|


**Response Body:** ResponseEntity&lt;PropertyConfigurationDTO&gt;


### <span api-method=GET>GET</span> /condreport_prop_conf?internal", "library
**Implementation:** [PropertyConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/PropertyConfigurationController.java#L87-L99)


**Required Role\(s\):** COND_REPORT_HAB0

**Functionality:** findByInternalPropertyAndLibrary

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;PropertyConfigurationDTO&gt;

---
# /condreport_prop_conf/\{identifier\}

### <span api-method=POST>POST</span> /condreport_prop_conf/\{identifier\}
**Implementation:** [PropertyConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/PropertyConfigurationController.java#L101-L111)


**Required Role\(s\):** COND_REPORT_HAB5

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;PropertyConfigurationDTO&gt;

---
# /condreport/csv

### <span api-method=GET>GET</span> /condreport/csv
**Implementation:** [ConditionReportController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/ConditionReportController.java#L291-L317)


**Required Role\(s\):** COND_REPORT_HAB0

**Functionality:** generateSlip

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|reports|List<String>|no|`None`|
|encoding|String|no|`ISO-8859-15`|




---
# /condreport/pdf

### <span api-method=GET>GET</span> /condreport/pdf
**Implementation:** [ConditionReportController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/ConditionReportController.java#L319-L344)


**Required Role\(s\):** COND_REPORT_HAB0

**Functionality:** generateSlipPdf

**Request Body:** TODO





---
# /condreportslip_configuration/\{id\}

### <span api-method=GET>GET</span> /condreportslip_configuration/\{id\}
**Implementation:** [ConditionReportSlipConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/ConditionReportSlipConfigurationController.java#L40-L50)


**Required Role\(s\):** DEL_HAB0

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ConditionReportSlipConfiguration&gt;


### <span api-method=POST>POST</span> /condreportslip_configuration/\{id\}
**Implementation:** [ConditionReportSlipConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/conditionreport/ConditionReportSlipConfigurationController.java#L52-L63)


**Required Role\(s\):** DEL_HAB2

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ConditionReportSlipConfiguration&gt;

---
# /conf_digital_library

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /conf_digital_library
**Implementation:** [DigitalLibraryConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/digitallibrary/DigitalLibraryConfigurationController.java#L42-L54)


**Required Role\(s\):** CONF_DIFFUSION_DIGITAL_LIBRARY_HAB1

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DigitalLibraryConfiguration&gt;


### <span api-method=GET>GET</span> /conf_digital_library?configuration", "library
**Implementation:** [DigitalLibraryConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/digitallibrary/DigitalLibraryConfigurationController.java#L76-L91)


**Required Role\(s\):** CONF_DIFFUSION_DIGITAL_LIBRARY_HAB0

**Functionality:** findByLibrary

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|Library|no|`None`|


**Response Body:** ResponseEntity&lt;Set&lt;DigitalLibraryConfigurationDTO&gt;&gt;


### <span api-method=GET>GET</span> /conf_digital_library?search
**Implementation:** [DigitalLibraryConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/digitallibrary/DigitalLibraryConfigurationController.java#L93-L107)


**Required Role\(s\):** CONF_DIFFUSION_DIGITAL_LIBRARY_HAB0

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|search|String|no|`None`|
|libraries|List<String>|no|`None`|
|page|Integer|no|`0`|


**Response Body:** ResponseEntity&lt;Page&lt;DigitalLibraryConfigurationDTO&gt;&gt;

---
# /conf_digital_library/\{id\}

### <span api-method=DELETE>DELETE</span> /conf_digital_library/\{id\}
**Implementation:** [DigitalLibraryConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/digitallibrary/DigitalLibraryConfigurationController.java#L56-L74)


**Required Role\(s\):** CONF_DIFFUSION_OMEKA_HAB2

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=GET>GET</span> /conf_digital_library/\{id\}
**Implementation:** [DigitalLibraryConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/digitallibrary/DigitalLibraryConfigurationController.java#L109-L127)


**Required Role\(s\):** CONF_DIFFUSION_DIGITAL_LIBRARY_HAB0

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DigitalLibraryConfiguration&gt;


### <span api-method=POST>POST</span> /conf_digital_library/\{id\}
**Implementation:** [DigitalLibraryConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/digitallibrary/DigitalLibraryConfigurationController.java#L129-L156)


**Required Role\(s\):** CONF_DIFFUSION_DIGITAL_LIBRARY_HAB1

**Functionality:** udpate

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DigitalLibraryConfiguration&gt;

---
# /conf_internet_archive

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /conf_internet_archive
**Implementation:** [InternetArchiveConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/InternetArchiveConfigurationController.java#L62-L74)


**Required Role\(s\):** CONF_INTERNET_ARCHIVE_HAB1

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;InternetArchiveConfiguration&gt;


### <span api-method=GET>GET</span> /conf_internet_archive?collections
**Implementation:** [InternetArchiveConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/InternetArchiveConfigurationController.java#L96-L112)


**Required Role\(s\):** 
- CONF_INTERNET_ARCHIVE_HAB0
- DOC_UNIT_HAB0

**Functionality:** findIA

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|


**Response Body:** ResponseEntity&lt;Collection&lt;InternetArchiveCollection&gt;&gt;


### <span api-method=GET>GET</span> /conf_internet_archive
**Implementation:** [InternetArchiveConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/InternetArchiveConfigurationController.java#L114-L126)


**Required Role\(s\):** 
- CONF_INTERNET_ARCHIVE_HAB0
- DOC_UNIT_HAB0

**Functionality:** findAll

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;InternetArchiveConfigurationDTO&gt;&gt;


### <span api-method=GET>GET</span> /conf_internet_archive?configurations", "library
**Implementation:** [InternetArchiveConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/InternetArchiveConfigurationController.java#L128-L142)


**Required Role\(s\):** CONF_INTERNET_ARCHIVE_HAB0

**Functionality:** findByLibrary

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|Library|no|`None`|


**Response Body:** ResponseEntity&lt;Set&lt;InternetArchiveConfigurationDTO&gt;&gt;


### <span api-method=GET>GET</span> /conf_internet_archive?search
**Implementation:** [InternetArchiveConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/InternetArchiveConfigurationController.java#L144-L158)


**Required Role\(s\):** CONF_INTERNET_ARCHIVE_HAB0

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|search|String|no|`None`|
|libraries|List<String>|no|`None`|
|page|Integer|no|`0`|


**Response Body:** ResponseEntity&lt;Page&lt;InternetArchiveConfigurationDTO&gt;&gt;

---
# /conf_internet_archive/\{id\}

### <span api-method=DELETE>DELETE</span> /conf_internet_archive/\{id\}
**Implementation:** [InternetArchiveConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/InternetArchiveConfigurationController.java#L76-L94)


**Required Role\(s\):** CONF_INTERNET_ARCHIVE_HAB2

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=GET>GET</span> /conf_internet_archive/\{id\}
**Implementation:** [InternetArchiveConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/InternetArchiveConfigurationController.java#L160-L178)


**Required Role\(s\):** CONF_INTERNET_ARCHIVE_HAB0

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;InternetArchiveConfiguration&gt;


### <span api-method=POST>POST</span> /conf_internet_archive/\{id\}
**Implementation:** [InternetArchiveConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/InternetArchiveConfigurationController.java#L180-L204)


**Required Role\(s\):** CONF_INTERNET_ARCHIVE_HAB1

**Functionality:** udpate

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;InternetArchiveConfiguration&gt;

---
# /conf_mail

### <span api-method=POST>POST</span> /conf_mail
**Implementation:** [MailboxConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/MailboxConfigurationController.java#L49-L61)


**Required Role\(s\):** MAIL_HAB1

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;MailboxConfiguration&gt;


### <span api-method=GET>GET</span> /conf_mail
**Implementation:** [MailboxConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/MailboxConfigurationController.java#L83-L98)


**Required Role\(s\):** MAIL_HAB0

**Functionality:** search

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;MailboxConfigurationDTO&gt;&gt;

---
# /conf_mail/\{id\}

### <span api-method=DELETE>DELETE</span> /conf_mail/\{id\}
**Implementation:** [MailboxConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/MailboxConfigurationController.java#L63-L81)


**Required Role\(s\):** MAIL_HAB2

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=GET>GET</span> /conf_mail/\{id\}
**Implementation:** [MailboxConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/MailboxConfigurationController.java#L100-L118)


**Required Role\(s\):** MAIL_HAB0

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;MailboxConfiguration&gt;


### <span api-method=POST>POST</span> /conf_mail/\{id\}
**Implementation:** [MailboxConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/MailboxConfigurationController.java#L120-L144)


**Required Role\(s\):** MAIL_HAB1

**Functionality:** udpate

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;MailboxConfiguration&gt;

---
# /conf_omeka

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /conf_omeka
**Implementation:** [OmekaConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/omeka/OmekaConfigurationController.java#L62-L74)


**Required Role\(s\):** CONF_DIFFUSION_OMEKA_HAB1

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;OmekaConfigurationDTO&gt;


### <span api-method=GET>GET</span> /conf_omeka?collections
**Implementation:** [OmekaConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/omeka/OmekaConfigurationController.java#L96-L118)


**Required Role\(s\):** 
- CONF_DIFFUSION_OMEKA_HAB0
- DOC_UNIT_HAB0

**Functionality:** findCollections

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|omekaConf|String|no|`None`|


**Response Body:** ResponseEntity&lt;Collection&lt;OmekaList&gt;&gt;


### <span api-method=GET>GET</span> /conf_omeka?items
**Implementation:** [OmekaConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/omeka/OmekaConfigurationController.java#L120-L143)


**Required Role\(s\):** 
- CONF_DIFFUSION_OMEKA_HAB0
- DOC_UNIT_HAB0

**Functionality:** findItems

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|omekaConf|String|no|`None`|


**Response Body:** ResponseEntity&lt;Collection&lt;OmekaList&gt;&gt;


### <span api-method=GET>GET</span> /conf_omeka
**Implementation:** [OmekaConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/omeka/OmekaConfigurationController.java#L145-L157)


**Required Role\(s\):** 
- CONF_DIFFUSION_OMEKA_HAB0
- DOC_UNIT_HAB0

**Functionality:** findAll

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;OmekaConfigurationDTO&gt;&gt;


### <span api-method=GET>GET</span> /conf_omeka?configuration", "library", "project
**Implementation:** [OmekaConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/omeka/OmekaConfigurationController.java#L159-L175)


**Required Role\(s\):** CONF_DIFFUSION_OMEKA_HAB0

**Functionality:** findByLibrary

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|Library|no|`None`|
|project|Project|no|`None`|


**Response Body:** ResponseEntity&lt;Set&lt;OmekaConfigurationDTO&gt;&gt;


### <span api-method=GET>GET</span> /conf_omeka?search
**Implementation:** [OmekaConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/omeka/OmekaConfigurationController.java#L177-L192)


**Required Role\(s\):** CONF_DIFFUSION_OMEKA_HAB0

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|search|String|no|`None`|
|libraries|List<String>|no|`None`|
|omekas|Boolean|no|`None`|
|page|Integer|no|`0`|


**Response Body:** ResponseEntity&lt;Page&lt;OmekaConfigurationDTO&gt;&gt;

---
# /conf_omeka/\{id\}

### <span api-method=DELETE>DELETE</span> /conf_omeka/\{id\}
**Implementation:** [OmekaConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/omeka/OmekaConfigurationController.java#L76-L94)


**Required Role\(s\):** CONF_DIFFUSION_OMEKA_HAB2

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=GET>GET</span> /conf_omeka/\{id\}
**Implementation:** [OmekaConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/omeka/OmekaConfigurationController.java#L194-L212)


**Required Role\(s\):** CONF_DIFFUSION_OMEKA_HAB0

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;OmekaConfigurationDTO&gt;


### <span api-method=POST>POST</span> /conf_omeka/\{id\}
**Implementation:** [OmekaConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/omeka/OmekaConfigurationController.java#L214-L238)


**Required Role\(s\):** CONF_DIFFUSION_OMEKA_HAB1

**Functionality:** udpate

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;OmekaConfigurationDTO&gt;

---
# /conf_sftp

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /conf_sftp
**Implementation:** [SftpConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/SftpConfigurationController.java#L74-L86)


**Required Role\(s\):** SFTP_HAB1

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;SftpConfiguration&gt;


### <span api-method=GET>GET</span> /conf_sftp?pacs", "library
**Implementation:** [SftpConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/SftpConfigurationController.java#L108-L125)


**Required Role\(s\):** 
- SFTP_HAB0
- DOC_UNIT_HAB0

**Functionality:** findPACS

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;CinesPAC&gt;&gt;


### <span api-method=GET>GET</span> /conf_sftp?pacs", "configuration
**Implementation:** [SftpConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/SftpConfigurationController.java#L127-L137)


**Required Role\(s\):** 
- SFTP_HAB0
- DOC_UNIT_HAB0

**Functionality:** findConfigurationPACS

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;CinesPAC&gt;&gt;


### <span api-method=GET>GET</span> /conf_sftp
**Implementation:** [SftpConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/SftpConfigurationController.java#L139-L152)


**Required Role\(s\):** SFTP_HAB0

**Functionality:** findAll

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;SftpConfigurationDTO&gt;&gt;


### <span api-method=GET>GET</span> /conf_sftp?library
**Implementation:** [SftpConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/SftpConfigurationController.java#L154-L167)


**Required Role\(s\):** SFTP_HAB0

**Functionality:** findByLibrary

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Set&lt;SftpConfigurationDTO&gt;&gt;


### <span api-method=GET>GET</span> /conf_sftp?search
**Implementation:** [SftpConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/SftpConfigurationController.java#L169-L183)


**Required Role\(s\):** SFTP_HAB0

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|search|String|no|`None`|
|libraries|List<String>|no|`None`|
|page|Integer|no|`0`|


**Response Body:** ResponseEntity&lt;Page&lt;SftpConfigurationDTO&gt;&gt;

---
# /conf_sftp/\{id\}

> Doesn't respect oas v3.1.


### <span api-method=DELETE>DELETE</span> /conf_sftp/\{id\}
**Implementation:** [SftpConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/SftpConfigurationController.java#L88-L106)


**Required Role\(s\):** SFTP_HAB2

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=GET>GET</span> /conf_sftp/\{id\}
**Implementation:** [SftpConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/SftpConfigurationController.java#L185-L202)


**Required Role\(s\):** SFTP_HAB0

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;SftpConfiguration&gt;


### <span api-method=GET>GET</span> /conf_sftp/\{id\}?init
**Implementation:** [SftpConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/SftpConfigurationController.java#L204-L226)


**Required Role\(s\):** SFTP_HAB0

**Functionality:** initConf

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Map&lt;?, ?&gt;&gt;


### <span api-method=POST>POST</span> /conf_sftp/\{id\}
**Implementation:** [SftpConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/SftpConfigurationController.java#L228-L252)


**Required Role\(s\):** SFTP_HAB1

**Functionality:** udpate

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;SftpConfiguration&gt;


### <span api-method=POST>POST</span> /conf_sftp/\{id\}?upload
**Implementation:** [SftpConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/SftpConfigurationController.java#L261-L282)


**Required Role\(s\):** SFTP_HAB1

**Functionality:** uploadPacs

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;SftpConfiguration&gt;

---
# /conf/cineslangcode

### <span api-method=GET>GET</span> /conf/cineslangcode
**Implementation:** [CinesLanguageCodeController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/CinesLanguageCodeController.java#L32-L37)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getListByActive

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;CinesLanguageCode&gt;&gt;


### <span api-method=POST>POST</span> /conf/cineslangcode
**Implementation:** [CinesLanguageCodeController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/CinesLanguageCodeController.java#L39-L46)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;CinesLanguageCode&gt;&gt;

---
# /csvmapping

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /csvmapping
**Implementation:** [CSVMappingController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/CSVMappingController.java#L43-L54)


**Required Role\(s\):** MAP_HAB1

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;CSVMapping&gt;


### <span api-method=GET>GET</span> /csvmapping
**Implementation:** [CSVMappingController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/CSVMappingController.java#L76-L88)


**Required Role\(s\):** MAP_HAB0

**Functionality:** findAll

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;CSVMappingDTO&gt;&gt;


### <span api-method=GET>GET</span> /csvmapping?library
**Implementation:** [CSVMappingController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/CSVMappingController.java#L90-L102)


**Required Role\(s\):** MAP_HAB0

**Functionality:** findByLibrary

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Set&lt;CSVMappingDTO&gt;&gt;


### <span api-method=GET>GET</span> /csvmapping?usable", "library
**Implementation:** [CSVMappingController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/CSVMappingController.java#L104-L117)


**Required Role\(s\):** MAP_HAB0

**Functionality:** findUsableByLibrary

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Set&lt;CSVMappingDTO&gt;&gt;


### <span api-method=GET>GET</span> /csvmapping?usable
**Implementation:** [CSVMappingController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/CSVMappingController.java#L119-L131)


**Required Role\(s\):** MAP_HAB0

**Functionality:** findAllUsable

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;CSVMappingDTO&gt;&gt;

---
# /csvmapping/\{id\}

> Doesn't respect oas v3.1.


### <span api-method=DELETE>DELETE</span> /csvmapping/\{id\}
**Implementation:** [CSVMappingController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/CSVMappingController.java#L56-L74)


**Required Role\(s\):** MAP_HAB2

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=GET>GET</span> /csvmapping/\{id\}
**Implementation:** [CSVMappingController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/CSVMappingController.java#L133-L150)


**Required Role\(s\):** MAP_HAB0

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;CSVMapping&gt;


### <span api-method=GET>GET</span> /csvmapping/\{id\}?duplicate
**Implementation:** [CSVMappingController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/CSVMappingController.java#L152-L177)


**Required Role\(s\):** MAP_HAB1

**Functionality:** duplicateMapping

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;CSVMapping&gt;


### <span api-method=POST>POST</span> /csvmapping/\{id\}
**Implementation:** [CSVMappingController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/CSVMappingController.java#L179-L201)


**Required Role\(s\):** MAP_HAB1

**Functionality:** udpate

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;CSVMapping&gt;

---
# /delivery

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /delivery?search
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L84-L108)


**Required Role\(s\):** DEL_HAB0

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|search|String|no|`None`|
|libraries|List<String>|no|`None`|
|projects|List<String>|no|`None`|
|lots|List<String>|no|`None`|
|providers|List<String>|no|`None`|
|status|List<DeliveryStatus>|no|`None`|
|deliveryDateFrom|LocalDate|no|`None`|
|deliveryDateTo|LocalDate|no|`None`|
|page|Integer|no|`0`|


**Response Body:** ResponseEntity&lt;Page&lt;SimpleDeliveryDTO&gt;&gt;


### <span api-method=GET>GET</span> /delivery?widget", "from
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L110-L132)


**Required Role\(s\):** DEL_HAB0

**Functionality:** getDeliveriesForWidget

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|from|LocalDate|no|`None`|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|lot|List<String>|no|`None`|


**Response Body:** ResponseEntity&lt;List&lt;AuditDeliveryRevisionDTO&gt;&gt;


### <span api-method=GET>GET</span> /delivery?sampledWidget", "from
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L134-L157)


**Required Role\(s\):** DEL_HAB0

**Functionality:** getSampledDeliveriesForWidget

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|from|LocalDate|no|`None`|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|lot|List<String>|no|`None`|


**Response Body:** ResponseEntity&lt;List&lt;AuditDeliveryRevisionDTO&gt;&gt;


### <span api-method=GET>GET</span> /delivery
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L448-L457)


**Required Role\(s\):** DEL_HAB0

**Functionality:** getByLot

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;SimpleDeliveryDTO&gt;&gt;


### <span api-method=GET>GET</span> /delivery?dto
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L459-L472)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** findAllSimpleDTO

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;SimpleDeliveryDTO&gt;&gt;


### <span api-method=GET>GET</span> /delivery?previouscheckslip
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L474-L485)


**Required Role\(s\):** DEL_HAB0

**Functionality:** getPreviousCheckSlips

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;SimpleDeliveryDTO&gt;&gt;


### <span api-method=GET>GET</span> /delivery?filterByProjectsLots
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L495-L508)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getSimpleByProjectsLots

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|filteredProjects|List<String>|no|`None`|


**Response Body:** ResponseEntity&lt;Collection&lt;SimpleDeliveryDTO&gt;&gt;


### <span api-method=GET>GET</span> /delivery?project
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L521-L533)


**Required Role\(s\):** DEL_HAB0

**Functionality:** findAllForProject

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;DeliveryDTO&gt;&gt;


### <span api-method=GET>GET</span> /delivery?docUnit", "latest
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L535-L545)


**Required Role\(s\):** DEL_HAB0

**Functionality:** findLatestDelivery

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DeliveryDTO&gt;


### <span api-method=GET>GET</span> /delivery?delivstatus
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L547-L563)


**Required Role\(s\):** DEL_HAB0

**Functionality:** getDeliveryStatus

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Map&lt;String, Object&gt;&gt;


### <span api-method=GET>GET</span> /delivery?diskspace", "widget
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L608-L621)


**Required Role\(s\):** DEL_HAB0

**Functionality:** getDiskInfos

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Map&lt;String, Long&gt;&gt;


### <span api-method=POST>POST</span> /delivery
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L363-L380)


**Required Role\(s\):** DEL_HAB1

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DeliveryDTO&gt;

---
# /delivery/\{id\}

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /delivery/\{id\}?deliver
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L166-L194)


**Required Role\(s\):** 
- DEL_HAB5
- DEL_HAB5_2

**Functionality:** deliver

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|create_docs|boolean|no|`false`|


**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=POST>POST</span> /delivery/\{id\}
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L401-L422)


**Required Role\(s\):** 
- DEL_HAB2
- DEL_HAB8

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DeliveryDTO&gt;


### <span api-method=POST>POST</span> /delivery/\{id\}?detachDoc
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L565-L578)


**Required Role\(s\):** DEL_HAB8

**Functionality:** detachDigitalDoc

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DeliveryDTO&gt;


### <span api-method=GET>GET</span> /delivery/\{id\}?predeliver
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L202-L216)


**Required Role\(s\):** 
- DEL_HAB5
- DEL_HAB5_2

**Functionality:** predeliver

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;PreDeliveryDTO&gt;


### <span api-method=GET>GET</span> /delivery/\{id\}?digitalDocuments
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L286-L317)


**Required Role\(s\):** DEL_HAB0

**Functionality:** getSimpleDigitalDocuments

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;SimpleDeliveredDigitalDocDTO&gt;&gt;


### <span api-method=GET>GET</span> /delivery/\{id\}?deliverySample
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L319-L329)


**Required Role\(s\):** DEL_HAB0

**Functionality:** getSample

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;SampleDTO&gt;


### <span api-method=GET>GET</span> /delivery/\{id\}?checkConfig
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L331-L340)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getActiveCheckConfig

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;CheckConfigurationDTO&gt;


### <span api-method=GET>GET</span> /delivery/\{id\}?deliveryReport
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L342-L361)


**Required Role\(s\):** DEL_HAB0

**Functionality:** getDeliveryReport

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=GET>GET</span> /delivery/\{id\}
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L437-L446)


**Required Role\(s\):** DEL_HAB0

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DeliveryDTO&gt;


### <span api-method=GET>GET</span> /delivery/\{id\}?duplicate
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L487-L493)


**Required Role\(s\):** 
- DEL_HAB2
- DEL_HAB8

**Functionality:** duplicate

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DeliveryDTO&gt;


### <span api-method=GET>GET</span> /delivery/\{id\}?forViewer
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L510-L519)


**Required Role\(s\):** DEL_HAB0

**Functionality:** getSimpleForViewer

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;SimpleDeliveryForViewerDTO&gt;


### <span api-method=GET>GET</span> /delivery/\{id\}?delivprogress
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L586-L603)


**Required Role\(s\):** DEL_HAB0

**Functionality:** getDeliveryProgress

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;String&gt;&gt;


### <span api-method=DELETE>DELETE</span> /delivery/\{id\}
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L382-L399)


**Required Role\(s\):** DEL_HAB3

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;

---
# /delivery_configuration/\{id\}

### <span api-method=GET>GET</span> /delivery_configuration/\{id\}
**Implementation:** [DeliveryConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryConfigurationController.java#L48-L59)


**Required Role\(s\):** DEL_HAB0

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DeliverySlipConfiguration&gt;


### <span api-method=POST>POST</span> /delivery_configuration/\{id\}
**Implementation:** [DeliveryConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryConfigurationController.java#L61-L72)


**Required Role\(s\):** DEL_HAB2

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DeliverySlipConfiguration&gt;

---
# /delivery/csv/\{id\}

### <span api-method=GET>GET</span> /delivery/csv/\{id\}
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L218-L233)


**Required Role\(s\):** DEL_HAB0

**Functionality:** generateSlipCSV

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|encoding|String|no|`None`|




---
# /delivery/lot_csv/\{id\}

### <span api-method=GET>GET</span> /delivery/lot_csv/\{id\}
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L252-L268)


**Required Role\(s\):** DEL_HAB0

**Functionality:** generateSlipLotCSV

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|encoding|String|no|`None`|




---
# /delivery/lot_pdf/\{id\}

### <span api-method=GET>GET</span> /delivery/lot_pdf/\{id\}
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L270-L284)


**Required Role\(s\):** DEL_HAB0

**Functionality:** generateSlipLotPDF

**Request Body:** TODO





---
# /delivery/pdf/\{id\}

### <span api-method=GET>GET</span> /delivery/pdf/\{id\}
**Implementation:** [DeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/delivery/DeliveryController.java#L235-L250)


**Required Role\(s\):** DEL_HAB0

**Functionality:** generateSlipPDF

**Request Body:** TODO





---
# /digitaldocument/\{identifier\}

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /digitaldocument/\{identifier\}?thumbnail
**Implementation:** [DigitalDocumentController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DigitalDocumentController.java#L93-L104)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getThumbnailById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=GET>GET</span> /digitaldocument/\{identifier\}?view
**Implementation:** [DigitalDocumentController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DigitalDocumentController.java#L110-L122)


**Required Role\(s\):** CHECK_HAB3

**Functionality:** getViewById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=GET>GET</span> /digitaldocument/\{identifier\}
**Implementation:** [DigitalDocumentController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DigitalDocumentController.java#L127-L137)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** getByIdWithPageCount

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DigitalDocumentDTO&gt;


### <span api-method=GET>GET</span> /digitaldocument/\{identifier\}?docUnit
**Implementation:** [DigitalDocumentController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DigitalDocumentController.java#L142-L150)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getConfigurationCheck

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;CheckConfigurationDTO&gt;


### <span api-method=GET>GET</span> /digitaldocument/\{identifier\}?deliverynotes
**Implementation:** [DigitalDocumentController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DigitalDocumentController.java#L152-L162)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getDeliveryNotes

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Map&lt;String, String&gt;&gt;


### <span api-method=GET>GET</span> /digitaldocument/\{identifier\}?filename
**Implementation:** [DigitalDocumentController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DigitalDocumentController.java#L167-L176)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getFilename

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;String&gt;


### <span api-method=GET>GET</span> /digitaldocument/\{identifier\}?masterPdfInfos
**Implementation:** [DigitalDocumentController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DigitalDocumentController.java#L181-L191)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** getMasterPdfInfos

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;String[]&gt;


### <span api-method=GET>GET</span> /digitaldocument/\{identifier\}?metadata
**Implementation:** [DigitalDocumentController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DigitalDocumentController.java#L193-L201)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getMetadataForFiles

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Map&lt;String, Map&lt;String, String&gt;&gt;&gt;


### <span api-method=GET>GET</span> /digitaldocument/\{identifier\}?samplemetadata
**Implementation:** [DigitalDocumentController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DigitalDocumentController.java#L203-L211)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getMetadataForSample

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Map&lt;String, Map&lt;String, String&gt;&gt;&gt;


### <span api-method=GET>GET</span> /digitaldocument/\{identifier\}?filenamesErrors
**Implementation:** [DigitalDocumentController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DigitalDocumentController.java#L216-L225)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getFilenamesWithErrors

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;String&gt;&gt;


### <span api-method=GET>GET</span> /digitaldocument/\{identifier\}?filesErrors
**Implementation:** [DigitalDocumentController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DigitalDocumentController.java#L230-L239)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getFileNumbersWithErrors

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;Integer&gt;&gt;


### <span api-method=GET>GET</span> /digitaldocument/\{identifier\}?page
**Implementation:** [DigitalDocumentController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DigitalDocumentController.java#L329-L337)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getPage

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;SimpleDocPageDTO&gt;


### <span api-method=GET>GET</span> /digitaldocument/\{identifier\}?nbPieces
**Implementation:** [DigitalDocumentController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DigitalDocumentController.java#L401-L411)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getPiecesNumber

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Map&lt;String, String&gt;&gt;


### <span api-method=POST>POST</span> /digitaldocument/\{identifier\}?checksOK", "sampling
**Implementation:** [DigitalDocumentController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DigitalDocumentController.java#L244-L296)


**Required Role\(s\):** CHECK_HAB4

**Functionality:** endChecks

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|checksOK|boolean|no|`None`|


**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=POST>POST</span> /digitaldocument/\{identifier\}
**Implementation:** [DigitalDocumentController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DigitalDocumentController.java#L301-L310)


**Required Role\(s\):** DOC_UNIT_HAB2

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DigitalDocumentDTO&gt;

---
# /digitaldocument

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /digitaldocument?toCheck
**Implementation:** [DigitalDocumentController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DigitalDocumentController.java#L315-L324)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** getAllDocumentsToCheck

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;SimpleDigitalDocumentDTO&gt;&gt;


### <span api-method=GET>GET</span> /digitaldocument?search
**Implementation:** [DigitalDocumentController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DigitalDocumentController.java#L342-L382)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|search|String|no|`None`|
|status|List<String>|no|`None`|
|libraries|List<String>|no|`None`|
|projects|List<String>|no|`None`|
|lots|List<String>|no|`None`|
|trains|List<String>|no|`None`|
|deliveries|List<String>|no|`None`|
|page|Integer|no|`0`|
|dateFrom|LocalDate|no|`None`|
|dateTo|LocalDate|no|`None`|
|dateLimitFrom|LocalDate|no|`None`|
|dateLimitTo|LocalDate|no|`None`|
|searchPgcnId|String|no|`None`|
|searchTitre|String|no|`None`|
|searchRadical|String|no|`None`|
|fileFormats|List<String>|no|`None`|
|maxAngles|List<String>|no|`None`|
|searchPageFrom|Integer|no|`None`|
|searchPageTo|Integer|no|`None`|
|searchPageCheckFrom|Long|no|`None`|
|searchPageCheckTo|Long|no|`None`|
|searchMinSize|Double|no|`None`|
|searchMaxSize|Double|no|`None`|
|validated|boolean|no|`None`|
|size|Integer|no|``|


**Response Body:** ResponseEntity&lt;Page&lt;SimpleListDigitalDocumentDTO&gt;&gt;

---
# /docpropertytype

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /docpropertytype
**Implementation:** [DocPropertyTypeController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocPropertyTypeController.java#L42-L47)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** findAll

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;DocPropertyType&gt;&gt;


### <span api-method=GET>GET</span> /docpropertytype?dto
**Implementation:** [DocPropertyTypeController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocPropertyTypeController.java#L49-L54)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** findAllDto

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;DocPropertyTypeDTO&gt;&gt;


### <span api-method=GET>GET</span> /docpropertytype?customOnly
**Implementation:** [DocPropertyTypeController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocPropertyTypeController.java#L56-L61)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** findAllCustomDto

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;DocPropertyTypeDTO&gt;&gt;


### <span api-method=GET>GET</span> /docpropertytype?dto", "supertype
**Implementation:** [DocPropertyTypeController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocPropertyTypeController.java#L63-L70)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** findAllBySuperType

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;DocPropertyTypeDTO&gt;&gt;


### <span api-method=POST>POST</span> /docpropertytype
**Implementation:** [DocPropertyTypeController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocPropertyTypeController.java#L79-L93)


**Required Role\(s\):** DOC_UNIT_HAB5

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DocPropertyType&gt;

---
# /docpropertytype/\{id\}

### <span api-method=GET>GET</span> /docpropertytype/\{id\}
**Implementation:** [DocPropertyTypeController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocPropertyTypeController.java#L72-L77)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DocPropertyType&gt;


### <span api-method=DELETE>DELETE</span> /docpropertytype/\{id\}
**Implementation:** [DocPropertyTypeController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocPropertyTypeController.java#L95-L109)


**Required Role\(s\):** DOC_UNIT_HAB5

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DocPropertyType&gt;


### <span api-method=POST>POST</span> /docpropertytype/\{id\}
**Implementation:** [DocPropertyTypeController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocPropertyTypeController.java#L111-L118)


**Required Role\(s\):** DOC_UNIT_HAB5

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DocPropertyType&gt;

---
# /docunit

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /docunit
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L109-L123)


**Required Role\(s\):** DOC_UNIT_HAB1

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DocUnitDTO&gt;


### <span api-method=POST>POST</span> /docunit?delete
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L137-L145)


**Required Role\(s\):** DOC_UNIT_HAB3

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;DocUnitDeletedReportDTO&gt;&gt;


### <span api-method=POST>POST</span> /docunit?updateselection
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L152-L169)


**Required Role\(s\):** DOC_UNIT_HAB2

**Functionality:** updateSelection

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;DocUnitUpdateErrorDTO&gt;&gt;


### <span api-method=POST>POST</span> /docunit?deleteDocUnitsProject
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L171-L180)


**Required Role\(s\):** DOC_UNIT_HAB3

**Functionality:** deleteDocUnitsProject

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;DocUnitDeletedReportDTO&gt;&gt;


### <span api-method=POST>POST</span> /docunit?removeAllFromLot
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L182-L189)


**Required Role\(s\):** DOC_UNIT_HAB3

**Functionality:** removeAllFromLot

**Request Body:** TODO






### <span api-method=POST>POST</span> /docunit?unlink
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L191-L206)


**Required Role\(s\):** DOC_UNIT_HAB3

**Functionality:** unlink

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;DocUnitDeletedReportDTO&gt;&gt;


### <span api-method=POST>POST</span> /docunit?createProjectFromDoc
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L208-L215)


**Required Role\(s\):** DOC_UNIT_HAB3

**Functionality:** createProjectFromDoc

**Request Body:** TODO






### <span api-method=POST>POST</span> /docunit?searchAsList
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L271-L291)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** searchAsList

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|page|Integer|no|`0`|
|size|Integer|no|``|


**Response Body:** ResponseEntity&lt;Page&lt;SimpleListDocUnitDTO&gt;&gt;


### <span api-method=POST>POST</span> /docunit?searchAsMinList
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L293-L303)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** searchAsMinList

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;MinimalListDocUnitDTO&gt;&gt;


### <span api-method=POST>POST</span> /docunit?projectAndLot
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L345-L355)


**Required Role\(s\):** DOC_UNIT_HAB2

**Functionality:** setProjectLotAndTrain

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|project|String|no|`None`|
|lot|String|no|`None`|





### <span api-method=POST>POST</span> /docunit?setTrain
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L357-L371)


**Required Role\(s\):** DOC_UNIT_HAB2

**Functionality:** setTrain

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=POST>POST</span> /docunit?addchild
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L458-L468)


**Required Role\(s\):** DOC_UNIT_HAB2

**Functionality:** addChildren

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|parent|String|no|`None`|


**Response Body:** ResponseEntity&lt;DocUnitDTO&gt;


### <span api-method=POST>POST</span> /docunit?removechild
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L475-L486)


**Required Role\(s\):** DOC_UNIT_HAB2

**Functionality:** removeChildren

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|parent|String|no|`None`|


**Response Body:** ResponseEntity&lt;DocUnitDTO&gt;


### <span api-method=POST>POST</span> /docunit?addsibling
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L508-L518)


**Required Role\(s\):** DOC_UNIT_HAB2

**Functionality:** addSibling

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|siblingid|String|no|`None`|


**Response Body:** ResponseEntity&lt;DocUnitDTO&gt;


### <span api-method=POST>POST</span> /docunit?removesibling
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L525-L537)


**Required Role\(s\):** DOC_UNIT_HAB2

**Functionality:** removeSibling

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|siblingid|String|no|`None`|


**Response Body:** ResponseEntity&lt;DocUnitDTO&gt;


### <span api-method=GET>GET</span> /docunit?search
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L217-L258)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|search|String|no|`None`|
|hasDigitalDocuments|boolean|no|`false`|
|active|boolean|no|`true`|
|archived|boolean|no|`false`|
|nonArchived|boolean|no|`false`|
|archivable|boolean|no|`false`|
|nonArchivable|boolean|no|`false`|
|distributed|boolean|no|`false`|
|nonDistributed|boolean|no|`false`|
|distributable|boolean|no|`false`|
|nonDistributable|boolean|no|`false`|
|libraries|List<String>|no|`None`|
|projects|List<String>|no|`None`|
|lots|List<String>|no|`None`|
|statuses|List<String>|no|`None`|
|lastModifiedDateFrom|LocalDate|no|`None`|
|lastModifiedDateTo|LocalDate|no|`None`|
|createdDateFrom|LocalDate|no|`None`|
|createdDateTo|LocalDate|no|`None`|
|page|Integer|no|`0`|
|size|Integer|no|``|


**Response Body:** ResponseEntity&lt;Page&lt;SimpleDocUnitDTO&gt;&gt;


### <span api-method=GET>GET</span> /docunit?searchAllForProject", "project
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L260-L269)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** searchAllForProject

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|project|String|no|`None`|
|page|Integer|no|`0`|


**Response Body:** ResponseEntity&lt;Page&lt;SummaryDocUnitWithLotDTO&gt;&gt;


### <span api-method=GET>GET</span> /docunit?dto
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L305-L311)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** findAllDTO

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;SimpleDocUnitDTO&gt;&gt;


### <span api-method=GET>GET</span> /docunit?project
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L414-L424)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** findAllForProject

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;SummaryDocUnitWithLotDTO&gt;&gt;


### <span api-method=GET>GET</span> /docunit?lot
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L426-L435)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** findAllForLot

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;SummaryDocUnitDTO&gt;&gt;


### <span api-method=GET>GET</span> /docunit?parent
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L442-L451)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** getChildrenByParentId

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;DocUnitDTO&gt;&gt;


### <span api-method=GET>GET</span> /docunit?sibling
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L493-L501)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** getSiblingsByDocUnitId

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;DocUnitDTO&gt;&gt;


### <span api-method=GET>GET</span> /docunit?export
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L544-L566)


**Required Role\(s\):** DOC_UNIT_HAB4

**Functionality:** massExport

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|docs|List<String>|no|`None`|
|types|List<String>|no|`METS,VIEW`|





### <span api-method=GET>GET</span> /docunit?export_ftp
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L573-L601)


**Required Role\(s\):** DOC_UNIT_HAB4

**Functionality:** massExportFtp

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|docs|List<String>|no|`None`|


**Response Body:** ResponseEntity&lt;?&gt;

---
# /docunit/\{identifier\}

> Doesn't respect oas v3.1.


### <span api-method=DELETE>DELETE</span> /docunit/\{identifier\}
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L125-L135)


**Required Role\(s\):** DOC_UNIT_HAB3

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DocUnitDeletedReportDTO&gt;


### <span api-method=GET>GET</span> /docunit/\{identifier\}
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L313-L320)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DocUnitDTO&gt;


### <span api-method=GET>GET</span> /docunit/\{identifier\}?lock
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L603-L620)


**Required Role\(s\):** DOC_UNIT_HAB2

**Functionality:** lock

**Request Body:** TODO






### <span api-method=GET>GET</span> /docunit/\{identifier\}?unlock
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L622-L639)


**Required Role\(s\):** DOC_UNIT_HAB2

**Functionality:** unlock

**Request Body:** TODO






### <span api-method=POST>POST</span> /docunit/\{identifier\}
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L322-L343)


**Required Role\(s\):** DOC_UNIT_HAB2

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DocUnitDTO&gt;


### <span api-method=POST>POST</span> /docunit/\{identifier\}?removeProject
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L378-L388)


**Required Role\(s\):** DOC_UNIT_HAB2

**Functionality:** removeFromProject

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=POST>POST</span> /docunit/\{identifier\}?removeLot
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L390-L400)


**Required Role\(s\):** DOC_UNIT_HAB2

**Functionality:** removeLot

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=POST>POST</span> /docunit/\{identifier\}?removeTrain
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L402-L412)


**Required Role\(s\):** DOC_UNIT_HAB2

**Functionality:** removeTrain

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=POST>POST</span> /docunit/\{identifier\}?inactiveDoc
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L641-L653)


**Required Role\(s\):** DOC_UNIT_HAB2

**Functionality:** inactive

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DocUnitDTO&gt;

---
# /docunit/initHistory

### <span api-method=GET>GET</span> /docunit/initHistory
**Implementation:** [DocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/DocUnitController.java#L99-L107)


**Required Role\(s\):** DOC_UNIT_HAB3

**Functionality:** initDocCheckHistory

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;

---
# /downloadlogsfile

### <span api-method=GET>GET</span> /downloadlogsfile?logFile
**Implementation:** [AdminLogsController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/logs/AdminLogsController.java#L38-L65)


**Required Role\(s\):** DEL_HAB0

**Functionality:** getLogFile

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;

---
# /export/cines/\{identifier\}

### <span api-method=GET>GET</span> /export/cines/\{identifier\}?export
**Implementation:** [ExportCinesController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ExportCinesController.java#L75-L84)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** getDcById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;BibliographicRecordDcDTO&gt;


### <span api-method=POST>POST</span> /export/cines/\{id\}?save
**Implementation:** [ExportCinesController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ExportCinesController.java#L86-L97)


**Required Role\(s\):** DOC_UNIT_HAB4

**Functionality:** saveExportData

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;

---
# /export/cines

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /export/cines?send", "dc
**Implementation:** [ExportCinesController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ExportCinesController.java#L103-L111)


**Required Role\(s\):** DOC_UNIT_HAB4

**Functionality:** exportDocUnitToCinesWithDc

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|docUnit|String|no|`None`|
|conf|SftpConfiguration|no|`None`|
|reversion|boolean|no|`false`|


**Response Body:** ResponseEntity&lt;CinesReport&gt;


### <span api-method=POST>POST</span> /export/cines?send", "ead
**Implementation:** [ExportCinesController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ExportCinesController.java#L117-L125)


**Required Role\(s\):** DOC_UNIT_HAB4

**Functionality:** exportDocUnitToCinesWithEad

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|docUnit|String|no|`None`|
|conf|SftpConfiguration|no|`None`|


**Response Body:** ResponseEntity&lt;CinesReport&gt;


### <span api-method=GET>GET</span> /export/cines?check_mailbox
**Implementation:** [ExportCinesController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ExportCinesController.java#L131-L171)


**Required Role\(s\):** DOC_UNIT_HAB4

**Functionality:** checkMailbox

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=GET>GET</span> /export/cines?aip", "docUnit
**Implementation:** [ExportCinesController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ExportCinesController.java#L173-L188)


**Required Role\(s\):** DOC_UNIT_HAB4

**Functionality:** getAip

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=GET>GET</span> /export/cines?sip", "docUnit
**Implementation:** [ExportCinesController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ExportCinesController.java#L190-L207)


**Required Role\(s\):** DOC_UNIT_HAB4

**Functionality:** getSip

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|docUnit|String|no|`None`|


**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=GET>GET</span> /export/cines?mets", "docUnit
**Implementation:** [ExportCinesController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ExportCinesController.java#L209-L225)


**Required Role\(s\):** DOC_UNIT_HAB4

**Functionality:** getMets

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|docUnit|String|no|`None`|


**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=GET>GET</span> /export/cines?mass_export
**Implementation:** [ExportCinesController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ExportCinesController.java#L230-L244)


**Required Role\(s\):** DOC_UNIT_HAB4

**Functionality:** massExport

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;

---
# /export/cines/regenerateMets

### <span api-method=GET>GET</span> /export/cines/regenerateMets
**Implementation:** [ExportCinesController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ExportCinesController.java#L249-L257)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** regenerateMets

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;

---
# /export/csv

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /export/csv?docUnit
**Implementation:** [ExportController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ExportController.java#L68-L98)


**Required Role\(s\):** DOC_UNIT_HAB4

**Functionality:** exportDocUnitToCsv

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|docUnit|List<String>|no|`None`|
|field|List<String>|no|`None`|
|docfield|List<String>|no|`None`|
|bibfield|List<String>|no|`None`|
|physfield|List<String>|no|`None`|
|encoding|String|no|`ISO-8859-15`|





### <span api-method=GET>GET</span> /export/csv?lot
**Implementation:** [ExportController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ExportController.java#L100-L129)


**Required Role\(s\):** DOC_UNIT_HAB4

**Functionality:** exportLotToCsv

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|lot|String|no|`None`|
|field|List<String>|no|`None`|
|docfield|List<String>|no|`None`|
|bibfield|List<String>|no|`None`|
|physfield|List<String>|no|`None`|
|encoding|String|no|`ISO-8859-15`|




---
# /export/digitalLibrary

### <span api-method=POST>POST</span> /export/digitalLibrary?send
**Implementation:** [DigitalLibraryDiffusionController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/digitallibrary/DigitalLibraryDiffusionController.java#L65-L90)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** exportDocUnitToDigitalLibrary

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=GET>GET</span> /export/digitalLibrary?mass_export
**Implementation:** [DigitalLibraryDiffusionController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/digitallibrary/DigitalLibraryDiffusionController.java#L96-L116)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** massExport

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;HttpStatus&gt;

---
# /export/ead

### <span api-method=GET>GET</span> /export/ead
**Implementation:** [ExportController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ExportController.java#L163-L176)


**Required Role\(s\):** DOC_UNIT_HAB4

**Functionality:** getEad

**Request Body:** TODO





---
# /exportftpconfiguration

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /exportftpconfiguration
**Implementation:** [ExportFTPConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exportftpconfiguration/ExportFTPConfigurationController.java#L52-L66)


**Required Role\(s\):** EXP_FTP_HAB1

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ExportFTPConfigurationDTO&gt;


### <span api-method=GET>GET</span> /exportftpconfiguration?search
**Implementation:** [ExportFTPConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exportftpconfiguration/ExportFTPConfigurationController.java#L89-L100)


**Required Role\(s\):** EXP_FTP_HAB0

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|search|String|no|`None`|
|libraries|List<String>|no|`None`|
|page|Integer|no|`0`|


**Response Body:** ResponseEntity&lt;Page&lt;SimpleExportFTPConfDTO&gt;&gt;


### <span api-method=GET>GET</span> /exportftpconfiguration?project", "fullConfig
**Implementation:** [ExportFTPConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exportftpconfiguration/ExportFTPConfigurationController.java#L123-L134)


**Required Role\(s\):** EXP_FTP_HAB0

**Functionality:** getByProjectId

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|project|String|no|`None`|


**Response Body:** ResponseEntity&lt;List&lt;? extends AbstractDTO&gt;&gt;


### <span api-method=GET>GET</span> /exportftpconfiguration?libraryId
**Implementation:** [ExportFTPConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exportftpconfiguration/ExportFTPConfigurationController.java#L136-L143)


**Required Role\(s\):** EXP_FTP_HAB0

**Functionality:** getByLibraryId

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;? extends AbstractDTO&gt;&gt;

---
# /exportftpconfiguration/\{id\}

### <span api-method=DELETE>DELETE</span> /exportftpconfiguration/\{id\}
**Implementation:** [ExportFTPConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exportftpconfiguration/ExportFTPConfigurationController.java#L68-L87)


**Required Role\(s\):** EXP_FTP_HAB2

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ExportFTPConfigurationDTO&gt;


### <span api-method=GET>GET</span> /exportftpconfiguration/\{id\}
**Implementation:** [ExportFTPConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exportftpconfiguration/ExportFTPConfigurationController.java#L102-L121)


**Required Role\(s\):** EXP_FTP_HAB0

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ExportFTPConfigurationDTO&gt;


### <span api-method=POST>POST</span> /exportftpconfiguration/\{id\}
**Implementation:** [ExportFTPConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exportftpconfiguration/ExportFTPConfigurationController.java#L145-L172)


**Required Role\(s\):** EXP_FTP_HAB1

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ExportFTPConfigurationDTO&gt;

---
# /export/omeka

### <span api-method=POST>POST</span> /export/omeka?sendomeka
**Implementation:** [ExportOmekaController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/omeka/ExportOmekaController.java#L68-L92)


**Required Role\(s\):** DOC_UNIT_HAB4

**Functionality:** exportDocUnitToOmekaWithDc

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=GET>GET</span> /export/omeka?mass_export
**Implementation:** [ExportOmekaController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/omeka/ExportOmekaController.java#L98-L117)


**Required Role\(s\):** DOC_UNIT_HAB4

**Functionality:** massExport

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;HttpStatus&gt;

---
# /export/rdfxml

### <span api-method=GET>GET</span> /export/rdfxml
**Implementation:** [ExportController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ExportController.java#L131-L161)


**Required Role\(s\):** DOC_UNIT_HAB4

**Functionality:** exportDocUnitToRdfxml

**Request Body:** TODO





---
# /filecleaning/deleteorphans

### <span api-method=GET>GET</span> /filecleaning/deleteorphans
**Implementation:** [FileCleaningController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/utils/FileCleaningController.java#L44-L54)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** cleanOrphanFiles

**Request Body:** TODO





---
# /filesgestionconfig/\{idLibrary\}

### <span api-method=GET>GET</span> /filesgestionconfig/\{idLibrary\}
**Implementation:** [FilesGestionConfigController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/filesgestionconfiguration/FilesGestionConfigController.java#L32-L40)


**Required Role\(s\):** FILES_GEST_HAB0

**Functionality:** getByLibrary

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;FilesGestionConfigDTO&gt;


### <span api-method=POST>POST</span> /filesgestionconfig/\{id\}
**Implementation:** [FilesGestionConfigController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/filesgestionconfiguration/FilesGestionConfigController.java#L42-L52)


**Required Role\(s\):** FILES_GEST_HAB0

**Functionality:** saveConfig

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;FilesGestionConfigDTO&gt;

---
# /filesgestionconfig

### <span api-method=POST>POST</span> /filesgestionconfig
**Implementation:** [FilesGestionConfigController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/filesgestionconfiguration/FilesGestionConfigController.java#L54-L62)


**Required Role\(s\):** FILES_GEST_HAB0

**Functionality:** createConfig

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;FilesGestionConfigDTO&gt;

---
# /ftpconfiguration

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /ftpconfiguration
**Implementation:** [FTPConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/ftpconfiguration/FTPConfigurationController.java#L49-L63)


**Required Role\(s\):** FTP_HAB1

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;FTPConfigurationDTO&gt;


### <span api-method=GET>GET</span> /ftpconfiguration?search
**Implementation:** [FTPConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/ftpconfiguration/FTPConfigurationController.java#L85-L96)


**Required Role\(s\):** FTP_HAB0

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|search|String|no|`None`|
|libraries|List<String>|no|`None`|
|page|Integer|no|`0`|


**Response Body:** ResponseEntity&lt;Page&lt;SimpleFTPConfigurationDTO&gt;&gt;


### <span api-method=GET>GET</span> /ftpconfiguration?project
**Implementation:** [FTPConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/ftpconfiguration/FTPConfigurationController.java#L119-L128)


**Required Role\(s\):** FTP_HAB0

**Functionality:** getByProjectId

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;SimpleFTPConfigurationDTO&gt;&gt;

---
# /ftpconfiguration/\{id\}

### <span api-method=DELETE>DELETE</span> /ftpconfiguration/\{id\}
**Implementation:** [FTPConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/ftpconfiguration/FTPConfigurationController.java#L65-L83)


**Required Role\(s\):** FTP_HAB2

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;FTPConfigurationDTO&gt;


### <span api-method=GET>GET</span> /ftpconfiguration/\{id\}
**Implementation:** [FTPConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/ftpconfiguration/FTPConfigurationController.java#L98-L117)


**Required Role\(s\):** FTP_HAB0

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;FTPConfigurationDTO&gt;


### <span api-method=POST>POST</span> /ftpconfiguration/\{id\}
**Implementation:** [FTPConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/ftpconfiguration/FTPConfigurationController.java#L130-L156)


**Required Role\(s\):** FTP_HAB1

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;FTPConfigurationDTO&gt;

---
# /help

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /help
**Implementation:** [HelpPageController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/help/HelpPageController.java#L31-L38)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|modules|List<String>|no|`None`|
|types|List<HelpPageType>|no|`None`|


**Response Body:** ResponseEntity&lt;List&lt;ModuleDto&gt;&gt;


### <span api-method=GET>GET</span> /help?tag
**Implementation:** [HelpPageController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/help/HelpPageController.java#L40-L44)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** searchByTag

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;HelpPageDto&gt;


### <span api-method=GET>GET</span> /help?modulelist
**Implementation:** [HelpPageController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/help/HelpPageController.java#L71-L75)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** findAllLevels

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;String&gt;&gt;


### <span api-method=POST>POST</span> /help
**Implementation:** [HelpPageController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/help/HelpPageController.java#L65-L69)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;HelpPage&gt;

---
# /help/\{id\}

### <span api-method=GET>GET</span> /help/\{id\}
**Implementation:** [HelpPageController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/help/HelpPageController.java#L46-L50)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;HelpPage&gt;


### <span api-method=POST>POST</span> /help/\{id\}
**Implementation:** [HelpPageController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/help/HelpPageController.java#L52-L56)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** save

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;HelpPage&gt;


### <span api-method=DELETE>DELETE</span> /help/\{id\}
**Implementation:** [HelpPageController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/help/HelpPageController.java#L58-L63)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** delete

**Request Body:** TODO





---
# /imagemetadata

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /imagemetadata
**Implementation:** [ImageMetadataController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/imagemetadata/ImageMetadataController.java#L38-L43)


**Required Role\(s\):** DOC_UNIT_HAB5

**Functionality:** findAll

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;ImageMetadataProperty&gt;&gt;


### <span api-method=GET>GET</span> /imagemetadata?getMetaValues
**Implementation:** [ImageMetadataController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/imagemetadata/ImageMetadataController.java#L83-L93)


**Required Role\(s\):** DOC_UNIT_HAB5

**Functionality:** getMetaValues

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;ImageMetadataValue&gt;&gt;


### <span api-method=POST>POST</span> /imagemetadata
**Implementation:** [ImageMetadataController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/imagemetadata/ImageMetadataController.java#L45-L52)


**Required Role\(s\):** DOC_UNIT_HAB5

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ImageMetadataProperty&gt;


### <span api-method=POST>POST</span> /imagemetadata?saveList
**Implementation:** [ImageMetadataController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/imagemetadata/ImageMetadataController.java#L54-L62)


**Required Role\(s\):** DOC_UNIT_HAB5

**Functionality:** saveList

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;ImageMetadataProperty&gt;&gt;


### <span api-method=POST>POST</span> /imagemetadata?saveValues
**Implementation:** [ImageMetadataController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/imagemetadata/ImageMetadataController.java#L73-L81)


**Required Role\(s\):** DOC_UNIT_HAB5

**Functionality:** saveValues

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;ImageMetadataValue&gt;&gt;

---
# /imagemetadata/\{id\}

### <span api-method=POST>POST</span> /imagemetadata/\{id\}
**Implementation:** [ImageMetadataController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/imagemetadata/ImageMetadataController.java#L64-L71)


**Required Role\(s\):** DOC_UNIT_HAB5

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ImageMetadataProperty&gt;

---
# /impdocunit

### <span api-method=GET>GET</span> /impdocunit?report
**Implementation:** [ImportedDocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ImportedDocUnitController.java#L48-L72)


**Required Role\(s\):** EXC_HAB0

**Functionality:** findByImportReport

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|errors|boolean|no|`false`|


**Response Body:** ResponseEntity&lt;Page&lt;ImportedDocUnit&gt;&gt;

---
# /impdocunit/\{id\}

### <span api-method=POST>POST</span> /impdocunit/\{id\}?process
**Implementation:** [ImportedDocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ImportedDocUnitController.java#L74-L97)


**Required Role\(s\):** EXC_HAB2

**Functionality:** updateProcess

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;

---
# /import

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /import?mapping
**Implementation:** [ImportController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ImportController.java#L94-L217)


**Required Role\(s\):** EXC_HAB2

**Functionality:** importFile

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|file|List<MultipartFile>|no|`None`|
|format|FileFormat|no|`None`|
|encoding|DataEncoding|no|`UTF_8`|
|mapping|String|no|`None`|
|mappingChildren|String|no|`None`|
|parent|String|no|`None`|
|library|String|no|`None`|
|project|String|no|`None`|
|lot|String|no|`None`|
|join|String|no|`None`|
|validation|boolean|no|`false`|
|dedup|boolean|no|`false`|
|archivable|boolean|no|`false`|
|distributable|boolean|no|`false`|


**Response Body:** ResponseEntity&lt;ImportReport&gt;


### <span api-method=POST>POST</span> /import?import
**Implementation:** [ImportController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ImportController.java#L224-L254)


**Required Role\(s\):** EXC_HAB2

**Functionality:** importPreimportedDocUnits

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ImportReport&gt;

---
# /importreport

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /importreport?search
**Implementation:** [ImportReportController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ImportReportController.java#L52-L64)


**Required Role\(s\):** EXC_HAB0

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|search|String|no|`None`|
|users|List<String>|no|`None`|
|page|Integer|no|`0`|


**Response Body:** ResponseEntity&lt;Page&lt;ImportReport&gt;&gt;


### <span api-method=GET>GET</span> /importreport
**Implementation:** [ImportReportController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ImportReportController.java#L66-L79)


**Required Role\(s\):** EXC_HAB0

**Functionality:** findAll

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|page|int|no|`0`|
|size|int|no|`10`|


**Response Body:** ResponseEntity&lt;Page&lt;ImportReport&gt;&gt;

---
# /importreport/\{id\}

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /importreport/\{id\}
**Implementation:** [ImportReportController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ImportReportController.java#L81-L98)


**Required Role\(s\):** EXC_HAB0

**Functionality:** findOne

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ImportReport&gt;


### <span api-method=GET>GET</span> /importreport/\{id\}?status
**Implementation:** [ImportReportController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ImportReportController.java#L100-L119)


**Required Role\(s\):** EXC_HAB0

**Functionality:** getStatus

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Map&lt;String, Object&gt;&gt;


### <span api-method=GET>GET</span> /importreport/\{id\}?hasfile
**Implementation:** [ImportReportController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ImportReportController.java#L145-L173)


**Required Role\(s\):** EXC_HAB0

**Functionality:** hasImportFile

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Map&lt;?, ?&gt;&gt;


### <span api-method=GET>GET</span> /importreport/\{id\}?file
**Implementation:** [ImportReportController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ImportReportController.java#L175-L201)


**Required Role\(s\):** EXC_HAB0

**Functionality:** downloadImportFile

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=DELETE>DELETE</span> /importreport/\{id\}
**Implementation:** [ImportReportController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ImportReportController.java#L125-L143)


**Required Role\(s\):** EXC_HAB1

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;

---
# /internet_archive/\{id\}

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /internet_archive/\{id\}?prepare_item
**Implementation:** [ExportInternetArchiveController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ExportInternetArchiveController.java#L67-L85)


**Required Role\(s\):** EXPORT_INTERNET_ARCHIVE_HAB0

**Functionality:** prepare

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;InternetArchiveItemDTO&gt;


### <span api-method=POST>POST</span> /internet_archive/\{id\}?create
**Implementation:** [ExportInternetArchiveController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ExportInternetArchiveController.java#L87-L106)


**Required Role\(s\):** EXPORT_INTERNET_ARCHIVE_HAB0

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=POST>POST</span> /internet_archive/\{id\}?save
**Implementation:** [ExportInternetArchiveController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ExportInternetArchiveController.java#L111-L129)


**Required Role\(s\):** EXPORT_INTERNET_ARCHIVE_HAB0

**Functionality:** save

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;

---
# /internet_archive

### <span api-method=GET>GET</span> /internet_archive?mass_export
**Implementation:** [ExportInternetArchiveController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/ExportInternetArchiveController.java#L134-L151)


**Required Role\(s\):** EXPORT_INTERNET_ARCHIVE_HAB0

**Functionality:** massExport

**Request Body:** TODO





---
# /library

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /library
**Implementation:** [LibraryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/library/LibraryController.java#L74-L81)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;LibraryDTO&gt;


### <span api-method=GET>GET</span> /library?dto
**Implementation:** [LibraryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/library/LibraryController.java#L106-L112)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** findAllDTO

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;SimpleLibraryDTO&gt;&gt;


### <span api-method=GET>GET</span> /library?search
**Implementation:** [LibraryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/library/LibraryController.java#L114-L128)


**Required Role\(s\):** 
- LIB_HAB5
- LIB_HAB6
- LIB_HAB7

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|search|String|no|`None`|
|initiale|String|no|`None`|
|institutions|List<String>|no|`None`|
|isActive|boolean|no|`true`|
|page|Integer|no|`0`|


**Response Body:** ResponseEntity&lt;Page&lt;SimpleLibraryDTO&gt;&gt;

---
# /library/\{id\}

> Doesn't respect oas v3.1.


### <span api-method=DELETE>DELETE</span> /library/\{id\}
**Implementation:** [LibraryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/library/LibraryController.java#L83-L92)


**Required Role\(s\):** LIB_HAB3

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Library&gt;


### <span api-method=DELETE>DELETE</span> /library/\{id\}?logo
**Implementation:** [LibraryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/library/LibraryController.java#L301-L318)


**Required Role\(s\):** LIB_HAB2

**Functionality:** deleteLogo

**Request Body:** TODO






### <span api-method=GET>GET</span> /library/\{id\}?dto
**Implementation:** [LibraryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/library/LibraryController.java#L94-L104)


**Required Role\(s\):** 
- LIB_HAB5
- LIB_HAB6
- LIB_HAB7

**Functionality:** getDtoById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;LibraryDTO&gt;


### <span api-method=GET>GET</span> /library/\{id\}
**Implementation:** [LibraryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/library/LibraryController.java#L130-L139)


**Required Role\(s\):** 
- LIB_HAB5
- LIB_HAB6
- LIB_HAB7

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;LibraryDTO&gt;


### <span api-method=GET>GET</span> /library/\{id\}?providers
**Implementation:** [LibraryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/library/LibraryController.java#L141-L160)


**Required Role\(s\):** 
- LIB_HAB5
- LIB_HAB6
- LIB_HAB7

**Functionality:** getProviders

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;SimpleUserDTO&gt;&gt;


### <span api-method=GET>GET</span> /library/\{id\}?users
**Implementation:** [LibraryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/library/LibraryController.java#L162-L173)


**Required Role\(s\):** 
- LIB_HAB5
- LIB_HAB6
- LIB_HAB7

**Functionality:** getUsers

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;SimpleUserDTO&gt;&gt;


### <span api-method=GET>GET</span> /library/\{id\}?logo
**Implementation:** [LibraryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/library/LibraryController.java#L195-L221)


**Required Role\(s\):** 
- LIB_HAB5
- LIB_HAB6
- LIB_HAB7

**Functionality:** downloadLogo

**Request Body:** TODO






### <span api-method=GET>GET</span> /library/\{id\}?thumbnail
**Implementation:** [LibraryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/library/LibraryController.java#L231-L266)


**Required Role\(s\):** 
- LIB_HAB5
- LIB_HAB6
- LIB_HAB7

**Functionality:** downloadThumbnail

**Request Body:** TODO






### <span api-method=GET>GET</span> /library/\{id\}?logoexists
**Implementation:** [LibraryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/library/LibraryController.java#L275-L293)


**Required Role\(s\):** 
- LIB_HAB5
- LIB_HAB6
- LIB_HAB7

**Functionality:** hasLogo

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Map&lt;?, ?&gt;&gt;


### <span api-method=POST>POST</span> /library/\{id\}
**Implementation:** [LibraryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/library/LibraryController.java#L175-L185)


**Required Role\(s\):** LIB_HAB2

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;LibraryDTO&gt;


### <span api-method=POST>POST</span> /library/\{id\}?logo
**Implementation:** [LibraryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/library/LibraryController.java#L327-L350)


**Required Role\(s\):** LIB_HAB2

**Functionality:** uploadLogo

**Request Body:** TODO





---
# /libraryparameter

### <span api-method=POST>POST</span> /libraryparameter
**Implementation:** [LibraryParameterController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/library/LibraryParameterController.java#L53-L60)


**Required Role\(s\):** LIB_HAB1

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;LibraryParameterValuedDTO&gt;


### <span api-method=GET>GET</span> /libraryparameter?cinesdefaultvalues
**Implementation:** [LibraryParameterController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/library/LibraryParameterController.java#L88-L99)


**Required Role\(s\):** 
- LIB_HAB5
- LIB_HAB6
- LIB_HAB7

**Functionality:** getCinesDefaultValuesByLibrary

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;LibraryParameterValuedDTO&gt;

---
# /libraryparameter/\{id\}

### <span api-method=DELETE>DELETE</span> /libraryparameter/\{id\}
**Implementation:** [LibraryParameterController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/library/LibraryParameterController.java#L62-L68)


**Required Role\(s\):** LIB_HAB3

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;LibraryParameter&gt;


### <span api-method=GET>GET</span> /libraryparameter/\{id\}
**Implementation:** [LibraryParameterController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/library/LibraryParameterController.java#L70-L77)


**Required Role\(s\):** 
- LIB_HAB5
- LIB_HAB6
- LIB_HAB7

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;LibraryParameterDTO&gt;


### <span api-method=POST>POST</span> /libraryparameter/\{id\}
**Implementation:** [LibraryParameterController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/library/LibraryParameterController.java#L79-L86)


**Required Role\(s\):** LIB_HAB2

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;LibraryParameterValuedDTO&gt;

---
# /lot/\{id\}

> Doesn't respect oas v3.1.


### <span api-method=DELETE>DELETE</span> /lot/\{id\}
**Implementation:** [LotController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/lot/LotController.java#L87-L97)


**Required Role\(s\):** LOT_HAB2

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;LotDTO&gt;


### <span api-method=GET>GET</span> /lot/\{id\}
**Implementation:** [LotController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/lot/LotController.java#L240-L250)


**Required Role\(s\):** LOT_HAB3

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;LotDTO&gt;


### <span api-method=GET>GET</span> /lot/\{id\}?dto
**Implementation:** [LotController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/lot/LotController.java#L281-L292)


**Required Role\(s\):** LOT_HAB3

**Functionality:** getDtoById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;LotDTO&gt;


### <span api-method=POST>POST</span> /lot/\{id\}?unlinkProject
**Implementation:** [LotController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/lot/LotController.java#L339-L350)


**Required Role\(s\):** LOT_HAB1

**Functionality:** unlinkProject

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=POST>POST</span> /lot/\{id\}?validate
**Implementation:** [LotController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/lot/LotController.java#L352-L368)


**Required Role\(s\):** LOT_HAB4

**Functionality:** validateLot

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=POST>POST</span> /lot/\{id\}
**Implementation:** [LotController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/lot/LotController.java#L370-L381)


**Required Role\(s\):** LOT_HAB1

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;LotDTO&gt;

---
# /lot

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /lot?delete
**Implementation:** [LotController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/lot/LotController.java#L99-L107)


**Required Role\(s\):** LOT_HAB2

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Lot&gt;


### <span api-method=POST>POST</span> /lot?search
**Implementation:** [LotController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/lot/LotController.java#L133-L151)


**Required Role\(s\):** LOT_HAB3

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|page|Integer|no|`0`|
|size|Integer|no|`10`|


**Response Body:** ResponseEntity&lt;Page&lt;SimpleLotDTO&gt;&gt;


### <span api-method=POST>POST</span> /lot
**Implementation:** [LotController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/lot/LotController.java#L323-L337)


**Required Role\(s\):** LOT_HAB0

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;LotDTO&gt;


### <span api-method=POST>POST</span> /lot?project
**Implementation:** [LotController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/lot/LotController.java#L383-L391)


**Required Role\(s\):** LOT_HAB1

**Functionality:** setProject

**Request Body:** TODO






### <span api-method=POST>POST</span> /lot?cloturelot
**Implementation:** [LotController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/lot/LotController.java#L441-L453)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** closeLot

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;ResultAdminLotDTO&gt;&gt;


### <span api-method=POST>POST</span> /lot?decloturelot
**Implementation:** [LotController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/lot/LotController.java#L459-L469)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** declotureLot

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;ResultAdminLotDTO&gt;&gt;


### <span api-method=GET>GET</span> /lot?search
**Implementation:** [LotController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/lot/LotController.java#L109-L131)


**Required Role\(s\):** LOT_HAB3

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|search|String|no|`None`|
|libraries|List<String>|no|`None`|
|projects|List<String>|no|`None`|
|active|boolean|no|`true`|
|docNumber|Integer|no|`None`|
|fileFormat|List<String>|no|`None`|
|page|Integer|no|`0`|
|size|Integer|no|`10`|


**Response Body:** ResponseEntity&lt;Page&lt;SimpleLotDTO&gt;&gt;


### <span api-method=GET>GET</span> /lot?widget", "from
**Implementation:** [LotController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/lot/LotController.java#L153-L174)


**Required Role\(s\):** LOT_HAB3

**Functionality:** getLotsForWidget

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|from|LocalDate|no|`None`|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|


**Response Body:** ResponseEntity&lt;List&lt;AuditLotRevisionDTO&gt;&gt;


### <span api-method=GET>GET</span> /lot?simpleByProject", "project
**Implementation:** [LotController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/lot/LotController.java#L176-L188)


**Required Role\(s\):** LOT_HAB3

**Functionality:** findAllSimpleForProject

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;SimpleLotDTO&gt;&gt;


### <span api-method=GET>GET</span> /lot?filterByProjects", "projectIds
**Implementation:** [LotController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/lot/LotController.java#L190-L198)


**Required Role\(s\):** LOT_HAB3

**Functionality:** findAllIdentifiersForProjects

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;SimpleLotDTO&gt;&gt;


### <span api-method=GET>GET</span> /lot?dto", "libraries
**Implementation:** [LotController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/lot/LotController.java#L200-L208)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** findAllActiveByLibraries

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;LotListDTO&gt;&gt;


### <span api-method=GET>GET</span> /lot?dto", "projects
**Implementation:** [LotController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/lot/LotController.java#L210-L218)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** findAllActiveByProjects

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;LotListDTO&gt;&gt;


### <span api-method=GET>GET</span> /lot?dto", "complete", "libraries
**Implementation:** [LotController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/lot/LotController.java#L220-L228)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** findAllByLibraries

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;LotListDTO&gt;&gt;


### <span api-method=GET>GET</span> /lot?dto", "complete", "projects
**Implementation:** [LotController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/lot/LotController.java#L230-L238)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** findAllByProjects

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;LotListDTO&gt;&gt;


### <span api-method=GET>GET</span> /lot?project
**Implementation:** [LotController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/lot/LotController.java#L252-L264)


**Required Role\(s\):** LOT_HAB3

**Functionality:** findAllForProject

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;LotDTO&gt;&gt;


### <span api-method=GET>GET</span> /lot?project", "simpleForDocUnit
**Implementation:** [LotController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/lot/LotController.java#L266-L279)


**Required Role\(s\):** LOT_HAB3

**Functionality:** findSimpleForDocUnit

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;LotDTO&gt;&gt;


### <span api-method=GET>GET</span> /lot?dto", "lot
**Implementation:** [LotController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/lot/LotController.java#L294-L302)


**Required Role\(s\):** LOT_HAB3

**Functionality:** getDtoByIds

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;LotDTO&gt;&gt;


### <span api-method=GET>GET</span> /lot?dto
**Implementation:** [LotController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/lot/LotController.java#L304-L321)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** findAllDTO

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;LotListDTO&gt;&gt;

---
# /lot/csv/\{id\}

### <span api-method=GET>GET</span> /lot/csv/\{id\}
**Implementation:** [LotController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/lot/LotController.java#L393-L414)


**Required Role\(s\):** COND_REPORT_HAB0

**Functionality:** generateSlip

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|encoding|String|no|`None`|




---
# /lot/pdf/\{id\}

### <span api-method=GET>GET</span> /lot/pdf/\{id\}
**Implementation:** [LotController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/lot/LotController.java#L416-L435)


**Required Role\(s\):** COND_REPORT_HAB0

**Functionality:** generateSlipPdf

**Request Body:** TODO





---
# /mapping

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /mapping
**Implementation:** [MappingController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/MappingController.java#L63-L74)


**Required Role\(s\):** MAP_HAB1

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Mapping&gt;


### <span api-method=POST>POST</span> /mapping?import", "library
**Implementation:** [MappingController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/MappingController.java#L317-L342)


**Required Role\(s\):** MAP_HAB1

**Functionality:** importNewMapping

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|String|no|`None`|


**Response Body:** ResponseEntity&lt;Mapping&gt;


### <span api-method=GET>GET</span> /mapping
**Implementation:** [MappingController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/MappingController.java#L96-L133)


**Required Role\(s\):** MAP_HAB0

**Functionality:** findByLibraryAndType

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;MappingDTO&gt;&gt;


### <span api-method=GET>GET</span> /mapping?usable", "library
**Implementation:** [MappingController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/MappingController.java#L135-L148)


**Required Role\(s\):** MAP_HAB0

**Functionality:** findUsableByLibrary

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Set&lt;MappingDTO&gt;&gt;


### <span api-method=GET>GET</span> /mapping?usable
**Implementation:** [MappingController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/MappingController.java#L150-L162)


**Required Role\(s\):** MAP_HAB0

**Functionality:** findAllUsable

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;MappingDTO&gt;&gt;

---
# /mapping/\{id\}

> Doesn't respect oas v3.1.


### <span api-method=DELETE>DELETE</span> /mapping/\{id\}
**Implementation:** [MappingController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/MappingController.java#L76-L94)


**Required Role\(s\):** MAP_HAB2

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=GET>GET</span> /mapping/\{id\}
**Implementation:** [MappingController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/MappingController.java#L164-L181)


**Required Role\(s\):** MAP_HAB0

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Mapping&gt;


### <span api-method=GET>GET</span> /mapping/\{id\}?duplicate
**Implementation:** [MappingController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/MappingController.java#L183-L209)


**Required Role\(s\):** MAP_HAB1

**Functionality:** duplicate

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Mapping&gt;


### <span api-method=GET>GET</span> /mapping/\{id\}?export
**Implementation:** [MappingController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/MappingController.java#L243-L267)


**Required Role\(s\):** MAP_HAB0

**Functionality:** exportMapping

**Request Body:** TODO






### <span api-method=POST>POST</span> /mapping/\{id\}
**Implementation:** [MappingController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/MappingController.java#L211-L233)


**Required Role\(s\):** MAP_HAB1

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Mapping&gt;


### <span api-method=POST>POST</span> /mapping/\{id\}?import
**Implementation:** [MappingController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/MappingController.java#L277-L307)


**Required Role\(s\):** MAP_HAB1

**Functionality:** importMapping

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Mapping&gt;

---
# /multidelivery/\{id\}

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /multidelivery/\{id\}?predeliver
**Implementation:** [MultiLotsDeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/multilotsdelivery/MultiLotsDeliveryController.java#L80-L99)


**Required Role\(s\):** DEL_HAB5

**Functionality:** predeliver

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Map&lt;String, PreDeliveryDTO&gt;&gt;


### <span api-method=GET>GET</span> /multidelivery/\{id\}
**Implementation:** [MultiLotsDeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/multilotsdelivery/MultiLotsDeliveryController.java#L159-L172)


**Required Role\(s\):** DEL_HAB0

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;MultiLotsDeliveryDTO&gt;


### <span api-method=GET>GET</span> /multidelivery/\{id\}?digitalDocuments
**Implementation:** [MultiLotsDeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/multilotsdelivery/MultiLotsDeliveryController.java#L174-L201)


**Required Role\(s\):** DEL_HAB0

**Functionality:** getSimpleDigitalDocuments

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Map&lt;String, List&lt;SimpleDeliveredDigitalDocDTO&gt;&gt;&gt;


### <span api-method=POST>POST</span> /multidelivery/\{id\}?deliver
**Implementation:** [MultiLotsDeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/multilotsdelivery/MultiLotsDeliveryController.java#L109-L131)


**Required Role\(s\):** 
- DEL_HAB5
- DEL_HAB5_2

**Functionality:** deliver

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=POST>POST</span> /multidelivery/\{id\}
**Implementation:** [MultiLotsDeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/multilotsdelivery/MultiLotsDeliveryController.java#L234-L267)


**Required Role\(s\):** 
- DEL_HAB2
- DEL_HAB8

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;MultiLotsDeliveryDTO&gt;


### <span api-method=DELETE>DELETE</span> /multidelivery/\{id\}
**Implementation:** [MultiLotsDeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/multilotsdelivery/MultiLotsDeliveryController.java#L269-L283)


**Required Role\(s\):** DEL_HAB3

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;

---
# /multidelivery

### <span api-method=GET>GET</span> /multidelivery?search
**Implementation:** [MultiLotsDeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/multilotsdelivery/MultiLotsDeliveryController.java#L133-L157)


**Required Role\(s\):** DEL_HAB0

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|search|String|no|`None`|
|libraries|List<String>|no|`None`|
|projects|List<String>|no|`None`|
|lots|List<String>|no|`None`|
|providers|List<String>|no|`None`|
|deliveryDateFrom|LocalDate|no|`None`|
|deliveryDateTo|LocalDate|no|`None`|
|page|Integer|no|`0`|


**Response Body:** ResponseEntity&lt;Page&lt;MultiLotsDeliveryDTO&gt;&gt;


### <span api-method=POST>POST</span> /multidelivery
**Implementation:** [MultiLotsDeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/multilotsdelivery/MultiLotsDeliveryController.java#L203-L232)


**Required Role\(s\):** DEL_HAB1

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;MultiLotsDeliveryDTO&gt;

---
# /numahop

### <span api-method=GET>GET</span> /numahop?build
**Implementation:** [NumahopController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/NumahopController.java#L30-L39)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getBuild

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Map&lt;String, Object&gt;&gt;

---
# /oaipmh

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /oaipmh?identify
**Implementation:** [OaiPmhController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/oaipmh/OaiPmhController.java#L61-L67)


**Required Role\(s\):** EXC_HAB2

**Functionality:** checkServer

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;IdentifyType&gt;


### <span api-method=GET>GET</span> /oaipmh?listIdentifiers
**Implementation:** [OaiPmhController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/oaipmh/OaiPmhController.java#L69-L92)


**Required Role\(s\):** EXC_HAB2

**Functionality:** checkQuery

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|baseUrl|String|no|`None`|
|from|String|no|`None`|
|to|String|no|`None`|


**Response Body:** ResponseEntity&lt;Map&lt;String, String&gt;&gt;


### <span api-method=POST>POST</span> /oaipmh
**Implementation:** [OaiPmhController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/oaipmh/OaiPmhController.java#L94-L131)


**Required Role\(s\):** EXC_HAB2

**Functionality:** importOaiPmh

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|String|no|`None`|
|project|String|no|`None`|
|lot|String|no|`None`|
|validation|boolean|no|`false`|
|dedup|boolean|no|`false`|
|baseUrl|String|no|`None`|
|from|String|no|`None`|
|to|String|no|`None`|


**Response Body:** ResponseEntity&lt;ImportReport&gt;

---
# /ocrlangconfiguration

### <span api-method=POST>POST</span> /ocrlangconfiguration
**Implementation:** [OcrLangConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/ocrlangconfiguration/OcrLangConfigurationController.java#L44-L51)


**Required Role\(s\):** OCR_LANG_HAB1

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;OcrLangConfigurationDTO&gt;


### <span api-method=GET>GET</span> /ocrlangconfiguration?search
**Implementation:** [OcrLangConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/ocrlangconfiguration/OcrLangConfigurationController.java#L70-L82)


**Required Role\(s\):** OCR_LANG_HAB0

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|search|String|no|`None`|
|libraries|List<String>|no|`None`|
|page|Integer|no|`0`|


**Response Body:** ResponseEntity&lt;Page&lt;SimpleOcrLangConfigDTO&gt;&gt;

---
# /ocrlangconfiguration/\{id\}

### <span api-method=DELETE>DELETE</span> /ocrlangconfiguration/\{id\}
**Implementation:** [OcrLangConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/ocrlangconfiguration/OcrLangConfigurationController.java#L53-L59)


**Required Role\(s\):** OCR_LANG_HAB2

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=GET>GET</span> /ocrlangconfiguration/\{id\}
**Implementation:** [OcrLangConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/ocrlangconfiguration/OcrLangConfigurationController.java#L61-L68)


**Required Role\(s\):** OCR_LANG_HAB0

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;OcrLangConfigurationDTO&gt;


### <span api-method=POST>POST</span> /ocrlangconfiguration/\{id\}
**Implementation:** [OcrLangConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/ocrlangconfiguration/OcrLangConfigurationController.java#L84-L90)


**Required Role\(s\):** OCR_LANG_HAB1

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;OcrLangConfigurationDTO&gt;

---
# /ocrlanguages

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /ocrlanguages?languages
**Implementation:** [OcrLanguageController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/ocrlangconfiguration/OcrLanguageController.java#L35-L41)


**Required Role\(s\):** OCR_LANG_HAB0

**Functionality:** search

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;OcrLanguageDTO&gt;&gt;


### <span api-method=GET>GET</span> /ocrlanguages?langs
**Implementation:** [OcrLanguageController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/ocrlangconfiguration/OcrLanguageController.java#L43-L50)


**Required Role\(s\):** OCR_LANG_HAB0

**Functionality:** getLangs

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;OcrLanguageDTO&gt;&gt;

---
# /physicaldocument/\{identifier\}

### <span api-method=GET>GET</span> /physicaldocument/\{identifier\}
**Implementation:** [PhysicalDocumentController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/PhysicalDocumentController.java#L38-L43)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;PhysicalDocumentDTO&gt;


### <span api-method=POST>POST</span> /physicaldocument/\{identifier\}
**Implementation:** [PhysicalDocumentController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/PhysicalDocumentController.java#L45-L52)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;PhysicalDocumentDTO&gt;

---
# /physicaldocument

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /physicaldocument?train
**Implementation:** [PhysicalDocumentController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/PhysicalDocumentController.java#L54-L61)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** findByTrainIdentifier

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;ListPhysicalDocumentDTO&gt;&gt;


### <span api-method=GET>GET</span> /physicaldocument?trainDocUnits
**Implementation:** [PhysicalDocumentController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/PhysicalDocumentController.java#L63-L70)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** findByDocUnitIdentifiers

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;ListPhysicalDocumentDTO&gt;&gt;

---
# /project

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /project
**Implementation:** [ProjectController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/project/ProjectController.java#L65-L77)


**Required Role\(s\):** PROJ_HAB0

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ProjectDTO&gt;


### <span api-method=POST>POST</span> /project?delete
**Implementation:** [ProjectController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/project/ProjectController.java#L91-L100)


**Required Role\(s\):** PROJ_HAB4

**Functionality:** delete

**Request Body:** TODO






### <span api-method=GET>GET</span> /project?search
**Implementation:** [ProjectController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/project/ProjectController.java#L127-L144)


**Required Role\(s\):** PROJ_HAB7

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|search|String|no|`None`|
|initiale|String|no|`None`|
|active|boolean|no|`true`|
|libraries|List<String>|no|`None`|
|status|List<ProjectStatus>|no|`None`|
|provider|List<String>|no|`None`|
|page|Integer|no|`0`|


**Response Body:** ResponseEntity&lt;Page&lt;SimpleProjectDTO&gt;&gt;


### <span api-method=GET>GET</span> /project?searchProject
**Implementation:** [ProjectController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/project/ProjectController.java#L146-L161)


**Required Role\(s\):** PROJ_HAB7

**Functionality:** searchProject

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|searchProject|String|no|`None`|
|initiale|String|no|`None`|
|active|boolean|no|`true`|
|libraries|List<String>|no|`None`|


**Response Body:** ResponseEntity&lt;List&lt;SimpleProjectDTO&gt;&gt;


### <span api-method=GET>GET</span> /project?widget", "from
**Implementation:** [ProjectController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/project/ProjectController.java#L163-L178)


**Required Role\(s\):** PROJ_HAB7

**Functionality:** getProjectsForWidget

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|from|LocalDate|no|`None`|
|library|List<String>|no|`None`|


**Response Body:** ResponseEntity&lt;List&lt;AuditProjectRevisionDTO&gt;&gt;


### <span api-method=GET>GET</span> /project?dto
**Implementation:** [ProjectController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/project/ProjectController.java#L192-L205)


**Required Role\(s\):** PROJ_HAB7

**Functionality:** findAllActiveDTO

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;SimpleProjectDTO&gt;&gt;


### <span api-method=GET>GET</span> /project?dto", "libraries
**Implementation:** [ProjectController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/project/ProjectController.java#L207-L216)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** findAllActiveDTO

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;SimpleProjectDTO&gt;&gt;


### <span api-method=GET>GET</span> /project?dto2
**Implementation:** [ProjectController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/project/ProjectController.java#L218-L231)


**Required Role\(s\):** PROJ_HAB7

**Functionality:** findAllDTO

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;SimpleProjectDTO&gt;&gt;


### <span api-method=GET>GET</span> /project?dto2", "libraries
**Implementation:** [ProjectController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/project/ProjectController.java#L233-L242)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** findAllDTO

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;SimpleProjectDTO&gt;&gt;

---
# /project/\{id\}

> Doesn't respect oas v3.1.


### <span api-method=DELETE>DELETE</span> /project/\{id\}
**Implementation:** [ProjectController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/project/ProjectController.java#L79-L89)


**Required Role\(s\):** PROJ_HAB4

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ProjectDTO&gt;


### <span api-method=POST>POST</span> /project/\{id\}?idDocs
**Implementation:** [ProjectController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/project/ProjectController.java#L102-L112)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** addDocUnits

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=POST>POST</span> /project/\{id\}?idLibraries
**Implementation:** [ProjectController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/project/ProjectController.java#L114-L125)


**Required Role\(s\):** PROJ_HAB3

**Functionality:** addLibraries

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=POST>POST</span> /project/\{id\}
**Implementation:** [ProjectController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/project/ProjectController.java#L244-L275)


**Required Role\(s\):** PROJ_HAB1

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ProjectDTO&gt;


### <span api-method=POST>POST</span> /project/\{id\}?cancelProj
**Implementation:** [ProjectController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/project/ProjectController.java#L277-L289)


**Required Role\(s\):** PROJ_HAB6

**Functionality:** cancelProject

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ProjectDTO&gt;


### <span api-method=POST>POST</span> /project/\{id\}?suspendProj
**Implementation:** [ProjectController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/project/ProjectController.java#L291-L303)


**Required Role\(s\):** PROJ_HAB5

**Functionality:** suspendProject

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ProjectDTO&gt;


### <span api-method=POST>POST</span> /project/\{id\}?reactivProj
**Implementation:** [ProjectController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/project/ProjectController.java#L305-L317)


**Required Role\(s\):** PROJ_HAB5

**Functionality:** reactivateProject

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ProjectDTO&gt;


### <span api-method=GET>GET</span> /project/\{id\}
**Implementation:** [ProjectController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/project/ProjectController.java#L180-L190)


**Required Role\(s\):** PROJ_HAB7

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ProjectDTO&gt;

---
# /role

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /role
**Implementation:** [RoleController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/user/RoleController.java#L41-L47)


**Required Role\(s\):** ROLE_HAB1

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Role&gt;


### <span api-method=GET>GET</span> /role?search
**Implementation:** [RoleController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/user/RoleController.java#L57-L64)


**Required Role\(s\):** USER_HAB0

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|search|String|no|`None`|


**Response Body:** ResponseEntity&lt;List&lt;RoleDTO&gt;&gt;


### <span api-method=GET>GET</span> /role?dto
**Implementation:** [RoleController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/user/RoleController.java#L66-L71)


**Required Role\(s\):** 
- ROLE_HAB0
- USER_HAB0
- LIB_HAB5

**Functionality:** findAll

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;RoleDTO&gt;&gt;


### <span api-method=GET>GET</span> /role
**Implementation:** [RoleController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/user/RoleController.java#L73-L78)


**Required Role\(s\):** 
- ROLE_HAB0
- LIB_HAB5

**Functionality:** findAll

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;Role&gt;&gt;

---
# /role/\{identifier\}

### <span api-method=DELETE>DELETE</span> /role/\{identifier\}
**Implementation:** [RoleController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/user/RoleController.java#L49-L55)


**Required Role\(s\):** ROLE_HAB3

**Functionality:** delete

**Request Body:** TODO






### <span api-method=GET>GET</span> /role/\{identifier\}
**Implementation:** [RoleController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/user/RoleController.java#L80-L85)


**Required Role\(s\):** ROLE_HAB0

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Role&gt;


### <span api-method=POST>POST</span> /role/\{identifier\}
**Implementation:** [RoleController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/user/RoleController.java#L87-L94)


**Required Role\(s\):** ROLE_HAB2

**Functionality:** udpate

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Role&gt;

---
# /sample/\{id\}

### <span api-method=GET>GET</span> /sample/\{id\}
**Implementation:** [SampleController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/sample/SampleController.java#L27-L34)


**Required Role\(s\):** DEL_HAB0

**Functionality:** getSample

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;SampleDTO&gt;

---
# /search

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /search?index
**Implementation:** [SearchController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/SearchController.java#L78-L84)


**Required Role\(s\):** SUPER_ADMIN

**Functionality:** index

**Request Body:** TODO






### <span api-method=GET>GET</span> /search?search
**Implementation:** [SearchController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/SearchController.java#L100-L138)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|page|Integer|no|`0`|
|size|Integer|no|`10`|
|get|List<SearchEntity>|no|`DOCUNIT`|
|fuzzy|boolean|no|`true`|


**Response Body:** ResponseEntity&lt;Map&lt;SearchEntity, Page&lt;?&gt;&gt;&gt;


### <span api-method=GET>GET</span> /search?suggest
**Implementation:** [SearchController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/SearchController.java#L140-L150)


**Required Role\(s\):** DOC_UNIT_HAB0

**Functionality:** suggest

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|suggest|String|no|`None`|


**Response Body:** ResponseEntity&lt;List&lt;Map&lt;String, Object&gt;&gt;&gt;

---
# /statistics

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /statistics?projectList
**Implementation:** [StatisticsController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsController.java#L66-L84)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** projectList

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|search|String|no|`None`|
|projects|List<String>|no|`None`|
|from|LocalDate|no|`None`|
|to|LocalDate|no|`None`|
|page|Integer|no|`0`|
|size|Integer|no|`10`|


**Response Body:** ResponseEntity&lt;Page&lt;StatisticsProjectDTO&gt;&gt;


### <span api-method=GET>GET</span> /statistics?projectGroupByStatus
**Implementation:** [StatisticsController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsController.java#L86-L94)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getProjectGroupByStatus

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;Map&lt;String, Object&gt;&gt;&gt;


### <span api-method=GET>GET</span> /statistics?lotGroupByStatus
**Implementation:** [StatisticsController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsController.java#L96-L105)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getLotGroupByStatus

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|libraries|List<String>|no|`None`|


**Response Body:** ResponseEntity&lt;List&lt;Map&lt;String, Object&gt;&gt;&gt;


### <span api-method=GET>GET</span> /statistics?projectProgress
**Implementation:** [StatisticsController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsController.java#L107-L124)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getProjectProgress

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|from|LocalDate|no|`None`|
|to|LocalDate|no|`None`|
|page|Integer|no|`0`|


**Response Body:** ResponseEntity&lt;Page&lt;StatisticsProgressDTO&gt;&gt;


### <span api-method=GET>GET</span> /statistics?lotProgress
**Implementation:** [StatisticsController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsController.java#L126-L142)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getLotProgress

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|from|LocalDate|no|`None`|
|to|LocalDate|no|`None`|
|page|Integer|no|`0`|


**Response Body:** ResponseEntity&lt;Page&lt;StatisticsProgressDTO&gt;&gt;


### <span api-method=GET>GET</span> /statistics?trainGroupByStatus
**Implementation:** [StatisticsController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsController.java#L144-L154)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getTrainGroupByStatus

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|libraries|List<String>|no|`None`|


**Response Body:** ResponseEntity&lt;List&lt;Map&lt;String, Object&gt;&gt;&gt;


### <span api-method=GET>GET</span> /statistics?docunitGroupByStatus
**Implementation:** [StatisticsController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsController.java#L156-L168)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getDocUnitsGroupByStatus

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|libraries|List<String>|no|`None`|
|project|List<String>|no|`None`|


**Response Body:** ResponseEntity&lt;List&lt;Map&lt;String, Object&gt;&gt;&gt;


### <span api-method=GET>GET</span> /statistics?userGroupByLibrary
**Implementation:** [StatisticsController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsController.java#L170-L178)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getUsersGroupByLibrary

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;Map&lt;String, Object&gt;&gt;&gt;


### <span api-method=GET>GET</span> /statistics?provider_train
**Implementation:** [StatisticsController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsController.java#L180-L202)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getProviderTrainStats

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|train|List<String>|no|`None`|
|returnFrom|LocalDate|no|`None`|
|returnTo|LocalDate|no|`None`|
|sendFrom|LocalDate|no|`None`|
|sendTo|LocalDate|no|`None`|
|insuranceFrom|Double|no|`None`|


**Response Body:** ResponseEntity&lt;List&lt;StatisticsProviderTrainDTO&gt;&gt;

---
# /statistics/csv

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /statistics/csv?provider_train
**Implementation:** [StatisticsCsvController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/csv/StatisticsCsvController.java#L55-L91)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getProviderTrainStats

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|train|List<String>|no|`None`|
|returnFrom|LocalDate|no|`None`|
|returnTo|LocalDate|no|`None`|
|sendFrom|LocalDate|no|`None`|
|sendTo|LocalDate|no|`None`|
|insuranceFrom|Double|no|`None`|
|insuranceTo|Double|no|`None`|
|encoding|String|no|`ISO-8859-15`|





### <span api-method=GET>GET</span> /statistics/csv?lotProgress
**Implementation:** [StatisticsCsvController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/csv/StatisticsCsvController.java#L93-L123)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getLotProgress

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|from|LocalDate|no|`None`|
|to|LocalDate|no|`None`|
|encoding|String|no|`ISO-8859-15`|





### <span api-method=GET>GET</span> /statistics/csv?projectProgress
**Implementation:** [StatisticsCsvController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/csv/StatisticsCsvController.java#L125-L151)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getProjectProgress

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|from|LocalDate|no|`None`|
|to|LocalDate|no|`None`|
|encoding|String|no|`ISO-8859-15`|




---
# /statistics/delivery

### <span api-method=GET>GET</span> /statistics/delivery?provider_delivery
**Implementation:** [StatisticsDeliveryController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsDeliveryController.java#L39-L58)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getProviderDeliveryStats

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|provider|List<String>|no|`None`|
|from|LocalDate|no|`None`|


**Response Body:** ResponseEntity&lt;List&lt;StatisticsProviderDeliveryDTO&gt;&gt;

---
# /statistics/delivery/csv

### <span api-method=GET>GET</span> /statistics/delivery/csv?provider_delivery
**Implementation:** [StatisticsDeliveryCsvController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/csv/StatisticsDeliveryCsvController.java#L49-L76)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getProviderDeliveryStats

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|provider|List<String>|no|`None`|
|from|LocalDate|no|`None`|
|to|LocalDate|no|`None`|
|encoding|String|no|`ISO-8859-15`|




---
# /statistics/docunit

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /statistics/docunit?count
**Implementation:** [StatisticsDocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsDocUnitController.java#L69-L82)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getDocUnitList

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|libraries|List<String>|no|`None`|
|project|List<String>|no|`None`|
|lot|List<String>|no|`None`|
|page|Integer|no|`0`|


**Response Body:** ResponseEntity&lt;Page&lt;StatisticsDocUnitCountDTO&gt;&gt;


### <span api-method=GET>GET</span> /statistics/docunit?countStatus
**Implementation:** [StatisticsDocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsDocUnitController.java#L84-L100)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getDocUnitStatusRatio

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|project|String|no|`None`|
|lot|String|no|`None`|


**Response Body:** ResponseEntity&lt;StatisticsDocUnitStatusRatioDTO&gt;


### <span api-method=GET>GET</span> /statistics/docunit?average
**Implementation:** [StatisticsDocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsDocUnitController.java#L102-L122)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getDocUnitAverages

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|lot|List<String>|no|`None`|
|delivery|List<String>|no|`None`|
|from|LocalDate|no|`None`|
|to|LocalDate|no|`None`|


**Response Body:** ResponseEntity&lt;List&lt;StatisticsDocUnitAverageDTO&gt;&gt;


### <span api-method=GET>GET</span> /statistics/docunit?export
**Implementation:** [StatisticsDocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsDocUnitController.java#L124-L134)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getExportedDocUnitList

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|libraries|List<String>|no|`None`|
|from|LocalDate|no|`None`|


**Response Body:** ResponseEntity&lt;List&lt;StatisticsProcessedDocUnitDTO&gt;&gt;


### <span api-method=GET>GET</span> /statistics/docunit?archive
**Implementation:** [StatisticsDocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsDocUnitController.java#L136-L145)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getArchivedDocUnitList

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|libraries|List<String>|no|`None`|
|from|LocalDate|no|`None`|


**Response Body:** ResponseEntity&lt;List&lt;StatisticsProcessedDocUnitDTO&gt;&gt;


### <span api-method=GET>GET</span> /statistics/docunit?checkdelay
**Implementation:** [StatisticsDocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsDocUnitController.java#L147-L161)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getCheckDelayStatisitics

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|libraries|List<String>|no|`None`|
|project|List<String>|no|`None`|
|lot|List<String>|no|`None`|
|delivery|List<String>|no|`None`|


**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=GET>GET</span> /statistics/docunit?doc_published
**Implementation:** [StatisticsDocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsDocUnitController.java#L163-L184)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getDocPublishedStat

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|lot|List<String>|no|`None`|
|from|LocalDate|no|`None`|
|to|LocalDate|no|`None`|
|type|List<String>|no|`None`|
|collection|List<String>|no|`None`|
|page|Integer|no|`0`|


**Response Body:** ResponseEntity&lt;Page&lt;StatisticsDocPublishedDTO&gt;&gt;


### <span api-method=GET>GET</span> /statistics/docunit?doc_rejected
**Implementation:** [StatisticsDocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsDocUnitController.java#L186-L205)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getDocRejectedStat

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|provider|List<String>|no|`None`|
|from|LocalDate|no|`None`|
|to|LocalDate|no|`None`|
|page|Integer|no|`0`|


**Response Body:** ResponseEntity&lt;Page&lt;StatisticsDocRejectedDTO&gt;&gt;


### <span api-method=GET>GET</span> /statistics/docunit?doc_types
**Implementation:** [StatisticsDocUnitController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsDocUnitController.java#L207-L214)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getDocUnitTypes

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|search|String|no|`None`|
|page|Integer|no|`0`|


**Response Body:** ResponseEntity&lt;Page&lt;String&gt;&gt;

---
# /statistics/docunit/csv

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /statistics/docunit/csv?average
**Implementation:** [StatisticsDocUnitCsvController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/csv/StatisticsDocUnitCsvController.java#L56-L83)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getDocUnitAverages

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|lot|List<String>|no|`None`|
|delivery|List<String>|no|`None`|
|from|LocalDate|no|`None`|
|to|LocalDate|no|`None`|
|encoding|String|no|`ISO-8859-15`|





### <span api-method=GET>GET</span> /statistics/docunit/csv?doc_published
**Implementation:** [StatisticsDocUnitCsvController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/csv/StatisticsDocUnitCsvController.java#L85-L115)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getDocPublishedStat

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|lot|List<String>|no|`None`|
|from|LocalDate|no|`None`|
|to|LocalDate|no|`None`|
|type|List<String>|no|`None`|
|collection|List<String>|no|`None`|
|encoding|String|no|`ISO-8859-15`|





### <span api-method=GET>GET</span> /statistics/docunit/csv?doc_rejected
**Implementation:** [StatisticsDocUnitCsvController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/csv/StatisticsDocUnitCsvController.java#L117-L145)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getDocRejectedStat

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|provider|List<String>|no|`None`|
|from|LocalDate|no|`None`|
|to|LocalDate|no|`None`|
|encoding|String|no|`ISO-8859-15`|




---
# /statistics/workflow

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /statistics/workflow?wdelivery
**Implementation:** [StatisticsWorkflowController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsWorkflowController.java#L63-L87)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getWorkflowDeliveryProgressStatistics

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|lot|List<String>|no|`None`|
|delivery|List<String>|no|`None`|
|pgcnid|String|no|`None`|
|state|List<WorkflowStateKey>|no|`None`|
|from|LocalDate|no|`None`|
|to|LocalDate|no|`None`|
|page|int|no|`0`|


**Response Body:** ResponseEntity&lt;Page&lt;WorkflowDeliveryProgressDTO&gt;&gt;


### <span api-method=GET>GET</span> /statistics/workflow?wcontrol
**Implementation:** [StatisticsWorkflowController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsWorkflowController.java#L89-L107)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getWorkflowDocUnitStateControl

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|lot|List<String>|no|`None`|
|state|List<DigitalDocumentStatus>|no|`None`|


**Response Body:** ResponseEntity&lt;List&lt;WorkflowDocUnitProgressDTO&gt;&gt;


### <span api-method=GET>GET</span> /statistics/workflow?wdocunit
**Implementation:** [StatisticsWorkflowController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsWorkflowController.java#L124-L168)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getWorkflowDocUnitProgressStatistics

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|project_active|boolean|no|`false`|
|lot|List<String>|no|`None`|
|train|List<String>|no|`None`|
|pgcnid|String|no|`None`|
|state|List<WorkflowStateKey>|no|`None`|
|status|List<WorkflowStateStatus>|no|`None`|
|mine|boolean|no|`false`|
|from|LocalDate|no|`None`|
|to|LocalDate|no|`None`|
|page|int|no|`0`|


**Response Body:** ResponseEntity&lt;Page&lt;WorkflowDocUnitProgressDTO&gt;&gt;


### <span api-method=GET>GET</span> /statistics/workflow?wdocunitpending
**Implementation:** [StatisticsWorkflowController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsWorkflowController.java#L170-L214)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getWorkflowDocUnitProgressStatisticsLight

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|project_active|boolean|no|`false`|
|lot|List<String>|no|`None`|
|train|List<String>|no|`None`|
|pgcnid|String|no|`None`|
|state|List<WorkflowStateKey>|no|`None`|
|status|List<WorkflowStateStatus>|no|`None`|
|mine|boolean|no|`false`|
|from|LocalDate|no|`None`|
|to|LocalDate|no|`None`|
|page|int|no|`0`|


**Response Body:** ResponseEntity&lt;List&lt;WorkflowDocUnitProgressDTOPending&gt;&gt;


### <span api-method=GET>GET</span> /statistics/workflow?wdocunit", "current
**Implementation:** [StatisticsWorkflowController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsWorkflowController.java#L216-L239)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getWorkflowDocUnitCurrentStatistics

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|lot|List<String>|no|`None`|
|state|List<WorkflowStateKey>|no|`None`|


**Response Body:** ResponseEntity&lt;List&lt;WorkflowDocUnitProgressDTO&gt;&gt;


### <span api-method=GET>GET</span> /statistics/workflow?wstate
**Implementation:** [StatisticsWorkflowController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsWorkflowController.java#L241-L258)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getWorkflowStatesStatistics

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|workflow|List<String>|no|`None`|
|state|List<WorkflowStateKey>|no|`None`|
|from|LocalDate|no|`None`|


**Response Body:** ResponseEntity&lt;List&lt;WorkflowStateProgressDTO&gt;&gt;


### <span api-method=GET>GET</span> /statistics/workflow?wuser
**Implementation:** [StatisticsWorkflowController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsWorkflowController.java#L260-L279)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getWorkflowUsersStatistics

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|lot|List<String>|no|`None`|
|delivery|List<String>|no|`None`|
|from|LocalDate|no|`None`|


**Response Body:** ResponseEntity&lt;Collection&lt;WorkflowUserProgressDTO&gt;&gt;


### <span api-method=GET>GET</span> /statistics/workflow?wprofile_activity
**Implementation:** [StatisticsWorkflowController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsWorkflowController.java#L293-L318)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getProfilesActivityStatistics

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|lot|List<String>|no|`None`|
|state|List<WorkflowStateKey>|no|`None`|
|role|List<String>|no|`None`|


**Response Body:** ResponseEntity&lt;Collection&lt;WorkflowProfileActivityDTO&gt;&gt;


### <span api-method=GET>GET</span> /statistics/workflow?wuser_activity
**Implementation:** [StatisticsWorkflowController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/StatisticsWorkflowController.java#L333-L358)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getUsersActivityStatistics

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|lot|List<String>|no|`None`|
|state|List<WorkflowStateKey>|no|`None`|
|role|List<String>|no|`None`|


**Response Body:** ResponseEntity&lt;Collection&lt;WorkflowUserActivityDTO&gt;&gt;

---
# /statistics/workflow/csv

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /statistics/workflow/csv?wdelivery
**Implementation:** [StatisticsWorkflowCsvController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/csv/StatisticsWorkflowCsvController.java#L60-L90)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getWorkflowDeliveryProgressStatistics

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|lot|List<String>|no|`None`|
|delivery|List<String>|no|`None`|
|pgcnid|String|no|`None`|
|state|List<WorkflowStateKey>|no|`None`|
|from|LocalDate|no|`None`|
|to|LocalDate|no|`None`|
|encoding|String|no|`ISO-8859-15`|





### <span api-method=GET>GET</span> /statistics/workflow/csv?wdocunit
**Implementation:** [StatisticsWorkflowCsvController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/csv/StatisticsWorkflowCsvController.java#L92-L126)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getWorkflowDocUnitProgressStatistics

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|lot|List<String>|no|`None`|
|train|List<String>|no|`None`|
|pgcnid|String|no|`None`|
|state|List<WorkflowStateKey>|no|`None`|
|status|List<WorkflowStateStatus>|no|`None`|
|mine|boolean|no|`false`|
|from|LocalDate|no|`None`|
|to|LocalDate|no|`None`|
|encoding|String|no|`ISO-8859-15`|





### <span api-method=GET>GET</span> /statistics/workflow/csv?wstate
**Implementation:** [StatisticsWorkflowCsvController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/csv/StatisticsWorkflowCsvController.java#L128-L152)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getWorkflowStatesStatistics

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|workflow|List<String>|no|`None`|
|state|List<WorkflowStateKey>|no|`None`|
|from|LocalDate|no|`None`|
|to|LocalDate|no|`None`|
|encoding|String|no|`ISO-8859-15`|





### <span api-method=GET>GET</span> /statistics/workflow/csv?wuser
**Implementation:** [StatisticsWorkflowCsvController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/csv/StatisticsWorkflowCsvController.java#L154-L180)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getWorkflowUsersStatistics

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|lot|List<String>|no|`None`|
|delivery|List<String>|no|`None`|
|from|LocalDate|no|`None`|
|to|LocalDate|no|`None`|
|encoding|String|no|`ISO-8859-15`|





### <span api-method=GET>GET</span> /statistics/workflow/csv?wprofile_activity
**Implementation:** [StatisticsWorkflowCsvController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/csv/StatisticsWorkflowCsvController.java#L182-L209)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getProfilesActivityStatistics

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|lot|List<String>|no|`None`|
|state|List<WorkflowStateKey>|no|`None`|
|role|List<String>|no|`None`|
|from|LocalDate|no|`None`|
|to|LocalDate|no|`None`|
|encoding|String|no|`ISO-8859-15`|





### <span api-method=GET>GET</span> /statistics/workflow/csv?wuser_activity
**Implementation:** [StatisticsWorkflowCsvController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/statistics/csv/StatisticsWorkflowCsvController.java#L211-L238)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getUsersActivityStatistics

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|List<String>|no|`None`|
|project|List<String>|no|`None`|
|lot|List<String>|no|`None`|
|state|List<WorkflowStateKey>|no|`None`|
|role|List<String>|no|`None`|
|from|LocalDate|no|`None`|
|to|LocalDate|no|`None`|
|encoding|String|no|`ISO-8859-15`|




---
# /template

### <span api-method=POST>POST</span> /template
**Implementation:** [TemplateController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/template/TemplateController.java#L55-L65)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Template&gt;


### <span api-method=GET>GET</span> /template
**Implementation:** [TemplateController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/template/TemplateController.java#L96-L120)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** findTemplates

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;Template&gt;&gt;

---
# /template/\{identifier\}

> Doesn't respect oas v3.1.


### <span api-method=DELETE>DELETE</span> /template/\{identifier\}
**Implementation:** [TemplateController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/template/TemplateController.java#L71-L88)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** delete

**Request Body:** TODO






### <span api-method=GET>GET</span> /template/\{id\}?download
**Implementation:** [TemplateController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/template/TemplateController.java#L130-L159)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** downloadTemplate

**Request Body:** TODO






### <span api-method=POST>POST</span> /template/\{id\}?upload
**Implementation:** [TemplateController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/template/TemplateController.java#L168-L190)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** uploadAttachments

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Template&gt;


### <span api-method=POST>POST</span> /template/\{id\}
**Implementation:** [TemplateController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/template/TemplateController.java#L198-L219)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** udpate

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Template&gt;

---
# /train

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /train?search
**Implementation:** [TrainController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/train/TrainController.java#L69-L99)


**Required Role\(s\):** TRA_HAB3

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|search|String|no|`None`|
|libraries|List<String>|no|`None`|
|projects|List<String>|no|`None`|
|active|boolean|no|`true`|
|statuses|List<String>|no|`None`|
|providerSendingDateFrom|LocalDate|no|`None`|
|providerSendingDateTo|LocalDate|no|`None`|
|returnDateFrom|LocalDate|no|`None`|
|returnDateTo|LocalDate|no|`None`|
|docNumber|Integer|no|`None`|
|page|Integer|no|`0`|


**Response Body:** ResponseEntity&lt;Page&lt;SimpleTrainDTO&gt;&gt;


### <span api-method=GET>GET</span> /train?filterByProjects
**Implementation:** [TrainController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/train/TrainController.java#L113-L121)


**Required Role\(s\):** LOT_HAB3

**Functionality:** findAllIdentifiersForProjects

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;SimpleTrainDTO&gt;&gt;


### <span api-method=GET>GET</span> /train?dto
**Implementation:** [TrainController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/train/TrainController.java#L161-L168)


**Required Role\(s\):** TRA_HAB3

**Functionality:** findAllActiveDTO

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;TrainDTO&gt;&gt;


### <span api-method=GET>GET</span> /train?dto", "complete
**Implementation:** [TrainController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/train/TrainController.java#L170-L178)


**Required Role\(s\):** TRA_HAB3

**Functionality:** findAllDTO

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;TrainDTO&gt;&gt;


### <span api-method=GET>GET</span> /train?project
**Implementation:** [TrainController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/train/TrainController.java#L180-L192)


**Required Role\(s\):** TRA_HAB3

**Functionality:** findAllForProject

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;TrainDTO&gt;&gt;


### <span api-method=GET>GET</span> /train?simpleByProject", "project
**Implementation:** [TrainController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/train/TrainController.java#L194-L207)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** findAllSimpleForProject

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;SimpleTrainDTO&gt;&gt;


### <span api-method=POST>POST</span> /train
**Implementation:** [TrainController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/train/TrainController.java#L148-L159)


**Required Role\(s\):** TRA_HAB0

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;TrainDTO&gt;

---
# /train/\{id\}

### <span api-method=GET>GET</span> /train/\{id\}
**Implementation:** [TrainController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/train/TrainController.java#L101-L111)


**Required Role\(s\):** TRA_HAB3

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;TrainDTO&gt;


### <span api-method=POST>POST</span> /train/\{id\}
**Implementation:** [TrainController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/train/TrainController.java#L123-L134)


**Required Role\(s\):** TRA_HAB1

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;TrainDTO&gt;


### <span api-method=DELETE>DELETE</span> /train/\{id\}
**Implementation:** [TrainController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/train/TrainController.java#L136-L146)


**Required Role\(s\):** TRA_HAB2

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;TrainDTO&gt;

---
# /train/csv/\{id\}

### <span api-method=GET>GET</span> /train/csv/\{id\}
**Implementation:** [TrainController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/train/TrainController.java#L209-L228)


**Required Role\(s\):** COND_REPORT_HAB0

**Functionality:** generateSlip

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|encoding|String|no|`ISO-8859-15`|




---
# /train/pdf/\{id\}

### <span api-method=GET>GET</span> /train/pdf/\{id\}
**Implementation:** [TrainController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/train/TrainController.java#L230-L247)


**Required Role\(s\):** COND_REPORT_HAB0

**Functionality:** generateSlipPdf

**Request Body:** TODO





---
# /user/\{id\}

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /user/\{id\}?change_password
**Implementation:** [UserController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/user/UserController.java#L78-L91)


**Required Role\(s\):** USER_HAB2

**Functionality:** changePassword

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Map&lt;String, Object&gt;&gt;


### <span api-method=POST>POST</span> /user/\{id\}
**Implementation:** [UserController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/user/UserController.java#L198-L225)


**Required Role\(s\):** 
- USER_HAB2
- USER_HAB6

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;UserDTO&gt;


### <span api-method=POST>POST</span> /user/\{id\}?signature
**Implementation:** [UserController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/user/UserController.java#L388-L421)


**Required Role\(s\):** 
- USER_HAB2
- USER_HAB6

**Functionality:** uploadSignature

**Request Body:** TODO






### <span api-method=DELETE>DELETE</span> /user/\{id\}
**Implementation:** [UserController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/user/UserController.java#L106-L116)


**Required Role\(s\):** USER_HAB3

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;UserDTO&gt;


### <span api-method=DELETE>DELETE</span> /user/\{id\}?signature
**Implementation:** [UserController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/user/UserController.java#L351-L379)


**Required Role\(s\):** 
- USER_HAB2
- USER_HAB6

**Functionality:** deleteSignature

**Request Body:** TODO






### <span api-method=GET>GET</span> /user/\{id\}
**Implementation:** [UserController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/user/UserController.java#L141-L157)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;UserDTO&gt;


### <span api-method=GET>GET</span> /user/\{id\}?dto
**Implementation:** [UserController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/user/UserController.java#L159-L170)


**Required Role\(s\):** USER_HAB0

**Functionality:** getDtoById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;UserDTO&gt;


### <span api-method=GET>GET</span> /user/\{id\}?duplicate
**Implementation:** [UserController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/user/UserController.java#L227-L237)


**Required Role\(s\):** USER_HAB0

**Functionality:** duplicateBorrower

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;UserDTO&gt;


### <span api-method=GET>GET</span> /user/\{id\}?signature
**Implementation:** [UserController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/user/UserController.java#L254-L281)


**Required Role\(s\):** USER_HAB0

**Functionality:** downloadSignature

**Request Body:** TODO






### <span api-method=GET>GET</span> /user/\{id\}?thumbnail
**Implementation:** [UserController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/user/UserController.java#L290-L317)


**Required Role\(s\):** USER_HAB0

**Functionality:** downloadThumbnail

**Request Body:** TODO






### <span api-method=GET>GET</span> /user/\{id\}?signexists
**Implementation:** [UserController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/user/UserController.java#L325-L343)


**Required Role\(s\):** 
- USER_HAB0
- USER_HAB6

**Functionality:** hasSignature

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Map&lt;?, ?&gt;&gt;

---
# /user

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /user
**Implementation:** [UserController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/user/UserController.java#L93-L104)


**Required Role\(s\):** USER_HAB1

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;UserDTO&gt;


### <span api-method=GET>GET</span> /user?search
**Implementation:** [UserController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/user/UserController.java#L118-L139)


**Required Role\(s\):** USER_HAB0

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|search|String|no|`None`|
|initiale|String|no|`None`|
|active|boolean|no|`true`|
|libraries|List<String>|no|`None`|
|roles|List<String>|no|`None`|
|page|Integer|no|`0`|


**Response Body:** ResponseEntity&lt;Page&lt;SimpleUserDTO&gt;&gt;


### <span api-method=GET>GET</span> /user?dto
**Implementation:** [UserController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/user/UserController.java#L172-L180)


**Required Role\(s\):** 
- LIB_HAB5
- LIB_HAB6
- LIB_HAB7

**Functionality:** findAllDTO

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;SimpleUserDTO&gt;&gt;


### <span api-method=GET>GET</span> /user?providers
**Implementation:** [UserController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/user/UserController.java#L182-L196)


**Required Role\(s\):** 
- LIB_HAB5
- LIB_HAB6
- LIB_HAB7

**Functionality:** findProvidersDTO

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;SimpleUserDTO&gt;&gt;

---
# /user/dashboard

### <span api-method=POST>POST</span> /user/dashboard
**Implementation:** [UserController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/user/UserController.java#L239-L245)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** saveDashboard

**Request Body:** TODO





---
# /viewer/document/\{identifier\}/\{pageNumber\}/\{args1\}/\{args2\}/\{test\}/default.jpg

### <span api-method=GET>GET</span> /viewer/document/\{identifier\}/\{pageNumber\}/\{args1\}/\{args2\}/\{test\}/default.jpg
**Implementation:** [ViewerController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/ViewerController.java#L166-L177)


**Required Role\(s\):** CHECK_HAB3

**Functionality:** getZooms

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;

---
# /viewer/document/\{identifier\}/\{pageNumber\}/full/\{dim1\}/\{dim2\}/default.jpg

### <span api-method=GET>GET</span> /viewer/document/\{identifier\}/\{pageNumber\}/full/\{dim1\}/\{dim2\}/default.jpg
**Implementation:** [ViewerController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/ViewerController.java#L118-L152)


**Required Role\(s\):** CHECK_HAB3

**Functionality:** getDefault

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;

---
# /viewer/document/\{identifier\}/\{pageNumber\}/info.json

### <span api-method=GET>GET</span> /viewer/document/\{identifier\}/\{pageNumber\}/info.json
**Implementation:** [ViewerController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/ViewerController.java#L95-L105)


**Required Role\(s\):** CHECK_HAB3

**Functionality:** getFileInfos

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Map&lt;String, Object&gt;&gt;

---
# /viewer/document/\{identifier\}/manifest

### <span api-method=GET>GET</span> /viewer/document/\{identifier\}/manifest
**Implementation:** [ViewerController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/ViewerController.java#L68-L77)


**Required Role\(s\):** CHECK_HAB3

**Functionality:** getManifestViewer

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;

---
# /viewer/document/\{identifier\}/master/\{pageNumber\}

### <span api-method=GET>GET</span> /viewer/document/\{identifier\}/master/\{pageNumber\}
**Implementation:** [ViewerController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/ViewerController.java#L207-L223)


**Required Role\(s\):** CHECK_HAB3

**Functionality:** getMaster

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;

---
# /viewer/document/\{identifier\}/master/

### <span api-method=GET>GET</span> /viewer/document/\{identifier\}/master/
**Implementation:** [ViewerController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/ViewerController.java#L233-L250)


**Required Role\(s\):** CHECK_HAB3

**Functionality:** getPdfMaster

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;

---
# /viewer/document/sample/\{identifier\}/manifest

### <span api-method=GET>GET</span> /viewer/document/sample/\{identifier\}/manifest
**Implementation:** [ViewerController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/ViewerController.java#L79-L87)


**Required Role\(s\):** CHECK_HAB3

**Functionality:** getSampledManifestViewer

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;

---
# /viewer/document/\{identifier\}/thumbnail/\{pageNumber\}/thumb.jpg

### <span api-method=GET>GET</span> /viewer/document/\{identifier\}/thumbnail/\{pageNumber\}/thumb.jpg
**Implementation:** [ViewerController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/ViewerController.java#L188-L196)


**Required Role\(s\):** CHECK_HAB3

**Functionality:** getThumbnail

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;

---
# /viewer/document/\{identifier\}/toc

### <span api-method=GET>GET</span> /viewer/document/\{identifier\}/toc
**Implementation:** [ViewerController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/document/ViewerController.java#L260-L276)


**Required Role\(s\):** CHECK_HAB3

**Functionality:** getTableOfContent

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;

---
# /viewsformat

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /viewsformat?search
**Implementation:** [ViewsFormatConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/viewsformat/ViewsFormatConfigurationController.java#L45-L56)


**Required Role\(s\):** IMG_FORMAT_HAB0

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|search|String|no|`None`|
|libraries|List<String>|no|`None`|
|page|Integer|no|`0`|


**Response Body:** ResponseEntity&lt;Page&lt;SimpleViewsFormatConfigurationDTO&gt;&gt;


### <span api-method=GET>GET</span> /viewsformat?project
**Implementation:** [ViewsFormatConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/viewsformat/ViewsFormatConfigurationController.java#L86-L94)


**Required Role\(s\):** IMG_FORMAT_HAB0

**Functionality:** getByProjectId

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;SimpleViewsFormatConfigurationDTO&gt;&gt;


### <span api-method=POST>POST</span> /viewsformat
**Implementation:** [ViewsFormatConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/viewsformat/ViewsFormatConfigurationController.java#L58-L66)


**Required Role\(s\):** IMG_FORMAT_HAB1

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ViewsFormatConfigurationDTO&gt;

---
# /viewsformat/\{id\}

### <span api-method=POST>POST</span> /viewsformat/\{id\}
**Implementation:** [ViewsFormatConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/viewsformat/ViewsFormatConfigurationController.java#L68-L75)


**Required Role\(s\):** CHECK_HAB1

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ViewsFormatConfigurationDTO&gt;


### <span api-method=DELETE>DELETE</span> /viewsformat/\{id\}
**Implementation:** [ViewsFormatConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/viewsformat/ViewsFormatConfigurationController.java#L77-L84)


**Required Role\(s\):** IMG_FORMAT_HAB1

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;CheckConfigurationDTO&gt;


### <span api-method=GET>GET</span> /viewsformat/\{id\}
**Implementation:** [ViewsFormatConfigurationController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/viewsformat/ViewsFormatConfigurationController.java#L96-L108)


**Required Role\(s\):** IMG_FORMAT_HAB0

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;ViewsFormatConfigurationDTO&gt;

---
# /workflow/\{identifier\}

### <span api-method=GET>GET</span> /workflow/\{identifier\}
**Implementation:** [WorkflowController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowController.java#L44-L53)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** findByIdentifier

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DocUnitWorkflowDTO&gt;

---
# /workflow

> Doesn't respect oas v3.1.


### <span api-method=GET>GET</span> /workflow?canProcess", "docUnit
**Implementation:** [WorkflowController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowController.java#L55-L66)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** canCurrentUserProcessState

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|docUnit|String|no|`None`|


**Response Body:** ResponseEntity&lt;BooleanValueDTO&gt;


### <span api-method=GET>GET</span> /workflow?process", "docUnitId
**Implementation:** [WorkflowController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowController.java#L68-L79)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** processState

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|docUnitId|String|no|`None`|


**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=GET>GET</span> /workflow?docUnit
**Implementation:** [WorkflowController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowController.java#L81-L91)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** findByDocUnitIdentifier

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;DocUnitWorkflowDTO&gt;


### <span api-method=GET>GET</span> /workflow?isDone
**Implementation:** [WorkflowController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowController.java#L93-L102)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** isStateDone

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|doc|String|no|`None`|


**Response Body:** ResponseEntity&lt;StateIsDoneDTO&gt;


### <span api-method=GET>GET</span> /workflow?isWorkflowStarted
**Implementation:** [WorkflowController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowController.java#L104-L113)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** isWorkflowStarted

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;StateIsDoneDTO&gt;


### <span api-method=GET>GET</span> /workflow?isCheckStarted
**Implementation:** [WorkflowController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowController.java#L115-L124)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** isCheckStarted

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;StateIsDoneDTO&gt;


### <span api-method=GET>GET</span> /workflow?isWaitingRedelivering
**Implementation:** [WorkflowController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowController.java#L126-L135)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** isWaitingForRedelivering

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;StateIsDoneDTO&gt;


### <span api-method=GET>GET</span> /workflow?canReportBeValidated
**Implementation:** [WorkflowController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowController.java#L137-L146)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** canReportBeValidated

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;StateIsDoneDTO&gt;


### <span api-method=GET>GET</span> /workflow?isRejectDefinitive
**Implementation:** [WorkflowController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowController.java#L148-L157)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** isRejectDefinitive

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;StateIsDoneDTO&gt;


### <span api-method=POST>POST</span> /workflow?resetNumWaiting
**Implementation:** [WorkflowController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowController.java#L165-L171)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** resetToNumWaiting

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=POST>POST</span> /workflow?massValidate
**Implementation:** [WorkflowController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowController.java#L179-L194)


**Required Role\(s\):** COND_REPORT_HAB2

**Functionality:** massValidate

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=POST>POST</span> /workflow?massValidateRecords
**Implementation:** [WorkflowController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowController.java#L202-L217)


**Required Role\(s\):** DOC_UNIT_HAB3

**Functionality:** massValidateRecords

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=POST>POST</span> /workflow?endAllDocWorkflows
**Implementation:** [WorkflowController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowController.java#L225-L232)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** endAllDocWorkflows

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=POST>POST</span> /workflow?validDocWorkflowState
**Implementation:** [WorkflowController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowController.java#L234-L242)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** validDocWorkflowState

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=POST>POST</span> /workflow?reinitDocWorkflowState
**Implementation:** [WorkflowController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowController.java#L244-L252)


**Required Role\(s\):** This method is either unprotected or the roles are verified manualy in the implementation. Check implementation details for more information.

**Functionality:** reinitDocWorkflowState

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;

---
# /workflow_group

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /workflow_group
**Implementation:** [WorkflowGroupController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowGroupController.java#L58-L68)


**Required Role\(s\):** WORKFLOW_HAB1

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;WorkflowGroupDTO&gt;


### <span api-method=GET>GET</span> /workflow_group?search
**Implementation:** [WorkflowGroupController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowGroupController.java#L84-L97)


**Required Role\(s\):** WORKFLOW_HAB4

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|search|String|no|`None`|
|initiale|String|no|`None`|
|libraries|List<String>|no|`None`|
|page|Integer|no|`0`|
|size|Integer|no|`10`|


**Response Body:** ResponseEntity&lt;Page&lt;SimpleWorkflowGroupDTO&gt;&gt;


### <span api-method=GET>GET</span> /workflow_group?groups", "library
**Implementation:** [WorkflowGroupController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowGroupController.java#L125-L133)


**Required Role\(s\):** WORKFLOW_HAB4

**Functionality:** findGroupsByLibrary

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Collection&lt;SimpleWorkflowGroupDTO&gt;&gt;

---
# /workflow_group/\{id\}

### <span api-method=DELETE>DELETE</span> /workflow_group/\{id\}
**Implementation:** [WorkflowGroupController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowGroupController.java#L70-L82)


**Required Role\(s\):** WORKFLOW_HAB3

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=GET>GET</span> /workflow_group/\{id\}
**Implementation:** [WorkflowGroupController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowGroupController.java#L99-L105)


**Required Role\(s\):** WORKFLOW_HAB4

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;WorkflowGroupDTO&gt;


### <span api-method=POST>POST</span> /workflow_group/\{id\}
**Implementation:** [WorkflowGroupController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowGroupController.java#L107-L123)


**Required Role\(s\):** WORKFLOW_HAB2

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;WorkflowGroupDTO&gt;

---
# /workflow_model

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /workflow_model
**Implementation:** [WorkflowModelController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowModelController.java#L57-L67)


**Required Role\(s\):** WORKFLOW_HAB1

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;WorkflowModelDTO&gt;


### <span api-method=GET>GET</span> /workflow_model?search
**Implementation:** [WorkflowModelController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowModelController.java#L77-L95)


**Required Role\(s\):** WORKFLOW_HAB4

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|search|String|no|`None`|
|initiale|String|no|`None`|
|libraries|List<String>|no|`None`|
|page|Integer|no|`0`|
|size|Integer|no|`10`|


**Response Body:** ResponseEntity&lt;Page&lt;SimpleWorkflowModelDTO&gt;&gt;


### <span api-method=GET>GET</span> /workflow_model?models", "library
**Implementation:** [WorkflowModelController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowModelController.java#L117-L132)


**Required Role\(s\):** WORKFLOW_HAB4

**Functionality:** findModelsByLibrary

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|String|no|`None`|


**Response Body:** ResponseEntity&lt;Collection&lt;SimpleWorkflowModelDTO&gt;&gt;

---
# /workflow_model/\{id\}

### <span api-method=DELETE>DELETE</span> /workflow_model/\{id\}
**Implementation:** [WorkflowModelController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowModelController.java#L69-L75)


**Required Role\(s\):** WORKFLOW_HAB3

**Functionality:** delete

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;?&gt;


### <span api-method=GET>GET</span> /workflow_model/\{id\}
**Implementation:** [WorkflowModelController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowModelController.java#L97-L103)


**Required Role\(s\):** WORKFLOW_HAB4

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;WorkflowModelDTO&gt;


### <span api-method=POST>POST</span> /workflow_model/\{id\}
**Implementation:** [WorkflowModelController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/workflow/WorkflowModelController.java#L105-L115)


**Required Role\(s\):** WORKFLOW_HAB2

**Functionality:** update

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;WorkflowModelDTO&gt;

---
# /z3950

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /z3950?server
**Implementation:** [Z3950Controller.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/z3950/Z3950Controller.java#L72-L80)


**Required Role\(s\):** EXC_HAB3

**Functionality:** search

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|server|List<String>|no|`None`|
|page|int|no|`0`|


**Response Body:** ResponseEntity&lt;Page&lt;Z3950RecordDTO&gt;&gt;


### <span api-method=POST>POST</span> /z3950?mapping
**Implementation:** [Z3950Controller.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/exchange/z3950/Z3950Controller.java#L94-L148)


**Required Role\(s\):** EXC_HAB2

**Functionality:** importFile

**Request Body:** TODO


**QueryParameters:**
| name | type | required | default value |
|-|-|-|-|
|library|String|no|`None`|
|project|String|no|`None`|
|lot|String|no|`None`|
|mapping|String|no|`None`|
|validation|boolean|no|`false`|
|dedup|boolean|no|`false`|


**Response Body:** ResponseEntity&lt;ImportReport&gt;

---
# /z3950Server

> Doesn't respect oas v3.1.


### <span api-method=POST>POST</span> /z3950Server
**Implementation:** [Z3950ServerController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/z3950/Z3950ServerController.java#L48-L54)


**Required Role\(s\):** Z3950_HAB1

**Functionality:** create

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Z3950Server&gt;


### <span api-method=GET>GET</span> /z3950Server?dto
**Implementation:** [Z3950ServerController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/z3950/Z3950ServerController.java#L62-L67)


**Required Role\(s\):** Z3950_HAB0

**Functionality:** findAll

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;Z3950ServerDTO&gt;&gt;


### <span api-method=GET>GET</span> /z3950Server
**Implementation:** [Z3950ServerController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/z3950/Z3950ServerController.java#L73-L78)


**Required Role\(s\):** Z3950_HAB0

**Functionality:** findAll

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;List&lt;Z3950Server&gt;&gt;

---
# /z3950Server/\{id\}

### <span api-method=GET>GET</span> /z3950Server/\{id\}
**Implementation:** [Z3950ServerController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/z3950/Z3950ServerController.java#L85-L90)


**Required Role\(s\):** Z3950_HAB0

**Functionality:** getById

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Z3950Server&gt;


### <span api-method=POST>POST</span> /z3950Server/\{id\}
**Implementation:** [Z3950ServerController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/z3950/Z3950ServerController.java#L98-L104)


**Required Role\(s\):** Z3950_HAB1

**Functionality:** udpate

**Request Body:** TODO



**Response Body:** ResponseEntity&lt;Z3950Server&gt;


### <span api-method=DELETE>DELETE</span> /z3950Server/\{id\}
**Implementation:** [Z3950ServerController.java](https://github.com/biblibre/NumaHOP-code/blob/master/src/main/java/fr/progilone/pgcn/web/rest/administration/z3950/Z3950ServerController.java#L110-L116)


**Required Role\(s\):** Z3950_HAB2

**Functionality:** delete

**Request Body:** TODO





