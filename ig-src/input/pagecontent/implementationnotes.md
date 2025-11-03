### Prescription - document or request approach

Prescription has historically been a document that authorises one or multiple requests. In FHIR, there is no explicit resource for Prescription, and it is possible to focus on the document aspect or the request aspect. Some countries have preferred to keep the document view using Bundle with Composition. This IG does not encourage nor ban this approach, but there is no profile for document Bundle in the IG.  

Examples in this IG use collection Bundle simply for making it easier to read for the humans. Many implementers use transaction Bundle for creating new prescriptions as it allows assigning server-side IDs more easily.  

The choice of wrapping the request and its related resources in a Bundle or not, is entirely up to the implementers.  


### Multi-item prescriptions

The recommended way of designing prescriptions in HL7 FHIR is to have one item per prescription - this is reflected in the MedicationRequest resource where Medication cardinality is 1..1. Currently, European crossborder prescription's CDA implementation is also allowing only one medication per presciption, expecting the country of origin to split the multi-item prescription into several crossborder prescriptions and track the dispensations accordingly. However, real life national prescription systems are often designed differently from this logic - in many countries a prescription may contain more than one medication item. 

There is no single mechanism in HL7 FHIR for handling multi-item prescriptions, and in order to choose the optimal solution, one must consider the business requirements and reasons behind the multi-item prescription:  
- Is it used merely as a grouping mechanism without deeper semantics?
- Are there technical reasons why multiple items must be transported as one group?
- Are the items on prescription related to eachother through the dosaging scheme? 
- Must the items be dispensed as one transaction?
- Are there pricing or reimbursement rules that are dependent on grouping?
- How does a status of a prescription relate to the statuses of individual requests?
- What are the consequences of adding or removing prescription items: can a single-item prescription become a multi-item prescription and vice versa?

Considering the requirements above, the best match from the following approaches can be chosen.

#### Option 1: No grouping 

This option can only be used when the items on a prescription can be easily split and dispensed separately. The information about which prescription the items belong to is handled outside FHIR services.  

**Pros:**
- Technically the easiest option to implement in FHIR.
- Allows the same handling of data for single- and multi-item prescriptions.  

**Cons:** 
- Prescription identifier not present
- Complexity of matching the items and prescriptions does not disappear, but is pushed to the prescription/dispensing systems.
- Only applicable when individual items have no interdependencies.

#### Option 2: Using .groupIdentifier

This option differs from the previous one by one important aspect: the data element .groupIdentifier is filled in with the prescription identifier. This allows linking of different prescription items also in FHIR services, but it does not provide any extra information about the prescription or interdependencies between different items on the same prescription. 
  
**Pros:**  
- Easy to implement
- Allows very similar handling of data for single- and multi-item prescriptions
- .groupIdentifier preserves prescription identifier.  
  
**Cons:**  
- No way to show interdependencies between individual items/requests
- Status of the prescription has to be the same or calculable from individual prescription items

#### Option 3: Using RequestOrchestration/RequestGroup

This option is technically more complex to handle on the FHIR side, but it allows communicating the interdependencies of different items on a prescription. Every prescription item uses MedicationRequest resource just like in case of the first two options. However, an additional resource is populated to provide extra information about the semantics of grouping the items on the same prescription. RequestOrchestration (R5) or RequestGroup (R4) share the same .groupIdentifier as the MedicationRequests that are linked from it. However, note that RequestOrchestration/RequestGroup is not semantically the prescription, but only a part of it. Even with this approach, there is no set resource for the prescription object as such.
  
**Pros:**  
- Possible to define interdependencies between prescription items
- Multiitem prescription is clearly defined and distinguishable from single-item prescriptions  

**Cons:**  
Multiitem prescription and single-item prescription are handled differently. In a prescription system where multi-item prescriptions use RequestOrchestration, it is important to consider whether single-item prescriptions should be using the same mechanism, even though it does not add anything to the semantics.

When grouping MedicationRequests with a RequestOrchestration/RequestGroup:
- MedicationRequest.intent value must be ‘option’. This is a signal to the receiver, that the request must be handled as part of a bigger request group.  
- The element binding MedicationRequest and RequestOrchestration/RequestGroup together is .groupIdentifier. By sharing the same .groupIdentifier value, they indicate being a part of the same prescription document.  
- Prescription identifier should be the value of .groupIdentifier.  
- MedicationRequests, if they originate from the same prescription, should have the same patient and authoring metadata.  

The following diagram explains splitting custom multi-item prescription (yellow) into HL7FHIR resources (green).  

<figure>
  {% include multiitem-prescription.svg %}
  <!-- <figcaption>Multiitem prescription example</figcaption> -->
</figure>
<br clear="all"/>

Please see examples [**100A**](Bundle-100A-multiitem-prescription-with-orchestration.html) and [**300A**](Bundle-300A-multiitem-prescription-with-orchestration.html) in the [Artifacts page](artifacts.html) for more information about how to create a multi-item prescription using RequestOrchestration, and example [**200A**](Bundle-200A-multiitem-prescription-without-orchestration.html) for information about how to create a multi-item prescription without an additional grouping/organising resource. All examples in this IG use Bundle as a wrapper for multi-item prescription, however this is just for the convenience, and not a normative part of this IG. Implementers can choose whether to use Bundle or which type of Bundle to use.

Read more about using RequestOrchestration/RequestGroup in FHIR workflow pages.


### Prescription statuses and workflow

MedicationRequest has a very limited set of statuses available for use. This is a deliberate design choice to improve interoperability across different settings.

Prescription and dispensation systems often use additional or different statuses, and those statuses are not directly mappable to MedicationRequest.status. Some of these prescription statuses may actually be related to the dispense rather than the request, so the semantically correct place for some statuses would actually be MedicationDispense.status. 

Some simple workflows may choose to make use of the .meta.tag 'actionable' to indicate whether the request is dispensable or simply for information. 
For more sophisticated workflows, especially when FHIR messaging is the basis of the workflow, Task resource should be used in addition to MedicationRequest and MedicationDispense. For group request, an additional RequestOrchestration (R4 RequestGroup) resource should be used.

Workflows are typically implementation-specific and the aim of this implementation guide is not to provide one solution for everyone. Practice of using prescription and dispensation statuses varies a lot across countries and use cases (e.g. hospital use vs community pharmacy). While it is important for each implementation to map their business statuses to FHIR MedicationRequest.status values, the usage of Task and building a workflow will not be restricted by this implementation guide.

HL7 guidance materials for designing request workflows:
- [Workflow](https://hl7.org/fhir/workflow.html)
- [Workflow module](https://hl7.org/fhir/workflow-module.html)
- [Additional explanations - WIP](https://confluence.hl7.org/pages/viewpage.action?pageId=248715046)




