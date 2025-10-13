# MedicationRequest: MPD - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MedicationRequest: MPD**

## Resource Profile: MedicationRequest: MPD 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.eu/fhir/mpd/StructureDefinition/MedicationRequest-eu-mpd | *Version*:0.1.0-ci-build |
| Draft as of 2025-10-13 | *Computable Name*:MedicationRequestEuMpd |
| **Copyright/Legal**: Used by permission of HL7 Europe, all rights reserved Creative Commons License | |

 
This profile defines how to represent MedicationRequest in HL7 FHIR for the purpose of this guide. 

**Usages:**

* Refer to this Profile: [MedicationDispense: MPD](StructureDefinition-MedicationDispense-eu-mpd.md)
* Examples for this Profile: [MedicationRequest/100C-3-medication-prescription-request1](MedicationRequest-100C-3-medication-prescription-request1.md), [MedicationRequest/100C-3-medication-prescription-request2](MedicationRequest-100C-3-medication-prescription-request2.md), [MedicationRequest/100C-3-medication-prescription-request3](MedicationRequest-100C-3-medication-prescription-request3.md), [MedicationRequest/200C-2-medication-prescription-request1](MedicationRequest-200C-2-medication-prescription-request1.md)...Show 4 more,[MedicationRequest/200C-2-medication-prescription-request2](MedicationRequest-200C-2-medication-prescription-request2.md),[MedicationRequest/300C-2-medication-prescription-request1](MedicationRequest-300C-2-medication-prescription-request1.md),[MedicationRequest/300C-2-medication-prescription-request2](MedicationRequest-300C-2-medication-prescription-request2.md)and[MedicationRequest/400C-prescription-cefuroxime-singleline](MedicationRequest-400C-prescription-cefuroxime-singleline.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.eu.mpd|current/StructureDefinition/MedicationRequest-eu-mpd)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MedicationRequest-eu-mpd.csv), [Excel](StructureDefinition-MedicationRequest-eu-mpd.xlsx), [Schematron](StructureDefinition-MedicationRequest-eu-mpd.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MedicationRequest-eu-mpd",
  "url" : "http://hl7.eu/fhir/mpd/StructureDefinition/MedicationRequest-eu-mpd",
  "version" : "0.1.0-ci-build",
  "name" : "MedicationRequestEuMpd",
  "title" : "MedicationRequest: MPD",
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
  "description" : "This profile defines how to represent MedicationRequest in HL7 FHIR for the purpose of this guide.",
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
      "identity" : "script10.6",
      "uri" : "http://ncpdp.org/SCRIPT10_6",
      "name" : "Mapping to NCPDP SCRIPT 10.6"
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationRequest",
        "path" : "MedicationRequest"
      },
      {
        "id" : "MedicationRequest.extension",
        "path" : "MedicationRequest.extension",
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
        "id" : "MedicationRequest.extension:offLabelUse",
        "path" : "MedicationRequest.extension",
        "sliceName" : "offLabelUse",
        "short" : "Indicates that the prescriber has knowingly prescribed the medication for an indication, age group, dosage, or route of administration that is not approved by the regulatory agencies and is not mentioned in the prescribing information for the product.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-offLabel"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.extension:effectiveDosePeriod",
        "path" : "MedicationRequest.extension",
        "sliceName" : "effectiveDosePeriod",
        "short" : "Period over which the medication should be taken.",
        "definition" : "Period over which the medication should be taken. Where there are multiple dosageInstruction lines (for example, tapering doses), this is the earliest date and the latest end date of the dosageInstructions.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.effectiveDosePeriod"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.extension:renderedDosageInstruction",
        "path" : "MedicationRequest.extension",
        "sliceName" : "renderedDosageInstruction",
        "short" : "Full representation of the dosage instructions",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.identifier",
        "path" : "MedicationRequest.identifier",
        "short" : "Prescription/prescribed item ID",
        "comment" : "It is the prescription ID if the presciption includes only one prescribed item"
      },
      {
        "id" : "MedicationRequest.status",
        "path" : "MedicationRequest.status",
        "short" : "Current state of the order"
      },
      {
        "id" : "MedicationRequest.medication[x]",
        "path" : "MedicationRequest.medication[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.eu/fhir/mpd/StructureDefinition/Medication-eu-mpd"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.subject",
        "path" : "MedicationRequest.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.eu/fhir/base/StructureDefinition/patient-eu-core"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.authoredOn",
        "path" : "MedicationRequest.authoredOn",
        "min" : 1
      },
      {
        "id" : "MedicationRequest.requester",
        "path" : "MedicationRequest.requester",
        "min" : 1
      },
      {
        "id" : "MedicationRequest.reasonCode",
        "path" : "MedicationRequest.reasonCode",
        "short" : "Reason or indication for this prescription",
        "binding" : {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "purpose",
                  "valueCode" : "candidate"
                },
                {
                  "url" : "valueSet",
                  "valueCanonical" : "http://terminology.ehdsi.eu/ValueSet/eHDSIIllnessandDisorder"
                },
                {
                  "url" : "documentation",
                  "valueMarkdown" : "MyHealth@EU crossborder value set for diagnoses. Based on WHO ICD 10."
                }
              ],
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
            }
          ],
          "strength" : "example",
          "description" : "A coded concept indicating why the medication was ordered.",
          "valueSet" : "http://hl7.org/fhir/ValueSet/condition-code"
        }
      },
      {
        "id" : "MedicationRequest.reasonReference",
        "path" : "MedicationRequest.reasonReference",
        "short" : "Condition or observation that supports this prescription"
      },
      {
        "id" : "MedicationRequest.groupIdentifier",
        "path" : "MedicationRequest.groupIdentifier",
        "short" : "Prescription this is part of. Not needed if a presciption includes only one prescribed item."
      },
      {
        "id" : "MedicationRequest.dosageInstruction",
        "path" : "MedicationRequest.dosageInstruction",
        "short" : "How the medication should be taken."
      },
      {
        "id" : "MedicationRequest.dosageInstruction.text",
        "path" : "MedicationRequest.dosageInstruction.text",
        "short" : "Free text dosage instructions"
      },
      {
        "id" : "MedicationRequest.dosageInstruction.timing",
        "path" : "MedicationRequest.dosageInstruction.timing",
        "short" : "Administration schedule"
      },
      {
        "id" : "MedicationRequest.dosageInstruction.timing.repeat.duration",
        "path" : "MedicationRequest.dosageInstruction.timing.repeat.duration",
        "short" : "Duration of the treatment"
      },
      {
        "id" : "MedicationRequest.dosageInstruction.timing.repeat.frequency",
        "path" : "MedicationRequest.dosageInstruction.timing.repeat.frequency",
        "short" : "Frequency times per period"
      },
      {
        "id" : "MedicationRequest.dosageInstruction.timing.repeat.period",
        "path" : "MedicationRequest.dosageInstruction.timing.repeat.period",
        "short" : "Duration of time over which repetitions are to occur"
      },
      {
        "id" : "MedicationRequest.dosageInstruction.timing.repeat.periodUnit",
        "path" : "MedicationRequest.dosageInstruction.timing.repeat.periodUnit",
        "short" : "Unit of the period (e.g. day)"
      },
      {
        "id" : "MedicationRequest.dosageInstruction.timing.code",
        "path" : "MedicationRequest.dosageInstruction.timing.code",
        "short" : "A code for the timing schedule."
      },
      {
        "id" : "MedicationRequest.dosageInstruction.route",
        "path" : "MedicationRequest.dosageInstruction.route",
        "short" : "Route of administration"
      },
      {
        "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]",
        "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]",
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
        "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseQuantity",
        "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]",
        "sliceName" : "doseQuantity",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
          }
        ]
      },
      {
        "id" : "MedicationRequest.dispenseRequest.extension",
        "path" : "MedicationRequest.dispenseRequest.extension",
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
        "id" : "MedicationRequest.dispenseRequest.extension:prescribedQuantity",
        "path" : "MedicationRequest.dispenseRequest.extension",
        "sliceName" : "prescribedQuantity",
        "short" : "Overall amount of product prescribed, independent from the number of repeats.",
        "definition" : "When Medication resource implies a pack size, prescribedQuantity should convey number of packages. When the Medication does not imply an amount, overall amount could be in tablets or millilitres.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medicationrequest-prescribedQuantity"
            ]
          }
        ]
      }
    ]
  }
}

```
