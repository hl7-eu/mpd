# 400D-dispense-2 - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **400D-dispense-2**

## Example MedicationDispense: 400D-dispense-2

Profile: [MedicationDispense: MPD](StructureDefinition-MedicationDispense-eu-mpd.md)

**status**: Completed

**medication**: [Cefuroxime MIP 750 mg, powder for solution for injection. N5.](Medication-01D-Cefuroxime750Branded.md)

**subject**: [Thomas Engine Male, DoB: 1950-09-15 ( 12345)](Patient-patient1.md)

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [PractitionerRole Pharmacist](PractitionerRole-pharmacist1.md) |

**authorizingPrescription**: [MedicationRequest: identifier = 10-123EP; status = active; intent = order; medication[x] = ->Medication: extension = cefuroxime; form = Powder for solution for injection or infusion; authoredOn = 2024-12-06; reasonCode = Bronchopneumonia caused by bacteria (disorder)](MedicationRequest-400C-prescription-cefuroxime-singleline.md)

**quantity**: 3 1(Details: UCUM code1 = '1')

**daysSupply**: 4 day(s)(Details: UCUM coded = 'd')

**whenHandedOver**: 2024-12-09 10:55:00+0000



## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "400D-dispense-2",
  "meta" : {
    "profile" : [
      "http://hl7.eu/fhir/mpd/StructureDefinition/MedicationDispense-eu-mpd"
    ]
  },
  "status" : "completed",
  "medicationReference" : {
    "reference" : "Medication/01D-Cefuroxime750Branded",
    "display" : "Cefuroxime MIP 750 mg, powder for solution for injection. N5."
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
    "value" : 3,
    "system" : "http://unitsofmeasure.org",
    "code" : "1"
  },
  "daysSupply" : {
    "value" : 4,
    "unit" : "day(s)",
    "system" : "http://unitsofmeasure.org",
    "code" : "d"
  },
  "whenHandedOver" : "2024-12-09T10:55:00Z"
}

```
