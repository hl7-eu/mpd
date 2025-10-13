# patient1 - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **patient1**

## Example Patient: patient1

Profile: [Patient (EU core)](http://hl7.eu/fhir/base/0.1.0-ballot/StructureDefinition-patient-eu-core.html)

Thomas Engine Male, DoB: 1950-09-15 ( 12345)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "patient1",
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
      "given" : ["Thomas"]
    }
  ],
  "gender" : "male",
  "birthDate" : "1950-09-15"
}

```
