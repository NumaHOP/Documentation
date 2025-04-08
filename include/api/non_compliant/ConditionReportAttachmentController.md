# `/api/rest/condreport_attachment`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- ConditionReportAttachmentController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/condreport_attachment?report`|GET|findByReport|
|`/condreport_attachment/{identifier}`|DELETE|delete|
|`/condreport_attachment/{id}?file`|GET|downloadAttachment|
|`/condreport_attachment/{id}?thumbnail`|GET|downloadThumbnail|
|`/condreport_attachment`|POST|uploadAttachments|

# Clashing routes

## GET on `/condreport_attachment/{id}`
|functionality|params|
|-|-|
|downloadAttachment|file|
|downloadThumbnail|thumbnail|

# Proposed API
TODO