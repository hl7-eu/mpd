Profile: MedicationDispenseEuMpd
Parent: MedicationDispense 
Id: MedicationDispense-eu-mpd
Title: "MedicationDispense: MPD"
Description: "This profile defines how to represent the supply and the associated administration instructions in HL7 FHIR for the purpose of this guide."

* insert MedicationDispenseEpCommon

* medicationReference only Reference(MedicationEuMpd)
* medicationCodeableConcept.extension contains $data-absent-reason named medication-absent-reason 0..1
* medicationCodeableConcept.extension[medication-absent-reason] ^short = "Reason for not providing the medication."
* medicationCodeableConcept.extension[medication-absent-reason] ^definition = "Reason for not providing the medication."

* extension contains $medicationdispense-rendereddosageinstruction-r5 named renderedDosageInstruction 0..1
* extension[renderedDosageInstruction] ^short = "Full representation of the dosage instructions"
//* notPerformedReason // MS // statusReason, statusText (partial mapping to logical model!)
