# 400C-prescription-cefuroxime-singleline - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **400C-prescription-cefuroxime-singleline**

## Example MedicationRequest: 400C-prescription-cefuroxime-singleline

Profile: [MedicationRequest: MPD](StructureDefinition-MedicationRequest-eu-mpd.md)

Tag: Actionable (Details: Common Tags code actionable = 'Actionable')

**identifier**: 10-123EP

**status**: Active

**intent**: Order

**medication**: [Medication: extension = cefuroxime; form = Powder for solution for injection or infusion](Medication-01A-Cefuroxime1500GenericExplicit.md)

**subject**: [Thomas Engine Male, DoB: 1950-09-15 ( 12345)](Patient-patient1.md)

**authoredOn**: 2024-12-06

**requester**: [PractitionerRole Clinical oncologist](PractitionerRole-doctor1.md)

**reasonCode**: Bronchopneumonia caused by bacteria (disorder)

> **dosageInstruction****sequence**: 1**timing**: Once per 8 hours**route**:Intramuscular route

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1500 milligram(s)(Details: UCUM codemg = 'mg') |


> **dosageInstruction****sequence**: 2**timing**: Once per 8 hours**route**:Intramuscular route

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 750-1500 milligram(s) |


### DispenseRequests

| | | |
| :--- | :--- | :--- |
| - | **Extension** | **ValidityPeriod** |
| * |  | 2024-12-06 --> 2024-12-13 |

### Substitutions

| | |
| :--- | :--- |
| - | **Allowed[x]** |
| * | true |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "400C-prescription-cefuroxime-singleline",
  "meta" : {
    "profile" : [
      "http://hl7.eu/fhir/mpd/StructureDefinition/MedicationRequest-eu-mpd"
    ],
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/common-tags",
        "code" : "actionable"
      }
    ]
  },
  "identifier" : [
    {
      "value" : "10-123EP"
    }
  ],
  "status" : "active",
  "intent" : "order",
  "medicationReference" : {
    "reference" : "Medication/01A-Cefuroxime1500GenericExplicit"
  },
  "subject" : {
    "reference" : "Patient/patient1"
  },
  "authoredOn" : "2024-12-06",
  "requester" : {
    "reference" : "PractitionerRole/doctor1"
  },
  "reasonCode" : [
    {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "10625071000119104",
          "display" : "Bronchopneumonia caused by bacteria (disorder)"
        }
      ]
    }
  ],
  "dosageInstruction" : [
    {
      "sequence" : 1,
      "timing" : {
        "repeat" : {
          "boundsDuration" : {
            "value" : 3,
            "unit" : "day",
            "system" : "http://unitsofmeasure.org",
            "code" : "d"
          },
          "frequency" : 1,
          "period" : 8,
          "periodUnit" : "h"
        }
      },
      "route" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "78421000",
            "display" : "Intramuscular route"
          }
        ]
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 1500,
            "unit" : "milligram(s)",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          }
        }
      ]
    },
    {
      "sequence" : 2,
      "timing" : {
        "repeat" : {
          "boundsDuration" : {
            "value" : 4,
            "unit" : "day",
            "system" : "http://unitsofmeasure.org",
            "code" : "d"
          },
          "frequency" : 1,
          "period" : 8,
          "periodUnit" : "h"
        }
      },
      "route" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "78421000",
            "display" : "Intramuscular route"
          }
        ]
      },
      "doseAndRate" : [
        {
          "doseRange" : {
            "low" : {
              "value" : 750,
              "unit" : "milligram(s)",
              "system" : "http://unitsofmeasure.org",
              "code" : "mg"
            },
            "high" : {
              "value" : 1500,
              "unit" : "milligram(s)",
              "system" : "http://unitsofmeasure.org",
              "code" : "mg"
            }
          }
        }
      ]
    }
  ],
  "dispenseRequest" : {
    "extension" : [
      {
        "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medicationrequest-prescribedQuantity",
        "valueQuantity" : {
          "value" : 21,
          "unit" : "Vial",
          "system" : "http://standardterms.edqm.eu",
          "code" : "15060000"
        }
      }
    ],
    "validityPeriod" : {
      "start" : "2024-12-06",
      "end" : "2024-12-13"
    }
  },
  "substitution" : {
    "allowedBoolean" : true
  }
}

```
