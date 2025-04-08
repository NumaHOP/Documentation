# `/api/rest//condreport_prop_conf`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- PropertyConfigurationController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/condreport_prop_conf`|POST|create|
|`/condreport_prop_conf?library`|GET|findByLibrary|
|`/condreport_prop_conf?desc,library`|GET|findByDescPropertyAndLibrary|
|`/condreport_prop_conf?internal,library`|GET|findByInternalPropertyAndLibrary|
|`/condreport_prop_conf/{identifier}`|POST|update|

# Clashing routes

## GET on `/condreport_prop_conf`
|functionality|params|
|-|-|
|findByLibrary|library|
|findByDescPropertyAndLibrary|desc,library|
|findByInternalPropertyAndLibrary|internal,library|

# Proposed API
TODO