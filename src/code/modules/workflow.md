# The Workflow Module.

In this module the primitive we operate on are workflows. In NumaHOP workflows
are tracking the life-cycle of document units.

A workflow is constituted of states. Each states is either processed
automatically or require some user interaction in order to be processed. Some
states are process automatically and don't require much user interaction such
as the Diffusion, Archiving, Automatic Checks, or Delivery Waiting.

Once the condition required for the state to validate the workflow completes it
and start the next state. Some states can also be processed in parallel such as
diffusion and archiving states.

The workflow is configured with a workflow model. The workflow model to use on
a document unit is configured either on the project, the lot, the train. It can
also be defined on the document unit itself. If a workflow model is not present
it will inherit the model of the parent document unit grouping. (project -> lot
-> train -> document unit)

## Order of states

- DOCUMENT_INITIALISATION
- SLIPS_GENERATION
- VALIDATION_CONDITION_REPORT
- VALIDATION_SLIPS_CONDITION_REPORT
- CONDITION_REPORT_BEFORE_DIGITIZATION
- WAITING_FOR_DIGITIZATION
- CONDITION_REPORT_AFTER_DIGITIZATION
- WAITING_FOR_DELIVERY
- WAITING_FOR_AUTOMATIC_CHECKS
- WAITING_FOR_QUALITY_CONTROL
- DOCUMENT_PREREJECTION
- DOCUMENT_PREVALIDATION
- DOCUMENT_VALIDATION
- BIBLIOGRAPHIC_RECORDS_VALIDATION
- CONTROL_REPPORTS
- DOCUMENT_ARCHIVING
- DOCUMENT_BROADCAST
- DOCUMENT_BROADCAST_OMEKA
- DOCUMENT_BROADCAST_DIGITAL_LIBRARY
- DOCUMENT_BROADCAST_LOCAL
- CLOSING_DOCUMENT

Special state as it is manually inserted in the workflow in case of a rejection
of the state DOCUMENT_PREREJECTION:
- WAITING_FOR_REDELIVERY

Each states holds a status:
- NOT_STARTED
- PENDING
- FINISHED
- CANCELED
- FAILED
- TO_WAIT
- WAITING
- WAITING_NEXT_COMPLETED
- TO_SKIP
- SKIPPED

## Module files Domain objects: Domain Ojects:
- WorkflowModel
- WorkflowGroup
- WorkflowStateModel
- WorkflowStateKey
- WorkflowStateStatus
- DocUnitWorkflow
- DocUnitState (abstract class).
- All states classes implementation.

Services: 
- WorkflowModelService
- WorkflowModelStateService
- WorkflowService
- DocUnitWorkflowService
- WorkflowGroupService
- WorkflowGroupValidationService
- UiWorkflowService
- UiWorkflowGroupService
- UiWorkflowModelService

Controllers:
- WorkflowController
- WorkflowGroupController
- WorkflowModelController

Workflow are created on a document unit when the workflows are started on the
lot level. But once a workflow started its steps can't be modified. When
creating a workflow we use a workflow model. Workflow models are a template of
a workflow. Each state has different statuses when
