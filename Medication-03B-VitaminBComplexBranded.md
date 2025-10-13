# 03B-VitaminBComplexBranded - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **03B-VitaminBComplexBranded**

## Example Medication: 03B-VitaminBComplexBranded

Profile: [Medication: MPD](StructureDefinition-Medication-eu-mpd.md)

**Medication - Classification**: Vitamin B1 in combination with vitamin B6 and/or vitamin B12

**Medication - Product Name**: MILGAMMA N

**Medication - Size of Item**: 2 milliliter(Details: UCUM codemL = 'mL')

**Medication - Unit of presentation**: Ampoule

**identifier**: `http://example.org/NationalMedicationRegister`/1029776

**form**: Solution for suspension for injection

**amount**: 5 Ampoule(Details: EDQM Standard Terms code15002000 = 'Ampoule')/1

> **ingredient****item**:Thiamine**isActive**: true**strength**: 50 milligram(Details: UCUM codemg = 'mg')/1 milliliter(Details: UCUM codemL = 'mL')

> **ingredient****item**:Pyridoxine**isActive**: true**strength**: 50 milligram(Details: UCUM codemg = 'mg')/1 milliliter(Details: UCUM codemL = 'mL')

> **ingredient****item**:Cyanocobalamin**isActive**: true**strength**: 0.5 milligram(Details: UCUM codemg = 'mg')/1 milliliter(Details: UCUM codemL = 'mL')

> **ingredient****item**:Lidocaine**isActive**: true**strength**: 10 milligram(Details: UCUM codemg = 'mg')/1 milliliter(Details: UCUM codemL = 'mL')



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "03B-VitaminBComplexBranded",
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
            "code" : "A11DB",
            "display" : "Vitamin B1 in combination with vitamin B6 and/or vitamin B12"
          }
        ]
      }
    },
    {
      "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-productname",
      "valueString" : "MILGAMMA N"
    },
    {
      "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-sizeofitem",
      "valueQuantity" : {
        "value" : 2,
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
            "code" : "15002000",
            "display" : "Ampoule"
          }
        ]
      }
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/NationalMedicationRegister",
      "value" : "1029776"
    }
  ],
  "form" : {
    "coding" : [
      {
        "system" : "http://standardterms.edqm.eu",
        "code" : "13047000",
        "display" : "Solution for suspension for injection"
      }
    ]
  },
  "amount" : {
    "numerator" : {
      "value" : 5,
      "unit" : "Ampoule",
      "system" : "http://standardterms.edqm.eu",
      "code" : "15002000"
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
            "code" : "259659006",
            "display" : "Thiamine"
          }
        ]
      },
      "isActive" : true,
      "strength" : {
        "numerator" : {
          "value" : 50,
          "unit" : "milligram",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "denominator" : {
          "value" : 1,
          "unit" : "milliliter",
          "system" : "http://unitsofmeasure.org",
          "code" : "mL"
        }
      }
    },
    {
      "itemCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "430469009",
            "display" : "Pyridoxine"
          }
        ]
      },
      "isActive" : true,
      "strength" : {
        "numerator" : {
          "value" : 50,
          "unit" : "milligram",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "denominator" : {
          "value" : 1,
          "unit" : "milliliter",
          "system" : "http://unitsofmeasure.org",
          "code" : "mL"
        }
      }
    },
    {
      "itemCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "419382002",
            "display" : "Cyanocobalamin"
          }
        ]
      },
      "isActive" : true,
      "strength" : {
        "numerator" : {
          "value" : 0.5,
          "unit" : "milligram",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "denominator" : {
          "value" : 1,
          "unit" : "milliliter",
          "system" : "http://unitsofmeasure.org",
          "code" : "mL"
        }
      }
    },
    {
      "itemCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "387480006",
            "display" : "Lidocaine"
          }
        ]
      },
      "isActive" : true,
      "strength" : {
        "numerator" : {
          "value" : 10,
          "unit" : "milligram",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "denominator" : {
          "value" : 1,
          "unit" : "milliliter",
          "system" : "http://unitsofmeasure.org",
          "code" : "mL"
        }
      }
    }
  ]
}

```
