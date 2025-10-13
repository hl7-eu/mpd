# 100B-RequestOrchestration - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **100B-RequestOrchestration**

## Example RequestGroup: 100B-RequestOrchestration

**groupIdentifier**: 100

**status**: Active

**intent**: Order

**subject**: [Thomas Engine Male, DoB: 1950-09-15 ( 12345)](Patient-patient1.md)

> **action****resource**:[MedicationRequest: identifier = 100-1/3; status = active; intent = option; medication[x] = Thalidomide 50 mg oral capsule; authoredOn = 2024-10-03; reasonCode = Multiple myeloma; groupIdentifier = 100](MedicationRequest-100C-3-medication-prescription-request1.md)

> **action****resource**:[MedicationRequest: identifier = 100-2/3; status = active; intent = option; medication[x] = Melphalan 2 mg oral tablet; authoredOn = 2024-10-03; reasonCode = Multiple myeloma; groupIdentifier = 100](MedicationRequest-100C-3-medication-prescription-request2.md)

> **action****resource**:[MedicationRequest: identifier = 100-3/3; status = active; intent = option; medication[x] = Prednisone 50 mg oral tablet; authoredOn = 2024-10-03; reasonCode = Multiple myeloma; groupIdentifier = 100](MedicationRequest-100C-3-medication-prescription-request3.md)



## Resource Content

```json
{
  "resourceType" : "RequestGroup",
  "id" : "100B-RequestOrchestration",
  "groupIdentifier" : {
    "value" : "100"
  },
  "status" : "active",
  "intent" : "order",
  "subject" : {
    "reference" : "Patient/patient1"
  },
  "action" : [
    {
      "resource" : {
        "reference" : "MedicationRequest/100C-3-medication-prescription-request1"
      }
    },
    {
      "resource" : {
        "reference" : "MedicationRequest/100C-3-medication-prescription-request2"
      }
    },
    {
      "resource" : {
        "reference" : "MedicationRequest/100C-3-medication-prescription-request3"
      }
    }
  ]
}

```
