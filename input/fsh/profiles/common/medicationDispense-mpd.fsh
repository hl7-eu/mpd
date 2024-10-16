RuleSet: MedicationDispenseEpCommon

* identifier MS // identifier
* subject MS // patient 1
* receiver MS // receiver
* performer.actor 1..1 MS // dispenser 1
* authorizingPrescription MS // relatedRequest
* authorizingPrescription only Reference(MedicationRequestEuMpd)
//* medication MS // medication 1
//* medication only CodeableReference(MedicationEuMpd)
* quantity 1..1 MS // dispensedQuantity 1
* whenHandedOver 1..1 MS // timeOfDispensation 1
* substitution.wasSubstituted MS // substitutionOccurred
* status MS // status 1
//* notPerformedReason MS // statusReason, statusText (partial mapping to logical model!)