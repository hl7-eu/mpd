# 02A2-CanifugCremolumPessaryItem - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **02A2-CanifugCremolumPessaryItem**

## Example Medication: 02A2-CanifugCremolumPessaryItem

Profile: [Medication: MPD](StructureDefinition-Medication-eu-mpd.md)

**Medication - Unit of presentation**: Pessary

**form**: Pessary

**amount**: 6 Pessary(Details: EDQM Standard Terms code15039000 = 'Pessary')/1

### Ingredients

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Item[x]** | **IsActive** | **Strength** |
| * | Clotrimazole | true | 100 milligram(Details: UCUM codemg = 'mg')/1 Pessary(Details: EDQM Standard Terms code15039000 = 'Pessary') |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "02A2-CanifugCremolumPessaryItem",
  "meta" : {
    "profile" : [
      "http://hl7.eu/fhir/mpd/StructureDefinition/Medication-eu-mpd"
    ]
  },
  "extension" : [
    {
      "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-unitofpresentation",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://standardterms.edqm.eu",
            "code" : "15039000",
            "display" : "Pessary"
          }
        ]
      }
    }
  ],
  "form" : {
    "coding" : [
      {
        "system" : "http://standardterms.edqm.eu",
        "code" : "10909000",
        "display" : "Pessary"
      }
    ]
  },
  "amount" : {
    "numerator" : {
      "value" : 6,
      "unit" : "Pessary",
      "system" : "http://standardterms.edqm.eu",
      "code" : "15039000"
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
            "code" : "387325003",
            "display" : "Clotrimazole"
          }
        ]
      },
      "isActive" : true,
      "strength" : {
        "numerator" : {
          "value" : 100,
          "unit" : "milligram",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "denominator" : {
          "value" : 1,
          "unit" : "Pessary",
          "system" : "http://standardterms.edqm.eu",
          "code" : "15039000"
        }
      }
    }
  ]
}

```
