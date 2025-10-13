# A.1.1 Patient administrative data - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **A.1.1 Patient administrative data**

## Logical Model: A.1.1 Patient administrative data 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.eu/fhir/mpd/StructureDefinition/Subject | *Version*:0.1.0-ci-build |
| Draft as of 2025-10-13 | *Computable Name*:SubjectEpEhn |
| **Copyright/Legal**: Used by permission of HL7 Europe, all rights reserved Creative Commons License | |

 
Patient. Sections A1.1 of the eHN guideline. 

**Usages:**

* Use this Logical Model: [A - Prescription](StructureDefinition-Prescription.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.eu.mpd|current/StructureDefinition/Subject)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Subject.csv), [Excel](StructureDefinition-Subject.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Subject",
  "url" : "http://hl7.eu/fhir/mpd/StructureDefinition/Subject",
  "version" : "0.1.0-ci-build",
  "name" : "SubjectEpEhn",
  "title" : "A.1.1 Patient administrative data",
  "status" : "draft",
  "date" : "2025-10-13T13:36:09+00:00",
  "publisher" : "HL7 Europe",
  "contact" : [
    {
      "name" : "HL7 Europe",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://hl7.eu"
        }
      ]
    }
  ],
  "description" : "Patient. Sections A1.1 of the eHN guideline.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
          "code" : "150",
          "display" : "Europe"
        }
      ]
    }
  ],
  "copyright" : "Used by permission of HL7 Europe, all rights reserved Creative Commons License",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.eu/fhir/mpd/StructureDefinition/Subject",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Subject",
        "path" : "Subject",
        "short" : "A.1.1 Patient administrative data",
        "definition" : "Patient. Sections A1.1 of the eHN guideline."
      },
      {
        "id" : "Subject.familyName",
        "path" : "Subject.familyName",
        "short" : "A.1.1.1 Familyname/surname",
        "definition" : "The family name/surname/last name of the patient. This field can contain more than one element or multiple fields could be present.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Subject.givenName",
        "path" : "Subject.givenName",
        "short" : "A.1.1.2 Given name",
        "definition" : "The given name/first name of the patient (also known as forename or first \nname) [ISO TS 22220:2011]. This field can contain more than one element.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Subject.dateOfBirth",
        "path" : "Subject.dateOfBirth",
        "short" : "A.1.1.3 Date of birth",
        "definition" : "The date of birth of the patient [ISO TS 22220:2011].\nThis field may contain only the year if the day and month are not available, \ne.g.: 2009 - Preferred system(s): ISO 8601 ",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Subject.identifier",
        "path" : "Subject.identifier",
        "short" : "A.1.1.4 Personal identifier",
        "definition" : "Country ID, unique to the patient in that country. Example: ID for a Portuguese patient, national healthcare patient ID. Multiple identifiers could be provided.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "Subject.gender",
        "path" : "Subject.gender",
        "short" : "A.1.1.5 Gender",
        "definition" : "This field must contain a recognised valid value for 'administrative gender'. \nIf different, 'physiological sex' should be communicated elsewhere.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Administrative Gender"
        }
      },
      {
        "id" : "Subject.nativeLanguage",
        "path" : "Subject.nativeLanguage",
        "short" : "A.1.1.6 Native language",
        "definition" : "The native language of the patient. This may be important for the information that is given to the patient regarding use of the prescribed product [N1228 ISO NP TS 17251]",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ISO 639"
        }
      }
    ]
  }
}

```
