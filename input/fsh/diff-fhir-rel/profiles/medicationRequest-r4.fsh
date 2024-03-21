Profile: MedicationRequestEuMpd
Parent: MedicationRequest 
Id: MedicationRequest-eu-mpd
Title: "MedicationRequest: XpanDH"
Description: "This profile defines how to represent MedicationRequest in FHIR for the purpose of the XpanDH project."

* insert MedicationRequestEpCommon
* medicationReference 1..
* medicationReference only Reference(MedicationEuMpd)
* reasonCode ^short = "Reason or indication for this prescription"
* reasonReference ^short = "Condition or observation that supports this prescription"