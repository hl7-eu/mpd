{% if isR4 %}
Profile: MedicationRequestEuMpd
Parent: MedicationRequest 
Id: MedicationRequest-eu-mpd
Title: "MedicationRequest: MPD"
Description: "This profile defines how to represent MedicationRequest in HL7 FHIR for the purpose of this guide."

* insert MedicationRequestEpCommon
* medication[x] only CodeableConcept or Reference(MedicationEuMpd)
* reasonCode ^short = "Reason or indication for this prescription"
  * ^binding.extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * ^binding.extension[0].extension[0].url = "purpose"
  * ^binding.extension[=].extension[=].valueCode = #candidate
  * ^binding.extension[=].extension[+].url = "valueSet"
  * ^binding.extension[=].extension[=].valueCanonical = $eHDSIIllnessandDisorder
  * ^binding.extension[=].extension[+].url = "documentation"
  * ^binding.extension[=].extension[=].valueMarkdown = """MyHealth@EU crossborder value set for diagnoses. Based on WHO ICD 10."""

* reasonReference ^short = "Condition or observation that supports this prescription"

* extension contains $medicationRequest-effectiveDosePeriod-r5 named effectiveDosePeriod 0..1
* extension[effectiveDosePeriod] ^short = "Period over which the medication should be taken."
* extension[effectiveDosePeriod] ^definition = "Period over which the medication should be taken. Where there are multiple dosageInstruction lines (for example, tapering doses), this is the earliest date and the latest end date of the dosageInstructions."

* extension contains $medicationrequest-rendereddosageinstruction-r5 named renderedDosageInstruction 0..1
* extension[renderedDosageInstruction] ^short = "Full representation of the dosage instructions"
{% endif %}

{% if isR5 %}
Profile: MedicationRequestEuMpd
Parent: MedicationRequest 
Id: MedicationRequest-eu-mpd
Title: "MedicationRequest: MPD"
Description: "This profile defines how to represent ePrescription or other medication request."

* insert ImposeProfile ( $MedicationRequest-ihe , 0)
* insert MedicationRequestEpCommon
* medication 1..
* medication only CodeableReference(MedicationEuMpd)
* reason ^short = "Reason or indication for this prescription"
  * ^binding.additional.purpose = #candidate
  * ^binding.additional.valueSet = $eHDSIIllnessandDisorder
  * ^binding.additional.documentation = """MyHealth@EU crossborder value set for diagnoses. Based on WHO ICD 10.""" 
{% endif %}

