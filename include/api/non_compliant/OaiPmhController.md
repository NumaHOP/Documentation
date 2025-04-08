# `/api/rest/oaipmh`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- OaiPmhController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/oaipmh?identify`|GET|createResponseEntity|
|`/oaipmh?listIdentifiers`|GET|checkQuery|
|`/oaipmh`|POST|importOaiPmh|

# Clashing routes

## GET on `/oaipmh`
|functionality|params|
|-|-|
|createResponseEntity|identify|
|checkQuery|listIdentifiers|

# Proposed API
TODO