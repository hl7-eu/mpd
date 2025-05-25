//============== ALIAS ===============

// ADDED FOR THIS IG to be moved to an upper level

Alias: $medicationrequest-intent = http://hl7.org/fhir/CodeSystem/medicationrequest-intent
Alias: $medication-definition-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-Medication.definition
Alias: $medication-totalVolume-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-Medication.totalVolume
Alias: $medicationdispense-notperformedreason-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationDispense.notPerformedReason
Alias: $medicationrequest-rendereddosageinstruction-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction
Alias: $medicationdispense-rendereddosageinstruction-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationDispense.renderedDosageInstruction

//------- Code Systems
Alias: $loinc = http://loinc.org
Alias: $v3-ActClass = http://terminology.hl7.org/CodeSystem/v3-ActClass
Alias: $icd11 = http://id.who.int/icd11/mms
Alias: $iso3166 = urn:iso:std:iso:3166
Alias: $Immunization-recommendation-status = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status
//Alias: $sct = http://snomed.info/sct
//Alias: $atc = http://www.whocc.no/atc
Alias: $v3-NullFlavor = http://terminology.hl7.org/CodeSystem/v3-NullFlavor
Alias: $icd-10 = http://hl7.org/fhir/sid/icd-10
Alias: $dug = http://registry.geodati.gov.it/dug
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $aic = https://www.aifa.gov.it/aic // temporary URL
Alias: $jrc = https://covid-19-diagnostics.jrc.ec.europa.eu/devices
Alias: $who-atc = http://www.whocc.no/atc // WHO ATC
Alias: $edqm-standardterms = http://standardterms.edqm.eu // EDQM standard terms 
Alias: $ucum = http://unitsofmeasure.org // UCUM http://hl7.org/fhir/ValueSet/ucum-units
Alias: $snomed = http://snomed.info/sct // SNOMED CT
Alias: $bcp47 = urn:ietf:bcp:47 // BCP47
Alias: $sms = https://spor.ema.europa.eu/v2/SubstanceDefinition // EMA SPOR Substance Management System
Alias: $ingredient-role = http://hl7.org/fhir/ingredient-role // Codes are from EMA SPOR
Alias: $timing = http://hl7.org/fhir/event-timing // FHIR Event Timing
Alias: $common-tags = http://terminology.hl7.org/CodeSystem/common-tags // FHIR Common Tags

// Value Sets
Alias: $eHDSIReactionAllergy = http://terminology.ehdsi.eu/ValueSet/eHDSIReactionAllergy
Alias: $eHDSIActiveIngredient = http://terminology.ehdsi.eu/ValueSet/eHDSIActiveIngredient
Alias: $eHDSIAllergenNoDrug = http://terminology.ehdsi.eu/ValueSet/eHDSIAllergenNoDrug
Alias: $eHDSIAbsentOrUnknownAllergy = http://terminology.ehdsi.eu/ValueSet/eHDSIAbsentOrUnknownAllergy
Alias: $eHDSIAbsentOrUnknownProblem = http://terminology.ehdsi.eu/ValueSet/eHDSIAbsentOrUnknownProblem
Alias: $eHDSIIllnessandDisorder = http://terminology.ehdsi.eu/ValueSet/eHDSIIllnessandDisorder
Alias: $eHDSIRareDisease = http://terminology.ehdsi.eu/ValueSet/eHDSIRareDisease
Alias: $eHDSISeverity = http://terminology.ehdsi.eu/ValueSet/eHDSISeverity
Alias: $eHDSIVaccine = http://terminology.ehdsi.eu/ValueSet/eHDSIVaccine
Alias: $eHDSIDoseForm = http://terminology.ehdsi.eu/ValueSet/eHDSIDoseForm
Alias: $eHDSIMedicalDevice = http://terminology.ehdsi.eu/ValueSet/eHDSIMedicalDevice
Alias: $eHDSISubstance = http://terminology.ehdsi.eu/ValueSet/eHDSISubstance
Alias: $eHDSIBloodGroup = http://terminology.ehdsi.eu/ValueSet/eHDSIBloodGroup
Alias: $eHDSIPackage = http://terminology.ehdsi.eu/ValueSet/eHDSIPackage
Alias: $eHDSISocialHistory = http://terminology.ehdsi.eu/ValueSet/eHDSISocialHistory
Alias: $atc = http://hl7.org/fhir/ValueSet/medicinal-product-classification
Alias: $substanceSCT = http://hl7.org/fhir/ValueSet/substance-codes // Used in R5
Alias: $substanceIPS = http://hl7.org/fhir/uv/ips/ValueSet/medicine-active-substances-uv-ips // Use in R4. IHE R5 uses HL7 ValueSet from R5


//----------- Profiles
Alias: $Observation-results-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-uv-ips
Alias: $ips_lab_result = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-laboratory-uv-ips
Alias: $ips_path_result = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-pathology-uv-ips
Alias: $ips_rad_result = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-radiology-uv-ips
Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $MedicationStatement-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips
Alias: $Medication-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Medication-uv-ips
Alias: $Immunization-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips
Alias: $clinicaldocument = http://hl7.org/fhir/StructureDefinition/clinicaldocument
Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $AllergyIntolerance-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips
Alias: $Condition-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips 
Alias: $Procedure-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips 
Alias: $Device-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Device-uv-ips
Alias: $Observation-results-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-uv-ips
Alias: $Observation-bp = http://hl7.org/fhir/StructureDefinition/bp

Alias: $Medication-ihe = https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedication
Alias: $MedicationRequest-ihe = https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrder
Alias: $MedicationDispense-ihe = https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationDispense