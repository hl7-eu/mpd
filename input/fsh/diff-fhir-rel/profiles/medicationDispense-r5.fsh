Profile: MedicationDispenseEuMpd
Parent: MedicationDispense 
Id: MedicationDispense-eu-mpd
Title: "MedicationDispense: MPD"
Description: "MedicationDispense profile for capturing dispensation information based on a medication prescription."

* insert ImposeProfile ( $MedicationDispense-ihe , 0)
* insert MedicationDispenseEpCommon
* medication only CodeableReference(MedicationEuMpd)
* medication.extension contains $data-absent-reason named medication-absent-reason 0..1
* medication.extension[medication-absent-reason] ^short = "Reason for not providing the medication."
* medication.extension[medication-absent-reason] ^definition = "Reason for not providing the medication."
* notPerformedReason // MS // statusReason, statusText (partial mapping to logical model!)