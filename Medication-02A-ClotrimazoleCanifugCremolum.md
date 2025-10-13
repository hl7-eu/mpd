# 02A-ClotrimazoleCanifugCremolum - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **02A-ClotrimazoleCanifugCremolum**

## Example Medication: 02A-ClotrimazoleCanifugCremolum

Profile: [Medication: MPD](StructureDefinition-Medication-eu-mpd.md)

**Medication - Classification**: clotrimazole

**Medication - Product Name**: Canifug Cremolum

> **Medication - Device**
* device: Applicator
* quantity: 1

**identifier**: `http://example.org/NationalMedicationRegister`/1033692

**form**: Cream + pessary

> **ingredient****item**:[Medication: extension = Tube,20 gram; form = Vaginal cream; amount = 1 Tube / 1](Medication-02A1-CanifugCremolumCreamItem.md)

> **ingredient****item**:[Medication: extension = Pessary; form = Pessary; amount = 6 Pessary / 1](Medication-02A2-CanifugCremolumPessaryItem.md)



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "02A-ClotrimazoleCanifugCremolum",
  "meta" : {
    "profile" : [
      "http://hl7.eu/fhir/mpd/StructureDefinition/Medication-eu-mpd"
    ]
  },
  "extension" : [
    {
      "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-classification",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://www.whocc.no/atc",
            "code" : "G01AF02",
            "display" : "clotrimazole"
          }
        ]
      }
    },
    {
      "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-productname",
      "valueString" : "Canifug Cremolum"
    },
    {
      "extension" : [
        {
          "url" : "device",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://standardterms.edqm.eu",
                "code" : "30002000",
                "display" : "Applicator"
              }
            ]
          }
        },
        {
          "url" : "quantity",
          "valueQuantity" : {
            "value" : 1
          }
        }
      ],
      "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-device"
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/NationalMedicationRegister",
      "value" : "1033692"
    }
  ],
  "form" : {
    "coding" : [
      {
        "system" : "http://standardterms.edqm.eu",
        "code" : "14001000",
        "display" : "Cream + pessary"
      }
    ]
  },
  "ingredient" : [
    {
      "itemReference" : {
        "reference" : "Medication/02A1-CanifugCremolumCreamItem"
      }
    },
    {
      "itemReference" : {
        "reference" : "Medication/02A2-CanifugCremolumPessaryItem"
      }
    }
  ]
}

```
