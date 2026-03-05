{% if isR4 %}
Instance: 400D-dispense-1
InstanceOf: MedicationDispenseEuMpd
Usage: #example
Description: "400D-1. Medication dispense fulfilling the first part of the order: 1 package containing 10 vials"

* status = #completed
* medicationReference = Reference(01C-Cefuroxime1500Branded)
* medicationReference.display = "Cefuroxime MIP 1500 mg, powder for solution for injection/infusion. N10."
* subject = Reference(patient1)
* performer[0].actor = Reference(pharmacist1)
* authorizingPrescription[0] = Reference(400C-prescription-cefuroxime-singleline)
* quantity = 1 $ucum#1 // 1 pack containing 10 vials
* daysSupply = 3 $ucum#d "day(s)"
* extension[recorded].valueDateTime = "2024-12-06T19:54:00Z"
* whenHandedOver = "2024-12-06T19:54:00Z"

Instance: 400D-dispense-2
InstanceOf: MedicationDispenseEuMpd
Usage: #example
Description: "400D-2. Medication dispense fulfilling the second part of the order: 3 packages containing 5 vials each"

* status = #completed
* medicationReference = Reference(01D-Cefuroxime750Branded)
* medicationReference.display = "Cefuroxime MIP 750 mg, powder for solution for injection. N5."
* subject = Reference(patient1)
* performer[0].actor = Reference(pharmacist1)
* authorizingPrescription[0] = Reference(400C-prescription-cefuroxime-singleline)
* quantity = 3 $ucum#1 // 3 packs containing 5 vials each
* daysSupply = 4 $ucum#d "day(s)"
* extension[recorded].valueDateTime = "2024-12-09T10:55:00Z"
* whenHandedOver = "2024-12-09T10:55:00Z"
* substitution.wasSubstituted = true

Instance: 300D-dispense-for-2-requests
InstanceOf: MedicationDispenseEuMpd
Usage: #example
Description: "300D. Medication dispense dispensing one combination product for two prescribed products (multiitem prescription)"

* status = #completed
* medicationReference = Reference(02A-ClotrimazoleCanifugCremolum)
* medicationReference.display = "Canifug Cremolum, cream + pessary"
* subject = Reference(patient1)
* performer[0].actor = Reference(pharmacist1)
* authorizingPrescription[0].identifier.value = "300-1/2"
* authorizingPrescription[+].identifier.value = "300-2/2"
* quantity = 1 $ucum#1
* extension[recorded].valueDateTime = "2024-10-06T19:54:00Z"

Instance: 400E-refused-dispense
InstanceOf: MedicationDispenseEuMpd
Usage: #example
Description: "400E. Refusal of medication dispense"

* status = #declined
* medicationCodeableConcept.extension.url = $data-absent-reason
* medicationCodeableConcept.extension.valueCode = #not-performed
* subject = Reference(patient1)
* performer[0].actor = Reference(pharmacist1)
* authorizingPrescription[0] = Reference(400C-prescription-cefuroxime-singleline)
* quantity = 0 $ucum#1 // 1 pack containing 10 vials
* extension[recorded].valueDateTime = "2024-12-06T19:54:00Z" 
{% endif %}
{% if isR5 %}
Instance: 400D-dispense-1
InstanceOf: MedicationDispenseEuMpd
Usage: #example
Description: "400D-1. Medication dispense fulfilling the first part of the order: 1 package containing 10 vials"

* status = #completed
* medication.reference = Reference(01C-Cefuroxime1500Branded)
* medication.reference.display = "Cefuroxime MIP 1500 mg, powder for solution for injection/infusion. N10."
* subject = Reference(patient1)
* performer[0].actor = Reference(pharmacist1)
* authorizingPrescription[0] = Reference(400C-prescription-cefuroxime-singleline)
* quantity = 1 $ucum#1 // 1 pack containing 10 vials
* daysSupply = 3 $ucum#d "day(s)"
* recorded = "2024-12-06T19:54:00Z"
* whenHandedOver = "2024-12-06T19:54:00Z"

Instance: 400D-dispense-2
InstanceOf: MedicationDispenseEuMpd
Usage: #example
Description: "400D-2. Medication dispense fulfilling the second part of the order: 3 packages containing 5 vials each"

* status = #completed
* medication.reference = Reference(01D-Cefuroxime750Branded)
* medication.reference.display = "Cefuroxime MIP 750 mg, powder for solution for injection. N5."
* subject = Reference(patient1)
* performer[0].actor = Reference(pharmacist1)
* authorizingPrescription[0] = Reference(400C-prescription-cefuroxime-singleline)
* quantity = 3 $ucum#1 // 3 packs containing 5 vials each
* daysSupply = 4 $ucum#d "day(s)"
* recorded = "2024-12-09T10:55:00Z"
* whenHandedOver = "2024-12-09T10:55:00Z"
* substitution.wasSubstituted = true

Instance: 300D-dispense-for-2-requests
InstanceOf: MedicationDispenseEuMpd
Usage: #example
Description: "300D. Medication dispense dispensing one combination product for two prescribed products (multiitem prescription)."

* status = #completed
* medication.reference = Reference(02A-ClotrimazoleCanifugCremolum)
* medication.reference.display = "Canifug Cremolum, cream + pessary"
* subject = Reference(patient1)
* performer[0].actor = Reference(pharmacist1)
* authorizingPrescription[0].identifier.value = "300-1/2"
* authorizingPrescription[+].identifier.value = "300-2/2"
* quantity = 1 $ucum#1
* recorded = "2024-10-06T19:54:00Z"

Instance: 400E-refused-dispense
InstanceOf: MedicationDispenseEuMpd
Usage: #example
Description: "400E. Refusal of medication dispense"

* status = #declined
* medication.extension.url = $data-absent-reason
* medication.extension.valueCode = #not-performed
* subject = Reference(patient1)
* performer[0].actor = Reference(pharmacist1)
* authorizingPrescription[0] = Reference(400C-prescription-cefuroxime-singleline)
* quantity = 0 $ucum#1 // 1 pack containing 10 vials
* recorded = "2024-12-06T19:54:00Z"
{% endif %}