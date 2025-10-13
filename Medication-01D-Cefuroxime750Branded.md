# 01D-Cefuroxime750Branded - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **01D-Cefuroxime750Branded**

## Example Medication: 01D-Cefuroxime750Branded

Profile: [Medication: MPD](StructureDefinition-Medication-eu-mpd.md)

**Medication - Classification**: cefuroxime

**Medication - Product Name**: Cefuroxime MIP 750 mg, powder for solution for injection

**Medication - Unit of presentation**: Vial

**identifier**: `http://example.org/NationalMedicationRegister`/1529928

**manufacturer**: MIP Pharma GmbH

**form**: Powder for solution for injection

**amount**: 5 Vial(Details: EDQM Standard Terms code15060000 = 'Vial')/1

### Ingredients

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Item[x]** | **IsActive** | **Strength** |
| * | Cefuroxime sodium | true | 750 milligram(Details: UCUM codemg = 'mg')/1 Vial(Details: EDQM Standard Terms code15060000 = 'Vial') |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "01D-Cefuroxime750Branded",
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
            "code" : "J01DC02",
            "display" : "cefuroxime"
          }
        ]
      }
    },
    {
      "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-productname",
      "valueString" : "Cefuroxime MIP 750 mg, powder for solution for injection"
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
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/NationalMedicationRegister",
      "value" : "1529928"
    }
  ],
  "manufacturer" : {
    "display" : "MIP Pharma GmbH"
  },
  "form" : {
    "coding" : [
      {
        "system" : "http://standardterms.edqm.eu",
        "code" : "11205000",
        "display" : "Powder for solution for injection"
      }
    ]
  },
  "amount" : {
    "numerator" : {
      "value" : 5,
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
            "code" : "48753004",
            "display" : "Cefuroxime sodium"
          }
        ]
      },
      "isActive" : true,
      "strength" : {
        "extension" : [
          {
            "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-strengthsubstance",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://snomed.info/sct",
                  "code" : "372833007",
                  "display" : "Cefuroxime"
                }
              ]
            }
          }
        ],
        "numerator" : {
          "value" : 750,
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
