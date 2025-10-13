# 05A-Tilidin-Branded - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **05A-Tilidin-Branded**

## Example Medication: 05A-Tilidin-Branded

Profile: [Medication: MPD](StructureDefinition-Medication-eu-mpd.md)

**Medication - Classification**: Other opioids

**Medication - Product Name**: Tilidin HEXAL® comp Lösung, 50/4 mg je 0,72 ml Tropfen zum Einnehmen, Lösung

**Medication - Unit of presentation**: Drop

**identifier**: 12345

**manufacturer**: Hexal AG

**form**: Oral drops, solution

**amount**: 10 milliliter(Details: UCUM codemL = 'mL')/1

> **ingredient****item**:Tilidine**isActive**: true**strength**: 50 milligram(Details: UCUM codemg = 'mg')/20 Drop(Details: EDQM Standard Terms code15022000 = 'Drop')

> **ingredient****item**:Naloxone**isActive**: true**strength**: 4 milligram(Details: UCUM codemg = 'mg')/20 Drop(Details: EDQM Standard Terms code15022000 = 'Drop')



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "05A-Tilidin-Branded",
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
            "code" : "N02AX",
            "display" : "Other opioids"
          }
        ]
      }
    },
    {
      "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-productname",
      "valueString" : "Tilidin HEXAL® comp Lösung, 50/4 mg je 0,72 ml Tropfen zum Einnehmen, Lösung"
    },
    {
      "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-unitofpresentation",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://standardterms.edqm.eu",
            "code" : "15022000",
            "display" : "Drop"
          }
        ]
      }
    }
  ],
  "identifier" : [
    {
      "value" : "12345"
    }
  ],
  "manufacturer" : {
    "display" : "Hexal AG"
  },
  "form" : {
    "coding" : [
      {
        "system" : "http://standardterms.edqm.eu",
        "code" : "10101000",
        "display" : "Oral drops, solution"
      }
    ]
  },
  "amount" : {
    "numerator" : {
      "value" : 10,
      "unit" : "milliliter",
      "system" : "http://unitsofmeasure.org",
      "code" : "mL"
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
            "code" : "373562008",
            "display" : "Tilidine"
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
                  "code" : "96186004",
                  "display" : "Tilidine hydrochloride"
                }
              ]
            }
          }
        ],
        "numerator" : {
          "value" : 50,
          "unit" : "milligram",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "denominator" : {
          "value" : 20,
          "unit" : "Drop",
          "system" : "http://standardterms.edqm.eu",
          "code" : "15022000"
        }
      }
    },
    {
      "itemCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "372890007",
            "display" : "Naloxone"
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
                  "code" : "21518006",
                  "display" : "Naloxone hydrochloride"
                }
              ]
            }
          }
        ],
        "numerator" : {
          "value" : 4,
          "unit" : "milligram",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "denominator" : {
          "value" : 20,
          "unit" : "Drop",
          "system" : "http://standardterms.edqm.eu",
          "code" : "15022000"
        }
      }
    }
  ]
}

```
