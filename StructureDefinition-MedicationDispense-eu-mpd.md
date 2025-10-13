# MedicationDispense: MPD - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MedicationDispense: MPD**

## Resource Profile: MedicationDispense: MPD 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.eu/fhir/mpd/StructureDefinition/MedicationDispense-eu-mpd | *Version*:0.1.0-ci-build |
| Draft as of 2025-10-13 | *Computable Name*:MedicationDispenseEuMpd |
| **Copyright/Legal**: Used by permission of HL7 Europe, all rights reserved Creative Commons License | |

 
This profile defines how to represent the supply and the associated administration instructions in HL7 FHIR for the purpose of this guide. 

**Usages:**

* Examples for this Profile: [MedicationDispense/300D-dispense-for-2-requests](MedicationDispense-300D-dispense-for-2-requests.md), [MedicationDispense/400D-dispense-1](MedicationDispense-400D-dispense-1.md), [MedicationDispense/400D-dispense-2](MedicationDispense-400D-dispense-2.md) and [MedicationDispense/400E-refused-dispense](MedicationDispense-400E-refused-dispense.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.eu.mpd|current/StructureDefinition/MedicationDispense-eu-mpd)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MedicationDispense-eu-mpd.csv), [Excel](StructureDefinition-MedicationDispense-eu-mpd.xlsx), [Schematron](StructureDefinition-MedicationDispense-eu-mpd.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MedicationDispense-eu-mpd",
  "url" : "http://hl7.eu/fhir/mpd/StructureDefinition/MedicationDispense-eu-mpd",
  "version" : "0.1.0-ci-build",
  "name" : "MedicationDispenseEuMpd",
  "title" : "MedicationDispense: MPD",
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
  "description" : "This profile defines how to represent the supply and the associated administration instructions in HL7 FHIR for the purpose of this guide.",
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
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "rx-dispense-rmim",
      "uri" : "http://www.hl7.org/v3/PORX_RM020070UV",
      "name" : "V3 Pharmacy Dispense RMIM"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationDispense",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationDispense",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationDispense",
        "path" : "MedicationDispense"
      },
      {
        "id" : "MedicationDispense.extension",
        "path" : "MedicationDispense.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "MedicationDispense.extension:renderedDosageInstruction",
        "path" : "MedicationDispense.extension",
        "sliceName" : "renderedDosageInstruction",
        "short" : "Full representation of the dosage instructions",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationDispense.renderedDosageInstruction"
            ]
          }
        ]
      },
      {
        "id" : "MedicationDispense.medication[x]",
        "path" : "MedicationDispense.medication[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "MedicationDispense.medication[x]:medicationReference",
        "path" : "MedicationDispense.medication[x]",
        "sliceName" : "medicationReference",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.eu/fhir/mpd/StructureDefinition/Medication-eu-mpd"
            ]
          }
        ]
      },
      {
        "id" : "MedicationDispense.medication[x]:medicationCodeableConcept",
        "path" : "MedicationDispense.medication[x]",
        "sliceName" : "medicationCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "MedicationDispense.medication[x]:medicationCodeableConcept.extension:medication-absent-reason",
        "path" : "MedicationDispense.medication[x].extension",
        "sliceName" : "medication-absent-reason",
        "short" : "Reason for not providing the medication.",
        "definition" : "Reason for not providing the medication.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/data-absent-reason"]
          }
        ]
      },
      {
        "id" : "MedicationDispense.authorizingPrescription",
        "path" : "MedicationDispense.authorizingPrescription",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.eu/fhir/mpd/StructureDefinition/MedicationRequest-eu-mpd"
            ]
          }
        ]
      },
      {
        "id" : "MedicationDispense.quantity",
        "path" : "MedicationDispense.quantity",
        "min" : 1
      },
      {
        "id" : "MedicationDispense.whenHandedOver",
        "path" : "MedicationDispense.whenHandedOver",
        "min" : 1
      }
    ]
  }
}

```
