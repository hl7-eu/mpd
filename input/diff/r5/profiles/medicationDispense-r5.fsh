Profile: MedicationDispenseEuMpd
Parent: MedicationDispense 
Id: MedicationDispense-eu-mpd
Title: "MedicationDispense: MPD"
Description: "MedicationDispense profile for capturing dispensation information based on a medication prescription."


* insert MedicationDispenseEpCommon
* medication only CodeableReference(MedicationEuMpd)
* notPerformedReason MS // statusReason, statusText (partial mapping to logical model!)