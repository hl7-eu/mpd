# B.1 Dispensation information (provided by the dispensing pharmacy) - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **B.1 Dispensation information (provided by the dispensing pharmacy)**

## Logical Model: B.1 Dispensation information (provided by the dispensing pharmacy) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.eu/fhir/mpd/StructureDefinition/Dispensation | *Version*:0.1.0-ci-build |
| Draft as of 2025-10-13 | *Computable Name*:EdispensationEhn |
| **Copyright/Legal**: Used by permission of HL7 Europe, all rights reserved Creative Commons License | |

 
Dispensation information (provided by the dispensing pharmacy). Section B1 of the guidelines 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.eu.mpd|current/StructureDefinition/Dispensation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Dispensation.csv), [Excel](StructureDefinition-Dispensation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Dispensation",
  "url" : "http://hl7.eu/fhir/mpd/StructureDefinition/Dispensation",
  "version" : "0.1.0-ci-build",
  "name" : "EdispensationEhn",
  "title" : "B.1 Dispensation information (provided by the dispensing pharmacy)",
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
  "description" : "Dispensation information (provided by the dispensing pharmacy). Section B1 of the guidelines",
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
  "type" : "http://hl7.eu/fhir/mpd/StructureDefinition/Dispensation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Dispensation",
        "path" : "Dispensation",
        "short" : "B.1 Dispensation information (provided by the dispensing pharmacy)",
        "definition" : "Dispensation information (provided by the dispensing pharmacy). Section B1 of the guidelines"
      },
      {
        "id" : "Dispensation.dispenserIdentifier",
        "path" : "Dispensation.dispenserIdentifier",
        "short" : "B.1.1 Identifier of the dispenser",
        "definition" : "A unique number or code issued for the purpose of identifying a dispenser [ISO/TS 27527:2010]; this may be a licence or registration number which can be used to trace the dispenser and to check whether a medicinal product was dispensed by the right person according to the law of the dispensing country.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "Dispensation.dispenserFamilyName",
        "path" : "Dispensation.dispenserFamilyName",
        "short" : "B.1.2 Family name of the dispenser",
        "definition" : "The family name/surname/last name of the dispenser. This enables the dispenser to be traced in the event of questions or emergencies.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Dispensation.dispenserGivenName",
        "path" : "Dispensation.dispenserGivenName",
        "short" : "B.1.3 Given name of the dispenser",
        "definition" : "The given name/first name of the dispenser. This enables the dispenser to be traced in the event of questions or emergencies.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Dispensation.pharmacyIdentifier",
        "path" : "Dispensation.pharmacyIdentifier",
        "short" : "B.1.4 Identifier of the pharmacy",
        "definition" : "A unique number or code issued for the purpose of identifying a pharmacy [ISO/TS 27527:2010]; this may be a licence or registration number which can be used to trace the dispensing pharmacy.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "Dispensation.pharmacyAddress",
        "path" : "Dispensation.pharmacyAddress",
        "short" : "B.1.5 Address of the pharmacy",
        "definition" : "Minimally, the country should be specified.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Address"
          }
        ]
      },
      {
        "id" : "Dispensation.contactDetails",
        "path" : "Dispensation.contactDetails",
        "short" : "B.1.6 Details of direct contact",
        "definition" : "Details of direct contact could be an email address and/or phone/fax number of the dispensing pharmacy.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "ContactPoint"
          }
        ]
      },
      {
        "id" : "Dispensation.prescriptionIdentifier",
        "path" : "Dispensation.prescriptionIdentifier",
        "short" : "B.1.7 Identifier of the prescription",
        "definition" : "As described in A.1.2.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "Dispensation.medicinalProduct",
        "path" : "Dispensation.medicinalProduct",
        "short" : "B.1.8 Medicinal product",
        "definition" : "Information about the dispensed product as described in A.1.4.\nThe cardinality of the data elements in the product description may differ between ePrescription and eDispensation.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "Dispensation.dispensedQuantity",
        "path" : "Dispensation.dispensedQuantity",
        "short" : "B.1.9 Dispensed quantity",
        "definition" : "The package size should be clear from the medicinal product data and the overall amount should be automatically calculable. The dispensed quantity may differ from the prescribed quantity.\n - Preferred system(s): UCUM, EDQM",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Dispensation.dispensationDate",
        "path" : "Dispensation.dispensationDate",
        "short" : "B.1.10 Dispensation date",
        "definition" : "The date and optionally the time of dispensation.\n - Preferred system(s): ISO 8601",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Dispensation.substitution",
        "path" : "Dispensation.substitution",
        "short" : "B.1.11 Substitution",
        "definition" : "Information whether and why the substitution took place",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
