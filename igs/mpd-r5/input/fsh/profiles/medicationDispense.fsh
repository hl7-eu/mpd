// TODO: whenHandedOver is 1..1 in IHE profile, which is imposed on R5. Causes QA error.

Profile: MedicationDispenseEuMpd
Parent: MedicationDispense 
Id: MedicationDispense-eu-mpd
Title: "MedicationDispense: MPD"
Description: "MedicationDispense profile for capturing dispensation information based on a medication prescription."

* insert ImposeProfile ( $MedicationDispense-ihe , 0)

* identifier // MS // identifier
* subject // MS // patient 1
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
* receiver // MS // receiver
* performer.actor 1..1 // MS // dispenser 1
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
//* authorizingPrescription // MS // relatedRequest
* authorizingPrescription only Reference(MedicationRequestEuMpd)
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer 
* quantity 1..1 // MS // dispensedQuantity 1
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer 
* whenHandedOver ^short = "Date and time when the medication was handed over. When not present, the time of dispensation is assumed to be the time of issuing the dispense record." // MS // timeOfDispensation 1
* substitution.wasSubstituted // MS // substitutionOccurred
* status // MS // status 1
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer 
* dosageInstruction
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer 

* medication only CodeableReference(MedicationEuMpd)
//R4* medicationReference only Reference(MedicationEuMpd)

//R4* extension contains $medicationdispense-rendereddosageinstruction-r5 named renderedDosageInstruction 0..1
//R4* extension[renderedDosageInstruction] ^short = "Full representation of the dosage instructions"
* notPerformedReason // MS // statusReason, statusText (partial mapping to logical model!)






* medication
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer 

* recorded ^short = "Date and time when the dispense was recorded/issued. This is not necessarily the same as when the medication was handed over to the patient."
* recorded 1..1
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer 
