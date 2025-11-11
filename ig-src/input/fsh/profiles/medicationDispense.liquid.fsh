Profile: MedicationDispenseEuMpd
Parent: MedicationDispense 
Id: MedicationDispense-eu-mpd
Title: "MedicationDispense: MPD"
Description: "MedicationDispense profile for capturing dispensation information based on a medication prescription."

{{R5}}* insert ImposeProfile ( $MedicationDispense-ihe , 0)

* insert MedicationDispenseEpCommon

{{R5}}* medication only CodeableReference(MedicationEuMpd)
{{R4}}* medicationReference only Reference(MedicationEuMpd)

{{R5}}* medication.extension contains $data-absent-reason named medication-absent-reason 0..1
{{R4}}* medicationCodeableConcept.extension contains $data-absent-reason named medication-absent-reason 0..1

{{R5}}* medication.extension[medication-absent-reason] ^short = "Reason for not providing the medication."
{{R4}}* medicationCodeableConcept.extension[medication-absent-reason] ^short = "Reason for not providing the medication."

{{R5}}* medication.extension[medication-absent-reason] ^definition = "Reason for not providing the medication."
{{R4}}* medicationCodeableConcept.extension[medication-absent-reason] ^definition = "Reason for not providing the medication."

{{R5}}* notPerformedReason // MS // statusReason, statusText (partial mapping to logical model!)
{{R4}}* extension contains $medicationdispense-rendereddosageinstruction-r5 named renderedDosageInstruction 0..1
{{R4}}* extension[renderedDosageInstruction] ^short = "Full representation of the dosage instructions"
{{R5}}* notPerformedReason // MS // statusReason, statusText (partial mapping to logical model!)