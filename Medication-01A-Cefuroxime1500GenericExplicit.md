# 01A-Cefuroxime1500GenericExplicit - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **01A-Cefuroxime1500GenericExplicit**

## Example Medication: 01A-Cefuroxime1500GenericExplicit

Profile: [Medication: MPD](StructureDefinition-Medication-eu-mpd.md)

**Medication - Classification**: cefuroxime

**form**: Powder for solution for injection or infusion

### Ingredients

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Item[x]** | **IsActive** | **Strength** |
| * | Cefuroxime | true | 1500 milligram(Details: UCUM codemg = 'mg')/1 Vial(Details: EDQM Standard Terms code15060000 = 'Vial') |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "01A-Cefuroxime1500GenericExplicit",
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
    }
  ],
  "form" : {
    "coding" : [
      {
        "system" : "http://standardterms.edqm.eu",
        "code" : "50053000",
        "display" : "Powder for solution for injection or infusion"
      }
    ]
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
