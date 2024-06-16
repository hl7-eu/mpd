
Profile: MedicationEuMpd
// Parent: $Medication-uv-ips
Parent: Medication
Id: Medication-eu-mpd
Title: "Medication: MPD"
Description: "This profile defines how to represent MedicationRequest in HL7 FHIR for the purpose of this guide."


* insert MedicationEpCommon
* totalVolume MS // item.amount; packSize
  * ^short = "Total volume or number of package items inside a package. This element should not contain overall prescribed amount, but describe the product itself. In case of complex packages, this element could be left empty, and number of different items could be indicated in the nested Medications." //packSize (almost)
* ingredient
  * item from $eHDSISubstance (example)
  * item only CodeableReference (Substance or MedicationEuMpd)
  * strength[x] ^short = "A kind of strength"
  * strength[x] ^definition = """A kind of strength.
  Definitional resources should be used for specifying the different types of strengths: presentation; concentration;.."""
* doseForm from $eHDSIDoseForm
* totalVolume ^short = "Total volume or number of package items inside a package. This element should not contain overall prescribed amount, but describe the product itself. In case of complex packages, this element could be left empty, and number of different items could be indicated in the nested Medications." //packSize (almost)




