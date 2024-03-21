Profile: MedicationRequestEuMpd
Parent: MedicationRequest 
Id: MedicationRequest-eu-mpd
Title: "MedicationRequest: XpanDH"
Description: "This profile defines how to represent MedicationRequest in FHIR for the purpose of the XpanDH project."

* insert MedicationRequestEpCommon
* medication.reference 1..
* medication only CodeableReference(MedicationEuMpd)
* reason ^short = "Reason or indication for this prescription"