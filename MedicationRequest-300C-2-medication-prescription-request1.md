# 300C-2-medication-prescription-request1 - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **300C-2-medication-prescription-request1**

## Example MedicationRequest: 300C-2-medication-prescription-request1

Profile: [MedicationRequest: MPD](StructureDefinition-MedicationRequest-eu-mpd.md)

**identifier**: 300-1/2

**status**: Active

**intent**: Option

**medication**: [Medication: extension = Pessary; form = Pessary; amount = 6 Pessary / 1](Medication-02A2-CanifugCremolumPessaryItem.md)

**subject**: [Thomas Engine Male, DoB: 1950-09-15 ( 12345)](Patient-patient1.md)

**authoredOn**: 2024-10-06

**requester**: [PractitionerRole Clinical oncologist](PractitionerRole-doctor1.md)

**reasonCode**: Candidiasis of vagina

**groupIdentifier**: 300

> **dosageInstruction****timing**: Late Evening, Once per 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Pessary(Details: SNOMED CT code733007009 = 'Pessary (unit of presentation)') |


### DispenseRequests

| | | | |
| :--- | :--- | :--- | :--- |
| - | **ValidityPeriod** | **NumberOfRepeatsAllowed** | **Quantity** |
| * | 2024-10-06 --> 2024-12-06 | 1 | 6 Pessary(Details: SNOMED CT code733007009 = 'Pessary (unit of presentation)') |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "300C-2-medication-prescription-request1",
  "meta" : {
    "profile" : [
      "http://hl7.eu/fhir/mpd/StructureDefinition/MedicationRequest-eu-mpd"
    ]
  },
  "identifier" : [
    {
      "value" : "300-1/2"
    }
  ],
  "status" : "active",
  "intent" : "option",
  "medicationReference" : {
    "reference" : "Medication/02A2-CanifugCremolumPessaryItem"
  },
  "subject" : {
    "reference" : "Patient/patient1"
  },
  "authoredOn" : "2024-10-06",
  "requester" : {
    "reference" : "PractitionerRole/doctor1"
  },
  "reasonCode" : [
    {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "72934000",
          "display" : "Candidiasis of vagina"
        }
      ]
    }
  ],
  "groupIdentifier" : {
    "value" : "300"
  },
  "dosageInstruction" : [
    {
      "timing" : {
        "repeat" : {
          "boundsDuration" : {
            "value" : 6,
            "unit" : "day",
            "system" : "http://unitsofmeasure.org",
            "code" : "d"
          },
          "frequency" : 1,
          "period" : 1,
          "periodUnit" : "d",
          "when" : ["EVE.late"]
        }
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 1,
            "unit" : "Pessary",
            "system" : "http://snomed.info/sct",
            "code" : "733007009"
          }
        }
      ]
    }
  ],
  "dispenseRequest" : {
    "validityPeriod" : {
      "start" : "2024-10-06",
      "end" : "2024-12-06"
    },
    "numberOfRepeatsAllowed" : 1,
    "quantity" : {
      "value" : 6,
      "unit" : "Pessary",
      "system" : "http://snomed.info/sct",
      "code" : "733007009"
    }
  }
}

```
