# 400E-refused-dispense - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **400E-refused-dispense**

## Example MedicationDispense: 400E-refused-dispense

Profile: [MedicationDispense: MPD](StructureDefinition-MedicationDispense-eu-mpd.md)

**status**: Declined

**medication**: 

**subject**: [Thomas Engine Male, DoB: 1950-09-15 ( 12345)](Patient-patient1.md)

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [PractitionerRole Pharmacist](PractitionerRole-pharmacist1.md) |

**authorizingPrescription**: [MedicationRequest: identifier = 10-123EP; status = active; intent = order; medication[x] = ->Medication: extension = cefuroxime; form = Powder for solution for injection or infusion; authoredOn = 2024-12-06; reasonCode = Bronchopneumonia caused by bacteria (disorder)](MedicationRequest-400C-prescription-cefuroxime-singleline.md)

**quantity**: 0 1(Details: UCUM code1 = '1')

**whenHandedOver**: 2024-12-06 19:54:00+0000



## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "400E-refused-dispense",
  "meta" : {
    "profile" : [
      "http://hl7.eu/fhir/mpd/StructureDefinition/MedicationDispense-eu-mpd"
    ]
  },
  "status" : "declined",
  "medicationCodeableConcept" : {
    "extension" : [
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
        "valueCode" : "not-performed"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/patient1"
  },
  "performer" : [
    {
      "actor" : {
        "reference" : "PractitionerRole/pharmacist1"
      }
    }
  ],
  "authorizingPrescription" : [
    {
      "reference" : "MedicationRequest/400C-prescription-cefuroxime-singleline"
    }
  ],
  "quantity" : {
    "value" : 0,
    "system" : "http://unitsofmeasure.org",
    "code" : "1"
  },
  "whenHandedOver" : "2024-12-06T19:54:00Z"
}

```
