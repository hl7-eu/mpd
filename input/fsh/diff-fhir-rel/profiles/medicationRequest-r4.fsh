
Profile: MedicationRequestEuMpd
Parent: MedicationRequest 
Id: MedicationRequest-eu-mpd
Title: "MedicationRequest: MPD"
Description: "This profile defines how to represent MedicationRequest in HL7 FHIR for the purpose of this guide."

* insert MedicationRequestEpCommon
* medicationReference only Reference(MedicationEuMpd)
* reasonCode ^short = "Reason or indication for this prescription"
* reasonReference ^short = "Condition or observation that supports this prescription"
