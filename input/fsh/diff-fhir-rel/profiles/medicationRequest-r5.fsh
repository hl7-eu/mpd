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


