Profile: MedicationRequestEuMpd
Parent: MedicationRequest 
Id: MedicationRequest-eu-mpd
Title: "MedicationRequest: MPD"
Description: "This profile defines how to represent MedicationRequest in HL7 FHIR for the purpose of this guide."

* extension contains $ihe-ext-medicationrequest-offlabeluse named offLabelUse 0..1 
* extension[offLabelUse] ^short = "Indicates that the prescriber has knowingly prescribed the medication for an indication, age group, dosage, or route of administration that is not approved by the regulatory agencies and is not mentioned in the prescribing information for the product." 
* identifier 
  * ^short = "Prescription/prescribed item ID"
  * ^comment = "It is the prescription ID if the presciption includes only one prescribed item"
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* status
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* subject only Reference( PatientEuCore )
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* authoredOn 1..
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* requester 1..
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* groupIdentifier 
  * ^short = "Prescription this is part of. Not needed if a presciption includes only one prescribed item."
* dosageInstruction ^short = "How the medication should be taken."
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * timing ^short = "Administration schedule"
    * repeat
      * duration ^short = "Duration of the treatment"
      * frequency ^short = "Frequency times per period"
      * period ^short = "Duration of time over which repetitions are to occur"
      * periodUnit  ^short = "Unit of the period (e.g. day)"
    * code ^short = "A code for the timing schedule."
  * route ^short = "Route of administration"
  * text ^short = "Free text dosage instructions"
  * doseAndRate.doseQuantity ^short = "Amount of medication per dose"
* dispenseRequest
  * extension contains $ihe-ext-medicationrequest-prescribedquantity named prescribedQuantity 0..1
  * extension[prescribedQuantity] ^short = "Overall amount of product prescribed, independent from the number of repeats."
  * extension[prescribedQuantity] ^definition = "When Medication resource implies a pack size, prescribedQuantity should convey number of packages. When the Medication does not imply an amount, overall amount could be in tablets or millilitres."
    * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * validityPeriod
    * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* substitution ^short = "Any restrictions on medication substitution. Substitution rules (including the definition of substitution) vary across different countries, and the semantics of this element should be interpreted accordingly."
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* note.text
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer



{% if isR4 %}

* medication[x] only CodeableConcept or Reference(MedicationEuMpd)
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

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

* insert ImposeProfile ( $MedicationRequest-ihe , 0)
* medication 1..
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* medication only CodeableReference(MedicationEuMpd)
* reason ^short = "Reason or indication for this prescription"
  * ^binding.additional.purpose = #candidate
  * ^binding.additional.valueSet = $eHDSIIllnessandDisorder
  * ^binding.additional.documentation = """MyHealth@EU crossborder value set for diagnoses. Based on WHO ICD 10.""" 
{% endif %}

