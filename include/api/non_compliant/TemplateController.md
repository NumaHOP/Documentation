# `/api/rest/template`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- TemplateController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/template`|POST|create|
|`/template/{identifier}`|DELETE|delete|
|`/template`|GET|findTemplates|
|`/template/{id}?download`|GET|downloadTemplate|
|`/template/{id}?upload`|POST|uploadAttachments|
|`/template/{id}`|POST|udpate|

# Clashing routes

## POST on `/template/{id}`
|functionality|params|
|-|-|
|uploadAttachments|upload|
|udpate||

# Proposed API
TODO