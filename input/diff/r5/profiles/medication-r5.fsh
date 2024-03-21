Profile: MedicationEuMpd
// Parent: $Medication-uv-ips
Parent: Medication
// DEFINE THIS AS SPECIALIZAITON OF A COMMON EHDSI PROFILE
Id: Medication-eu-mpd
Title: "Medication: XpanDH"
Description: "This profile defines how to represent MedicationRequest in FHIR for the purpose of the XpanDH project eP/eD POC."

* definition only Reference(MedicationKnowledge)
* insert MedicationEpCommon

* ingredient
  * item from $eHDSISubstance (preferred)
  * item only CodeableReference (MedicationEuMpd)
  * strength[x] ^short = "A kind of strength"
  * strength[x] ^definition = """A kind of strength.
  Definitional resources should be used for specifying the different types of strengths: presentation; concentration;.."""
* doseForm from $eHDSIDoseForm


// ADD RULES FROM IPS



