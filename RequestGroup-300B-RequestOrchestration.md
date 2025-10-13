# 300B-RequestOrchestration - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **300B-RequestOrchestration**

## Example RequestGroup: 300B-RequestOrchestration

**groupIdentifier**: 300

**status**: Active

**intent**: Order

**subject**: [Thomas Engine Male, DoB: 1950-09-15 ( 12345)](Patient-patient1.md)

> **action****resource**:[MedicationRequest: identifier = 300-1/2; status = active; intent = option; medication[x] = ->Medication: extension = Pessary; form = Pessary; amount = 6 Pessary / 1; authoredOn = 2024-10-06; reasonCode = Candidiasis of vagina; groupIdentifier = 300](MedicationRequest-300C-2-medication-prescription-request1.md)

> **action****resource**:[MedicationRequest: identifier = 300-2/2; status = active; intent = option; medication[x] = ->Medication: extension = Tube,20 gram; form = Vaginal cream; amount = 1 Tube / 1; authoredOn = 2024-10-06; reasonCode = Candidiasis of vagina; groupIdentifier = 300](MedicationRequest-300C-2-medication-prescription-request2.md)



## Resource Content

```json
{
  "resourceType" : "RequestGroup",
  "id" : "300B-RequestOrchestration",
  "groupIdentifier" : {
    "value" : "300"
  },
  "status" : "active",
  "intent" : "order",
  "subject" : {
    "reference" : "Patient/patient1"
  },
  "action" : [
    {
      "resource" : {
        "reference" : "MedicationRequest/300C-2-medication-prescription-request1"
      }
    },
    {
      "resource" : {
        "reference" : "MedicationRequest/300C-2-medication-prescription-request2"
      }
    }
  ]
}

```
