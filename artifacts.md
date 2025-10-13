# Artifacts Summary - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Data Sets from eHN Guidelines 

eHealth Network Guidelines data sets represented as FHIR logical models. Please note, that eHN data sets do not have explicit information about cardinality and data types. New, fully machine-readable logical information models are being created in Xt-EHR project. See more information about new EHDS logical models work on [Logical Models page](logicalmodels.md).

| | |
| :--- | :--- |
| [A - Prescription](StructureDefinition-Prescription.md) | Prescription. Several Sections of the eHN guideline. |
| [A.1.1 Patient administrative data](StructureDefinition-Subject.md) | Patient. Sections A1.1 of the eHN guideline. |
| [A1.4 Identification of the prescribed product](StructureDefinition-MedicinalProduct.md) | Identification of the prescribed product. Section A1.4 of the eHN guideline |
| [B.1 Dispensation information (provided by the dispensing pharmacy)](StructureDefinition-Dispensation.md) | Dispensation information (provided by the dispensing pharmacy). Section B1 of the guidelines |

### FHIR Profiles 

Profiles for ePrescription and eDispensation use case. Note that there is no single profile for ePrescription, but only for MedicationRequest, which translates to a single line on a prescription (read more in [Implementation Notes](implementationnotes.md)). Profiles for Patient, PractitionerRole, and Organization are published in HL7 Europe Base IG. All profiles are based on [EHDS logical information models](logicalmodels.md) that are being developed by Xt-EHR project.

| | |
| :--- | :--- |
| [Medication: MPD](StructureDefinition-Medication-eu-mpd.md) | This profile defines how to represent Medication in HL7 FHIR for the purpose of this guide. |
| [MedicationDispense: MPD](StructureDefinition-MedicationDispense-eu-mpd.md) | This profile defines how to represent the supply and the associated administration instructions in HL7 FHIR for the purpose of this guide. |
| [MedicationRequest: MPD](StructureDefinition-MedicationRequest-eu-mpd.md) | This profile defines how to represent MedicationRequest in HL7 FHIR for the purpose of this guide. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [01A-Cefuroxime1500GenericExplicit](Medication-01A-Cefuroxime1500GenericExplicit.md) | 1A. Cefuroxime 1500mg (1.5g) powder for solution in a vial. Generic product, defined by attributes. |
| [01B-Cefuroxime1500GenericConcept](Medication-01B-Cefuroxime1500GenericConcept.md) | 1B. Cefuroxime 1500mg (1.5g) powder for solution in a vial. Generic product, defined by a code system (receiving system is expected to have access to the code system for additional attributes or display names). |
| [01C-Cefuroxime1500Branded](Medication-01C-Cefuroxime1500Branded.md) | 1C. Cefuroxime 1500mg (1.5g) powder for solution in a vial (10 vials per package). Branded packaged product, defined by attributes. |
| [01D-Cefuroxime750Branded](Medication-01D-Cefuroxime750Branded.md) | 1D. Cefuroxime 750mg powder for solution in a vial (5 vials per package). Branded packaged product, defined by attributes. |
| [02A-ClotrimazoleCanifugCremolum](Medication-02A-ClotrimazoleCanifugCremolum.md) | 2A. Clotrimazole cream 10mg/g and 6 pessaries 100g. Branded packaged product, consisting of different medication items. Defined by attributes. |
| [02A1-CanifugCremolumCreamItem](Medication-02A1-CanifugCremolumCreamItem.md) | 2A1. Clotrimazole cream (10mg/g, 1 tube of 20g) as part of Canifug Cremolum product (ISO IDMP manufactured item) |
| [02A2-CanifugCremolumPessaryItem](Medication-02A2-CanifugCremolumPessaryItem.md) | 2A2. Clotrimazole pessary (6 pessaries of 100mg) as part of Canifug Cremolum product (ISO IDMP manufactured item) |
| [03B-VitaminBComplexBranded](Medication-03B-VitaminBComplexBranded.md) | 3B. Milgamma N, B-vitamin complex. Branded packaged product, defined by attributes. |
| [04A-FirmagonBranded](Medication-04A-FirmagonBranded.md) | 4A. Firmagon. Branded packaged product, defined by attributes, includes administration devices. |
| [05A-Tilidin-Branded](Medication-05A-Tilidin-Branded.md) | 5A. Tilidin (50mg), Naloxon (4mg) oral drops. Branded packaged product, defined by attributes. Unusual strength. |
| [100A-multiitem-prescription-with-orchestration](Bundle-100A-multiitem-prescription-with-orchestration.md) | 100A. Multiitem prescription with RequestGroup (R5 RequestOrchestration). 42-day cycle treatment consisting of three medications that should start at the same time. Wrapped in a Bundle for better readability. |
| [100B-RequestOrchestration](RequestGroup-100B-RequestOrchestration.md) | 100B. A grouper for the lines of a multiitem prescription. It should not be considered the prescription object as such. |
| [100C-3-medication-prescription-request1](MedicationRequest-100C-3-medication-prescription-request1.md) | 100C-1. A prescription item (MedicationRequest) that is a part of a three-item-prescription (42-day treatment cycle). Generic. Thalidomide 50mgx4 once a day before bed for 42 days. |
| [100C-3-medication-prescription-request2](MedicationRequest-100C-3-medication-prescription-request2.md) | 100C-2. A prescription item (MedicationRequest) that is a part of a three-item-prescription (42-day treatment cycle). Generic. Melphalan 2mgx4 once a day for 4 days in the beginning of cycle. |
| [100C-3-medication-prescription-request3](MedicationRequest-100C-3-medication-prescription-request3.md) | 100C-3. A prescription item (MedicationRequest) that is a part of a three-item-prescription (42-day treatment cycle). Generic. Prednisone 50mgx3 once a day for 4 days in the beginning of cycle. |
| [200A-multiitem-prescription-without-orchestration](Bundle-200A-multiitem-prescription-without-orchestration.md) | 200A. Multiitem prescription where items on the same prescription are not interdependent. Kept together by the same groupIdentifier. |
| [200C-2-medication-prescription-request1](MedicationRequest-200C-2-medication-prescription-request1.md) | 200C-1. A prescription item (MedicationRequest) that is a part of a two-item-prescription. |
| [200C-2-medication-prescription-request2](MedicationRequest-200C-2-medication-prescription-request2.md) | 200C-2. A prescription item (MedicationRequest) that is a part of a two-item-prescription. |
| [300A-multiitem-prescription-with-orchestration](Bundle-300A-multiitem-prescription-with-orchestration.md) | 300A. Multiitem prescription with RequestOrchestration. 2 products dispensable as 1 multiitem product. |
| [300B-RequestOrchestration](RequestGroup-300B-RequestOrchestration.md) | 300B. A grouper for the lines of a multiitem prescription. |
| [300C-2-medication-prescription-request1](MedicationRequest-300C-2-medication-prescription-request1.md) | 300C-1. A prescription item (MedicationRequest) that is a part of a two-item-prescription. Clotrimazole pessaries. |
| [300C-2-medication-prescription-request2](MedicationRequest-300C-2-medication-prescription-request2.md) | 300C-2. A prescription item (MedicationRequest) that is a part of a two-item-prescription. Clotrimazole cream. |
| [300D-dispense-for-2-requests](MedicationDispense-300D-dispense-for-2-requests.md) | 300D. Medication dispense dispensing one combination product for two prescribed products (multiitem prescription) |
| [400C-prescription-cefuroxime-singleline](MedicationRequest-400C-prescription-cefuroxime-singleline.md) | 400C. A prescription/request with one medication and changing dosaging. Uses 'actionable' tag. Cefuroxime sodium. |
| [400D-dispense-1](MedicationDispense-400D-dispense-1.md) | 400D-1. Medication dispense fulfilling the first part of the order: 1 package containing 10 vials |
| [400D-dispense-2](MedicationDispense-400D-dispense-2.md) | 400D-2. Medication dispense fulfilling the second part of the order: 3 packages containing 5 vials each |
| [400E-refused-dispense](MedicationDispense-400E-refused-dispense.md) | 400E. Refusal of medication dispense |
| [doctor1](PractitionerRole-doctor1.md) | Dr Meryl Ärztin - clinical oncologist. PractitionerRole resource (practitioner working in a specific organisation). |
| [organization1](Organization-organization1.md) | An organization: clinic. Organization resource. |
| [organization2](Organization-organization2.md) | An organization: pharmacy. Organization resource. |
| [patient1](Patient-patient1.md) | A patient: Thomas, born 1950. Patient resource. |
| [patient2](Patient-patient2.md) | A patient: Emily, born 1990. Patient resource. |
| [pharmacist1](PractitionerRole-pharmacist1.md) | Mr Moon Farmatseut - pharmacist. PractitionerRole resource (practitioner working in a specific organisation). |
| [practitioner1](Practitioner-practitioner1.md) | Dr Meryl Ärztin. Practitioner resource (not related to a specific organisation). |
| [practitioner2](Practitioner-practitioner2.md) | Mr Moon Farmatseut. Practitioner resource (not related to a specific organisation). |

