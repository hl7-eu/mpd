Profile: MedicationEuMpd
// Parent: $Medication-uv-ips
Parent: Medication
// DEFINE THIS AS SPECIALIZAITON OF A COMMON EHDSI PROFILE
Id: Medication-eu-mpd
Title: "Medication: XpanDH"
Description: "This profile defines how to represent MedicationRequest in FHIR for the purpose of the XpanDH project eP/eD POC."

* extension contains $medication-definition-r5 named MedicationDefinitionR5 0..
* extension[MedicationDefinitionR5].valueReference only Reference(MedicationKnowledge)

* insert ImposeProfile ( $Medication-uv-ips , 0)
* insert MedicationEpCommon

* ingredient
  * itemCodeableConcept from $eHDSISubstance (preferred)
  * itemReference only Reference (MedicationEuMpd)
  * strength ^short = "A kind of strength"
  * strength ^definition = """A kind of strength.
  Definitional resources should be used for specifying the different types of strengths: presentation; concentration;.."""
* form from $eHDSIDoseForm

// ADD RULES FROM IPS