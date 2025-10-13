# 100C-3-medication-prescription-request1 - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **100C-3-medication-prescription-request1**

## Example MedicationRequest: 100C-3-medication-prescription-request1

Profile: [MedicationRequest: MPD](StructureDefinition-MedicationRequest-eu-mpd.md)

**identifier**: 100-1/3

**status**: Active

**intent**: Option

**medication**: Thalidomide 50 mg oral capsule

**subject**: [Thomas Engine Male, DoB: 1950-09-15 ( 12345)](Patient-patient1.md)

**authoredOn**: 2024-10-03

**requester**: [PractitionerRole Clinical oncologist](PractitionerRole-doctor1.md)

**reasonCode**: Multiple myeloma

**groupIdentifier**: 100

> **dosageInstruction****timing**: Late Evening, Once per 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 4 Tablet(Details: SNOMED CT code732936001 = 'Tablet (unit of presentation)') |


### DispenseRequests

| | | | |
| :--- | :--- | :--- | :--- |
| - | **ValidityPeriod** | **NumberOfRepeatsAllowed** | **Quantity** |
| * | 2024-10-03 --> 2024-12-03 | 1 | 168 Tablet(Details: SNOMED CT code732936001 = 'Tablet (unit of presentation)') |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "100C-3-medication-prescription-request1",
  "meta" : {
    "profile" : [
      "http://hl7.eu/fhir/mpd/StructureDefinition/MedicationRequest-eu-mpd"
    ]
  },
  "identifier" : [
    {
      "value" : "100-1/3"
    }
  ],
  "status" : "active",
  "intent" : "option",
  "medicationCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "376255008",
        "display" : "Thalidomide 50 mg oral capsule"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/patient1"
  },
  "authoredOn" : "2024-10-03",
  "requester" : {
    "reference" : "PractitionerRole/doctor1"
  },
  "reasonCode" : [
    {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "109989006",
          "display" : "Multiple myeloma"
        }
      ]
    }
  ],
  "groupIdentifier" : {
    "value" : "100"
  },
  "dosageInstruction" : [
    {
      "timing" : {
        "repeat" : {
          "boundsDuration" : {
            "value" : 42,
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
            "value" : 4,
            "unit" : "Tablet",
            "system" : "http://snomed.info/sct",
            "code" : "732936001"
          }
        }
      ]
    }
  ],
  "dispenseRequest" : {
    "validityPeriod" : {
      "start" : "2024-10-03",
      "end" : "2024-12-03"
    },
    "numberOfRepeatsAllowed" : 1,
    "quantity" : {
      "value" : 168,
      "unit" : "Tablet",
      "system" : "http://snomed.info/sct",
      "code" : "732936001"
    }
  }
}

```
