Profile: MedicationDispenseEuMpd
Parent: MedicationDispense 
Id: MedicationDispense-eu-mpd
Title: "MedicationDispense: MPD"
Description: "This profile defines how to represent the supply and the associated administration instructions in HL7 FHIR for the purpose of this guide."

* insert MedicationDispenseEpCommon

* medicationReference only Reference(MedicationEuMpd)
//* notPerformedReason MS // statusReason, statusText (partial mapping to logical model!)
