# 01C-Cefuroxime1500Branded - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **01C-Cefuroxime1500Branded**

## Example Medication: 01C-Cefuroxime1500Branded

Profile: [Medication: MPD](StructureDefinition-Medication-eu-mpd.md)

**Medication - Classification**: cefuroxime

**Medication - Product Name**: Cefuroxime MIP 1500 mg, powder for solution for injection or infusion

**Medication - Unit of presentation**: Vial

**identifier**: `http://example.org/NationalMedicationRegister`/1529962

**manufacturer**: MIP Pharma GmbH

**form**: Powder for solution for injection or infusion

**amount**: 10 Vial(Details: EDQM Standard Terms code15060000 = 'Vial')/1

### Ingredients

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Item[x]** | **IsActive** | **Strength** |
| * | Cefuroxime | true | 1500 milligram(Details: UCUM codemg = 'mg')/1 Vial(Details: EDQM Standard Terms code15060000 = 'Vial') |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "01C-Cefuroxime1500Branded",
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
      "valueString" : "Cefuroxime MIP 1500 mg, powder for solution for injection or infusion"
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
      "value" : "1529962"
    }
  ],
  "manufacturer" : {
    "display" : "MIP Pharma GmbH"
  },
  "form" : {
    "coding" : [
      {
        "system" : "http://standardterms.edqm.eu",
        "code" : "50053000",
        "display" : "Powder for solution for injection or infusion"
      }
    ]
  },
  "amount" : {
    "numerator" : {
      "value" : 10,
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
            "code" : "372833007",
            "display" : "Cefuroxime"
          }
        ]
      },
      "isActive" : true,
      "strength" : {
        "numerator" : {
          "value" : 1500,
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
