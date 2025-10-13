# patient2 - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **patient2**

## Example Patient: patient2

Profile: [Patient (EU core)](http://hl7.eu/fhir/base/0.1.0-ballot/StructureDefinition-patient-eu-core.html)

Emily Engine Female, DoB: 1990-10-28 ( 12345)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "patient2",
  "meta" : {
    "profile" : [
      "http://hl7.eu/fhir/base/StructureDefinition/patient-eu-core"
    ]
  },
  "identifier" : [
    {
      "value" : "12345"
    }
  ],
  "name" : [
    {
      "family" : "Engine",
      "given" : ["Emily"]
    }
  ],
  "gender" : "female",
  "birthDate" : "1990-10-28"
}

```
