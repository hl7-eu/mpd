Profile: MedicationRequestEuMpd
Parent: MedicationRequest 
Id: MedicationRequest-eu-mpd
Title: "MedicationRequest: MPD"
Description: "This profile defines how to represent ePrescription or other medication request."

* insert MedicationRequestEpCommon
* medication 1..
* medication only Reference(MedicationEuMpd)
* reason ^short = "Reason or indication for this prescription"
