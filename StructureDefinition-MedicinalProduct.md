# A1.4 Identification of the prescribed product - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **A1.4 Identification of the prescribed product**

## Logical Model: A1.4 Identification of the prescribed product 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.eu/fhir/mpd/StructureDefinition/MedicinalProduct | *Version*:0.1.0-ci-build |
| Draft as of 2025-10-13 | *Computable Name*:MedProductEhn |
| **Copyright/Legal**: Used by permission of HL7 Europe, all rights reserved Creative Commons License | |

 
Identification of the prescribed product. Section A1.4 of the eHN guideline 

**Usages:**

* Use this Logical Model: [A - Prescription](StructureDefinition-Prescription.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.eu.mpd|current/StructureDefinition/MedicinalProduct)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MedicinalProduct.csv), [Excel](StructureDefinition-MedicinalProduct.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MedicinalProduct",
  "url" : "http://hl7.eu/fhir/mpd/StructureDefinition/MedicinalProduct",
  "version" : "0.1.0-ci-build",
  "name" : "MedProductEhn",
  "title" : "A1.4 Identification of the prescribed product",
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
  "description" : "Identification of the prescribed product. Section A1.4 of the eHN guideline",
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
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.eu/fhir/mpd/StructureDefinition/MedicinalProduct",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "MedicinalProduct",
        "path" : "MedicinalProduct",
        "short" : "A1.4 Identification of the prescribed product",
        "definition" : "Identification of the prescribed product. Section A1.4 of the eHN guideline"
      },
      {
        "id" : "MedicinalProduct.name",
        "path" : "MedicinalProduct.name",
        "short" : "A.1.4.1 Name of the medicinal product",
        "definition" : "Brand name of the authorised medicinal product.\nIt has to be noted, that according to Implementing Directive 2012/52/EU additional requirements may apply.\n[not applicable for generic prescriptions]",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "MedicinalProduct.mpid",
        "path" : "MedicinalProduct.mpid",
        "short" : "A.1.4.2 Identifier of the medicinal product",
        "definition" : "Identifier of a medicinal product refers to the product inside the package, not the packaged item as such. It could be MPID according to ISO 11615, EMA PMS ID and/or a national identifier.\n[not applicable for generic prescriptions]",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "MedicinalProduct.phpid",
        "path" : "MedicinalProduct.phpid",
        "short" : "A.1.4.2.1 Identifier(s) of the pharmaceutical product",
        "definition" : "Identifier of a pharmaceutical product refers to unique PhPID according to ISO 11616. This could be a part of a description of a specific medicinal product or an attribute of a generic prescription.\n[not applicable for generic prescriptions]",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "MedicinalProduct.pcid",
        "path" : "MedicinalProduct.pcid",
        "short" : "A.1.4.2.2 Identifier(s) of the packaged medicinal product",
        "definition" : "Identifier of a packaged medicinal product refers to a specific pack size of a specific product. It could be PCID according to ISO 11615 and/or its national equivalent.\n[not applicable for generic prescriptions]",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "MedicinalProduct.marketingAuthHolder",
        "path" : "MedicinalProduct.marketingAuthHolder",
        "short" : "A.1.4.3 Marketing authorisation holder",
        "definition" : "Organisation that holds the marketing authorisation of the prescribed product.\n[not applicable for generic prescriptions]",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Organization"
          }
        ]
      },
      {
        "id" : "MedicinalProduct.activeSubstance",
        "path" : "MedicinalProduct.activeSubstance",
        "short" : "A.1.4.4 Active substance(s)",
        "definition" : "All active substances according to ISO 11238. Referred to by \"\"common name\"\" in implementing directive 2012/52/EU.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "EMA SMS"
        }
      },
      {
        "id" : "MedicinalProduct.strength",
        "path" : "MedicinalProduct.strength",
        "short" : "A.1.4.4.1 Strength of the active substance(s)",
        "definition" : "Presentation and/or concentration strength of the active substances. In addition, reference strength could be provided (Article 1 of Directive 2001/83/EC). Preferred codesystem UCUM and EDQM.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Ratio"
          }
        ]
      },
      {
        "id" : "MedicinalProduct.classification",
        "path" : "MedicinalProduct.classification",
        "short" : "A.1.4.5 Product classification",
        "definition" : "WHO ATC code of the product",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ATC"
        }
      },
      {
        "id" : "MedicinalProduct.doseForm",
        "path" : "MedicinalProduct.doseForm",
        "short" : "A.1.4.6 Pharmaceutical dose form(s)",
        "definition" : "Dose form of a product could be either authorised dose form (includes EDQM combination pack dose forms), administrable dose form or manufactured item dose form. It must be made clear which type of dose forms are provided. For example, for the same product several different dose forms can be provided: ?powder and solvent for solution for injection? as authorised dose form, ?solution for injection? as administrable dose form, and ?powder? and ?solvent? as the dose forms for the manufactured items in the inner packaging.\nReferred to by \"\"pharmaceutical formulation\"\" in implementing directive 2012/52/EU.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "EDQM"
        }
      },
      {
        "id" : "MedicinalProduct.unitOfPresentation",
        "path" : "MedicinalProduct.unitOfPresentation",
        "short" : "A.1.4.7 Unit of presentation(s)",
        "definition" : "Unit of presentation is used as a unit when describing the strength, but according to ISO IDMP it is also a separate attribute of the pharmaceutical product and manufactured item.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "EDQM"
        }
      },
      {
        "id" : "MedicinalProduct.packageType",
        "path" : "MedicinalProduct.packageType",
        "short" : "A.1.4.8 Package type",
        "definition" : "Type of the container, Examples: bottle, blister, box",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "EDQM"
        }
      },
      {
        "id" : "MedicinalProduct.packageSize",
        "path" : "MedicinalProduct.packageSize",
        "short" : "A.1.4.9 Pack size",
        "definition" : "Typically, the pack size is the number of unit of presentations in the package. \nIt could also be presented using units of measurement (ml, g). In some cases, there is a need to refine the package size that it describes the amounts of different manufactured items in more than one inner packages. However, the overall amount of a prescribed product must be calculable from the pack size description.\n - Preferred system(s): UCUM; EDQM",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM, EDQM"
        }
      }
    ]
  }
}

```
