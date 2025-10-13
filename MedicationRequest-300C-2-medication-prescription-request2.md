# 300C-2-medication-prescription-request2 - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **300C-2-medication-prescription-request2**

## Example MedicationRequest: 300C-2-medication-prescription-request2

Profile: [MedicationRequest: MPD](StructureDefinition-MedicationRequest-eu-mpd.md)

**identifier**: 300-2/2

**status**: Active

**intent**: Option

**medication**: [Medication: extension = Tube,20 gram; form = Vaginal cream; amount = 1 Tube / 1](Medication-02A1-CanifugCremolumCreamItem.md)

**subject**: [Thomas Engine Male, DoB: 1950-09-15 ( 12345)](Patient-patient1.md)

**authoredOn**: 2024-10-06

**requester**: [PractitionerRole Clinical oncologist](PractitionerRole-doctor1.md)

**reasonCode**: Candidiasis of vagina

**groupIdentifier**: 300

> **dosageInstruction****timing**: 2 per 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Application - unit of product usage(Details: SNOMED CT code413568008 = 'Application') |


### DispenseRequests

| | | | |
| :--- | :--- | :--- | :--- |
| - | **ValidityPeriod** | **NumberOfRepeatsAllowed** | **Quantity** |
| * | 2024-10-06 --> 2024-12-06 | 1 | 20 gram(s)(Details: UCUM codeg = 'g') |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "300C-2-medication-prescription-request2",
  "meta" : {
    "profile" : [
      "http://hl7.eu/fhir/mpd/StructureDefinition/MedicationRequest-eu-mpd"
    ]
  },
  "identifier" : [
    {
      "value" : "300-2/2"
    }
  ],
  "status" : "active",
  "intent" : "option",
  "medicationReference" : {
    "reference" : "Medication/02A1-CanifugCremolumCreamItem"
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
          "frequency" : 2,
          "period" : 1,
          "periodUnit" : "d"
        }
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 1,
            "unit" : "Application - unit of product usage",
            "system" : "http://snomed.info/sct",
            "code" : "413568008"
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
      "value" : 20,
      "unit" : "gram(s)",
      "system" : "http://unitsofmeasure.org",
      "code" : "g"
    }
  }
}

```
