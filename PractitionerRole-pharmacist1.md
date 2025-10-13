# pharmacist1 - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **pharmacist1**

## Example PractitionerRole: pharmacist1

**practitioner**: [Moon Farmatseut](Practitioner-practitioner2.md)

**organization**: [Su-Bin Pharmacy B](Organization-organization2.md)

**code**: Pharmacist



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "pharmacist1",
  "practitioner" : {
    "reference" : "Practitioner/practitioner2",
    "display" : "Moon Farmatseut"
  },
  "organization" : {
    "reference" : "Organization/organization2",
    "display" : "Su-Bin Pharmacy B"
  },
  "code" : [
    {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "46255001",
          "display" : "Pharmacist"
        }
      ]
    }
  ]
}

```
