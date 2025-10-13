# 04A-FirmagonBranded - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **04A-FirmagonBranded**

## Example Medication: 04A-FirmagonBranded

Profile: [Medication: MPD](StructureDefinition-Medication-eu-mpd.md)

**Medication - Classification**: degarelix

**Medication - Product Name**: FIRMAGON

**Medication - Size of Item**: 3 milliliter(Details: UCUM codemL = 'mL')

**Medication - Unit of presentation**: Vial

> **Medication - Device**
* device: Pre-filled syringe
* quantity: 2

> **Medication - Device**
* device: Injection needle
* quantity: 2

**identifier**: `http://example.org/NationalMedicationRegister`/1400601

**manufacturer**: Ferring Pharmaceuticals A/S

**form**: Powder and solvent for solution for injection

**amount**: 2 Vial(Details: EDQM Standard Terms code15060000 = 'Vial')/1

### Ingredients

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Item[x]** | **IsActive** | **Strength** |
| * | Degarelix | true | 120 milligram(Details: UCUM codemg = 'mg')/1 Vial(Details: EDQM Standard Terms code15060000 = 'Vial') |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "04A-FirmagonBranded",
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
            "code" : "L02BX02",
            "display" : "degarelix"
          }
        ]
      }
    },
    {
      "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-productname",
      "valueString" : "FIRMAGON"
    },
    {
      "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-sizeofitem",
      "valueQuantity" : {
        "value" : 3,
        "unit" : "milliliter",
        "system" : "http://unitsofmeasure.org",
        "code" : "mL"
      }
    },
    {
      "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-unitofpresentation",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://standardterms.edqm.eu",
            "code" : "15060000",
            "display" : "Vial"
          }
        ]
      }
    },
    {
      "extension" : [
        {
          "url" : "device",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://standardterms.edqm.eu",
                "code" : "30051000",
                "display" : "Pre-filled syringe"
              }
            ]
          }
        },
        {
          "url" : "quantity",
          "valueQuantity" : {
            "value" : 2
          }
        }
      ],
      "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-device"
    },
    {
      "extension" : [
        {
          "url" : "device",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://standardterms.edqm.eu",
                "code" : "30028000",
                "display" : "Injection needle"
              }
            ]
          }
        },
        {
          "url" : "quantity",
          "valueQuantity" : {
            "value" : 2
          }
        }
      ],
      "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-device"
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/NationalMedicationRegister",
      "value" : "1400601"
    }
  ],
  "manufacturer" : {
    "display" : "Ferring Pharmaceuticals A/S"
  },
  "form" : {
    "coding" : [
      {
        "system" : "http://standardterms.edqm.eu",
        "code" : "11207000",
        "display" : "Powder and solvent for solution for injection"
      }
    ]
  },
  "amount" : {
    "numerator" : {
      "value" : 2,
      "unit" : "Vial",
      "system" : "http://standardterms.edqm.eu",
      "code" : "15060000"
    },
    "denominator" : {
      "value" : 1
    }
  },
  "ingredient" : [
    {
      "itemCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "441864003",
            "display" : "Degarelix"
          }
        ]
      },
      "isActive" : true,
      "strength" : {
        "numerator" : {
          "value" : 120,
          "unit" : "milligram",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "denominator" : {
          "value" : 1,
          "unit" : "Vial",
          "system" : "http://standardterms.edqm.eu",
          "code" : "15060000"
        }
      }
    }
  ]
}

```
