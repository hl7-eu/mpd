# Medication: MPD - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication: MPD**

## Resource Profile: Medication: MPD 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.eu/fhir/mpd/StructureDefinition/Medication-eu-mpd | *Version*:0.1.0-ci-build |
| Draft as of 2025-10-13 | *Computable Name*:MedicationEuMpd |
| **Copyright/Legal**: Used by permission of HL7 Europe, all rights reserved Creative Commons License | |

 
This profile defines how to represent Medication in HL7 FHIR for the purpose of this guide. 

**Usages:**

* Refer to this Profile: [Medication: MPD](StructureDefinition-Medication-eu-mpd.md), [MedicationDispense: MPD](StructureDefinition-MedicationDispense-eu-mpd.md) and [MedicationRequest: MPD](StructureDefinition-MedicationRequest-eu-mpd.md)
* Examples for this Profile: [Medication/01A-Cefuroxime1500GenericExplicit](Medication-01A-Cefuroxime1500GenericExplicit.md), [Medication/01B-Cefuroxime1500GenericConcept](Medication-01B-Cefuroxime1500GenericConcept.md), [Medication/01C-Cefuroxime1500Branded](Medication-01C-Cefuroxime1500Branded.md), [Medication/01D-Cefuroxime750Branded](Medication-01D-Cefuroxime750Branded.md)...Show 6 more,[Medication/02A-ClotrimazoleCanifugCremolum](Medication-02A-ClotrimazoleCanifugCremolum.md),[Medication/02A1-CanifugCremolumCreamItem](Medication-02A1-CanifugCremolumCreamItem.md),[Medication/02A2-CanifugCremolumPessaryItem](Medication-02A2-CanifugCremolumPessaryItem.md),[Medication/03B-VitaminBComplexBranded](Medication-03B-VitaminBComplexBranded.md),[Medication/04A-FirmagonBranded](Medication-04A-FirmagonBranded.md)and[Medication/05A-Tilidin-Branded](Medication-05A-Tilidin-Branded.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.eu.mpd|current/StructureDefinition/Medication-eu-mpd)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Medication-eu-mpd.csv), [Excel](StructureDefinition-Medication-eu-mpd.xlsx), [Schematron](StructureDefinition-Medication-eu-mpd.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Medication-eu-mpd",
  "url" : "http://hl7.eu/fhir/mpd/StructureDefinition/Medication-eu-mpd",
  "version" : "0.1.0-ci-build",
  "name" : "MedicationEuMpd",
  "title" : "Medication: MPD",
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
  "description" : "This profile defines how to represent Medication in HL7 FHIR for the purpose of this guide.",
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
  "type" : "Medication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Medication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Medication",
        "path" : "Medication"
      },
      {
        "id" : "Medication.extension",
        "path" : "Medication.extension",
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
        "id" : "Medication.extension:productName",
        "path" : "Medication.extension",
        "sliceName" : "productName",
        "short" : "Name of the medicinal product. Names of different types (full name, short name, etc) and in different languages can be provided if relevant.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-productname"
            ]
          }
        ]
      },
      {
        "id" : "Medication.extension:classification",
        "path" : "Medication.extension",
        "sliceName" : "classification",
        "short" : "Classifications of the product, e.g ATC, narcotic/psychotropic, orphan drug, etc",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-classification"
            ]
          }
        ]
      },
      {
        "id" : "Medication.extension:sizeOfItem",
        "path" : "Medication.extension",
        "sliceName" : "sizeOfItem",
        "short" : "Size of one item (for example, in a pack of 5 vials, this would represent the size of 1 vial)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-sizeofitem"
            ]
          }
        ]
      },
      {
        "id" : "Medication.extension:characteristic",
        "path" : "Medication.extension",
        "sliceName" : "characteristic",
        "short" : "Specifies other descriptive properties of the medication.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-characteristic"
            ]
          }
        ]
      },
      {
        "id" : "Medication.extension:unitOfPresentation",
        "path" : "Medication.extension",
        "sliceName" : "unitOfPresentation",
        "short" : "Unit of presentation of the product (e.g. tablet, vial, ampoule, etc)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-unitofpresentation"
            ]
          }
        ]
      },
      {
        "id" : "Medication.extension:packageType",
        "path" : "Medication.extension",
        "sliceName" : "packageType",
        "short" : "Type of container. This information is more relevant in cases when the packaging has an impact on administration of the product (e.g. pre-filled syringe)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.eu/fhir/StructureDefinition/medication-package-type"
            ]
          }
        ]
      },
      {
        "id" : "Medication.extension:device",
        "path" : "Medication.extension",
        "sliceName" : "device",
        "short" : "Device, typically an administration device, included in the product.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-device"
            ]
          }
        ]
      },
      {
        "id" : "Medication.extension:device.extension:device",
        "path" : "Medication.extension.extension",
        "sliceName" : "device"
      },
      {
        "id" : "Medication.extension:device.extension:device.value[x]",
        "path" : "Medication.extension.extension.value[x]",
        "binding" : {
          "strength" : "example",
          "valueSet" : "http://terminology.ehdsi.eu/ValueSet/eHDSIPackage"
        }
      },
      {
        "id" : "Medication.identifier",
        "path" : "Medication.identifier",
        "short" : "Identifier for the medicinal product, its generic representation, or packaged product."
      },
      {
        "id" : "Medication.code",
        "path" : "Medication.code",
        "short" : "A terminology-based code for the product"
      },
      {
        "id" : "Medication.form",
        "path" : "Medication.form",
        "binding" : {
          "strength" : "example",
          "valueSet" : "http://terminology.ehdsi.eu/ValueSet/eHDSIDoseForm"
        }
      },
      {
        "id" : "Medication.ingredient",
        "path" : "Medication.ingredient",
        "short" : "Ingredient or a part product. For combination packs, each ingredient can be a separate manufactured item with its own ingredients, dose form, and strength"
      },
      {
        "id" : "Medication.ingredient.item[x]",
        "path" : "Medication.ingredient.item[x]",
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
        "id" : "Medication.ingredient.item[x]:itemReference",
        "path" : "Medication.ingredient.item[x]",
        "sliceName" : "itemReference",
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
        "id" : "Medication.ingredient.item[x]:itemCodeableConcept",
        "path" : "Medication.ingredient.item[x]",
        "sliceName" : "itemCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
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
                  "valueCanonical" : "http://terminology.ehdsi.eu/ValueSet/eHDSISubstance"
                },
                {
                  "url" : "documentation",
                  "valueMarkdown" : "MyHealth@EU crossborder value set for substances. Based on EMA SPOR SMS."
                }
              ],
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
            }
          ],
          "strength" : "example",
          "valueSet" : "http://hl7.org/fhir/uv/ips/ValueSet/medicine-active-substances-uv-ips"
        }
      },
      {
        "id" : "Medication.ingredient.strength",
        "path" : "Medication.ingredient.strength",
        "short" : "Amount of substance in product (presentation or concentration strength)",
        "definition" : "Definitional resources should be used for specifying the different types of strengths: presentation; concentration."
      },
      {
        "id" : "Medication.ingredient.strength.extension:basisOfStrengthSubstance",
        "path" : "Medication.ingredient.strength.extension",
        "sliceName" : "basisOfStrengthSubstance",
        "short" : "Substance for which the strength is provided (this could be different from the precise active ingredient).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-strengthsubstance"
            ]
          }
        ]
      }
    ]
  }
}

```
