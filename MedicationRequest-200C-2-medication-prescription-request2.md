# 200C-2-medication-prescription-request2 - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **200C-2-medication-prescription-request2**

## Example MedicationRequest: 200C-2-medication-prescription-request2

Profile: [MedicationRequest: MPD](StructureDefinition-MedicationRequest-eu-mpd.md)

**identifier**: 200-2/2

**status**: Active

**intent**: Order

**medication**: Amoxicillin 875 mg oral tablet

**subject**: [Thomas Engine Male, DoB: 1950-09-15 ( 12345)](Patient-patient1.md)

**authoredOn**: 2024-10-06

**requester**: [PractitionerRole Clinical oncologist](PractitionerRole-doctor1.md)

**reasonCode**: Maxillary sinusitis

**groupIdentifier**: 200

> **dosageInstruction****timing**: 2 per 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Tablet(Details: SNOMED CT code732936001 = 'Tablet (unit of presentation)') |


### DispenseRequests

| | | | |
| :--- | :--- | :--- | :--- |
| - | **ValidityPeriod** | **NumberOfRepeatsAllowed** | **Quantity** |
| * | 2024-10-06 --> 2024-12-06 | 1 | 14 Tablet(Details: SNOMED CT code732936001 = 'Tablet (unit of presentation)') |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "200C-2-medication-prescription-request2",
  "meta" : {
    "profile" : [
      "http://hl7.eu/fhir/mpd/StructureDefinition/MedicationRequest-eu-mpd"
    ]
  },
  "identifier" : [
    {
      "value" : "200-2/2"
    }
  ],
  "status" : "active",
  "intent" : "order",
  "medicationCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "374647008",
        "display" : "Amoxicillin 875 mg oral tablet"
      }
    ]
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
          "code" : "88348008",
          "display" : "Maxillary sinusitis"
        }
      ]
    }
  ],
  "groupIdentifier" : {
    "value" : "200"
  },
  "dosageInstruction" : [
    {
      "timing" : {
        "repeat" : {
          "boundsDuration" : {
            "value" : 7,
            "unit" : "day",
            "system" : "http://unitsofmeasure.org",
            "code" : "d"
          },
          "frequency" : 2,
          "period" : 1,
          "periodUnit" : "d"
        }
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 1,
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
      "start" : "2024-10-06",
      "end" : "2024-12-06"
    },
    "numberOfRepeatsAllowed" : 1,
    "quantity" : {
      "value" : 14,
      "unit" : "Tablet",
      "system" : "http://snomed.info/sct",
      "code" : "732936001"
    }
  }
}

```
