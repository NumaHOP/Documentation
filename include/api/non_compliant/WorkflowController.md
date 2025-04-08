# `/api/rest//workflow`
> Not Complete.
> Doesn't respect oas v3.1.

# Relevant files
- WorkflowController.java
- TODO front end

# Current API
|route|method|functionality|
|-|-|-|
|`/workflow/{identifier}`|GET|findByIdentifier|
|`/workflow?canProcess,docUnit`|GET|canCurrentUserProcessState|
|`/workflow?process,docUnitId`|GET|processState|
|`/workflow?docUnit`|GET|findByDocUnitIdentifier|
|`/workflow?isDone`|GET|isStateDone|
|`/workflow?isWorkflowStarted`|GET|isWorkflowStarted|
|`/workflow?isCheckStarted`|GET|isCheckStarted|
|`/workflow?isWaitingRedelivering`|GET|isWaitingForRedelivering|
|`/workflow?canReportBeValidated`|GET|canReportBeValidated|
|`/workflow?isRejectDefinitive`|GET|isRejectDefinitive|
|`/workflow?resetNumWaiting`|POST|resetToNumWaiting|
|`/workflow?massValidate`|POST|massValidate|
|`/workflow?massValidateRecords`|POST|massValidateRecords|
|`/workflow?endAllDocWorkflows`|POST|endAllDocWorkflows|
|`/workflow?validDocWorkflowState`|POST|validDocWorkflowState|
|`/workflow?reinitDocWorkflowState`|POST|reinitDocWorkflowState|

# Clashing routes

## GET on `/workflow`
|functionality|params|
|-|-|
|canCurrentUserProcessState|canProcess,docUnit|
|processState|process,docUnitId|
|findByDocUnitIdentifier|docUnit|
|isStateDone|isDone|
|isWorkflowStarted|isWorkflowStarted|
|isCheckStarted|isCheckStarted|
|isWaitingForRedelivering|isWaitingRedelivering|
|canReportBeValidated|canReportBeValidated|
|isRejectDefinitive|isRejectDefinitive|

## POST on `/workflow`
|functionality|params|
|-|-|
|resetToNumWaiting|resetNumWaiting|
|massValidate|massValidate|
|massValidateRecords|massValidateRecords|
|endAllDocWorkflows|endAllDocWorkflows|
|validDocWorkflowState|validDocWorkflowState|
|reinitDocWorkflowState|reinitDocWorkflowState|

# Proposed API
TODO