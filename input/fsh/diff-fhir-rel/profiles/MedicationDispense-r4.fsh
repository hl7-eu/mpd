
Profile: MedicationDispenseEuMpd
Parent: MedicationDispense 
Id: MedicationDispense-eu-mpd
Title: "MedicationDispense: MPD"
Description: "This profile defines how to represent the supply and the associated administration instructions in HL7 FHIR for the purpose of this guide."

* identifier ^short = "Identifier for this dispensation"
* medicationReference only Reference(MedicationEuMpd)
* subject only Reference ( PatientEuMpd )
* performer ^short = "Who performed the dispensation."
* performer.actor only Reference ( Practitioner or PractitionerRole or Organization )
* authorizingPrescription only Reference ( MedicationRequestEuMpd)
* quantity ^short = "Amount dispensed."
* substitution ^short = "Details about substitution"
