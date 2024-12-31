// SINGLE LINE PRESCRIPTIONS - only one medication per prescription.
Instance: 10-prescription-cefuroxime-singleline
InstanceOf: MedicationRequestEuMpd
Usage: #example
Description: "A prescription/request with one medication and changing dosaging. Uses 'actionable' tag. Cefuroxime sodium."

* meta.tag = #actionable
* identifier.value = "10-123EP"  // prescription line identifier if exists
* status = #active
* intent = #order
* authoredOn = "2024-12-06"
* requester = Reference(doctor1)
* medication.reference = Reference(01A-Cefuroxime1500GenericExplicit)
* subject = Reference(patient1)
* reason.concept = $snomed#10625071000119104 "Bronchopneumonia caused by bacteria (disorder)"
* dosageInstruction[0]
  * sequence = 1
  * doseAndRate.doseQuantity = 1500 $ucum#mg "milligram(s)"
  * route = $snomed#78421000 "Intramuscular route"
  * timing
    * repeat.frequency = 1
    * repeat.period = 8
    * repeat.periodUnit = $ucum#h "hour(s)"
    * repeat.boundsDuration = 3 $ucum#d "day"
* dosageInstruction[+]
  * sequence = 2
  * doseAndRate.doseRange.low = 750 $ucum#mg "milligram(s)"
  * doseAndRate.doseRange.high = 1500 $ucum#mg "milligram(s)"
  * route = $snomed#78421000 "Intramuscular route"
  * timing
    * repeat.frequency = 1
    * repeat.period = 8
    * repeat.periodUnit = $ucum#h "hour(s)"
    * repeat.boundsDuration = 4 $ucum#d "day"

* dispenseRequest.extension[prescribedQuantity].valueQuantity = 21 $edqm-standardterms#15060000 "Vial"
* dispenseRequest.validityPeriod.start = "2024-12-06"
* dispenseRequest.validityPeriod.end = "2024-12-13"
* substitution.allowedBoolean = true


// MULTILINE PRESCRIPTIONS
// EXAMPLE 1: 3 medication requests


Instance: 100A-multiitem-prescription-with-orchestration
InstanceOf: Bundle
Usage: #example
Description: "Multiitem prescription with RequestOrchestration (R4 RequestGroup). 42-day cycle treatment consisting of three medications that should start at the same time. Wrapped in a Bundle for better readability."

* type = #collection
* entry[0].fullUrl = "https://example.com/RequestOrchestration/100B-RequestOrchestration"
* entry[=].resource = 100B-RequestOrchestration

* entry[+].fullUrl = "https://example.com/MedicationRequest/100C-3-medication-prescription-request1"
* entry[=].resource = 100C-3-medication-prescription-request1

* entry[+].fullUrl = "https://example.com/MedicationRequest/100C-3-medication-prescription-request2"
* entry[=].resource = 100C-3-medication-prescription-request2

* entry[+].fullUrl = "https://example.com/MedicationRequest/100C-3-medication-prescription-request3"
* entry[=].resource = 100C-3-medication-prescription-request3

* entry[+].fullUrl = "https://example.com/PractitionerRole/doctor1"
* entry[=].resource = doctor1

* entry[+].fullUrl = "https://example.com/Patient/patient1"
* entry[=].resource = patient1

Instance: 100B-RequestOrchestration
InstanceOf: RequestOrchestration
Usage: #example
Description: "A grouper for the lines of a multiitem prescription. It should not be considered the prescription object as such."

// No identifier, because it's not an actual business object. 
// groupIdentifier is the prescription identifier. All MedicationRequest instances should have the same groupIdentifier value.
* groupIdentifier
  * value = "100"
* subject = Reference(Patient/patient1)
* status = #active
* action[0].resource = Reference(100C-3-medication-prescription-request1)
// related action concurrent-with-start
* action[+].resource = Reference(100C-3-medication-prescription-request2)
* action[+].resource = Reference(100C-3-medication-prescription-request3)
* intent = #order


Instance: 100C-3-medication-prescription-request1
InstanceOf: MedicationRequestEuMpd
Usage: #example
Description: "A prescription item (MedicationRequest) that is a part of a three-item-prescription (42-day treatment cycle). Generic. Thalidomide 50mgx4 once a day before bed for 42 days."

* identifier.value = "100-1/3"
//* identifier.system = "" 
* groupIdentifier.value = "100"
* status = #active
* intent = #option
* authoredOn = "2024-10-03"
* requester = Reference(PractitionerRole/doctor1)
* medication.concept = $snomed#376255008 "Thalidomide 50 mg oral capsule"
* subject = Reference(Patient/patient1)
* reason.concept = $snomed#109989006 "Multiple myeloma"
* dosageInstruction[0].doseAndRate.doseQuantity = 4 $snomed#732936001 "Tablet"
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = $ucum#d "day"
* dosageInstruction[=].timing.repeat.when = $timing#EVE.late "Late Evening"
* dosageInstruction[=].timing.repeat.boundsDuration = 42 $ucum#d "day"
* dispenseRequest.numberOfRepeatsAllowed = 1
* dispenseRequest.quantity = 168 $snomed#732936001 "Tablet"
* dispenseRequest.validityPeriod.start = "2024-10-03"
* dispenseRequest.validityPeriod.end = "2024-12-03"


Instance: 100C-3-medication-prescription-request2
InstanceOf: MedicationRequestEuMpd
Usage: #example
Description: "A prescription item (MedicationRequest) that is a part of a three-item-prescription (42-day treatment cycle). Generic. Melphalan 2mgx4 once a day for 4 days in the beginning of cycle."

* identifier.value = "100-2/3"
//* identifier.system = "" 
* groupIdentifier.value = "100"
* status = #active
* intent = #option
* authoredOn = "2024-10-03"
* requester = Reference(PractitionerRole/doctor1)
* medication.concept = $snomed#326766003 "Melphalan 2 mg oral tablet"
* subject = Reference(Patient/patient1)
* reason.concept = $snomed#109989006 "Multiple myeloma"
* dosageInstruction[0].doseAndRate.doseQuantity = 4 $snomed#732936001 "Tablet"
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = $ucum#d "day"
* dosageInstruction[=].timing.repeat.boundsDuration = 4 $ucum#d "day"
* dispenseRequest.numberOfRepeatsAllowed = 1
* dispenseRequest.quantity = 16 $snomed#732936001 "Tablet"
* dispenseRequest.validityPeriod.start = "2024-10-03"
* dispenseRequest.validityPeriod.end = "2024-12-03"


Instance: 100C-3-medication-prescription-request3
InstanceOf: MedicationRequestEuMpd
Usage: #example
Description: "A prescription item (MedicationRequest) that is a part of a three-item-prescription (42-day treatment cycle). Generic. Prednisone 50mgx3 once a day for 4 days in the beginning of cycle."

* identifier.value = "100-3/3"
//* identifier.system = "" 
* groupIdentifier.value = "100"
* status = #active
* intent = #option
* authoredOn = "2024-10-03"
* requester = Reference(PractitionerRole/doctor1)
* medication.concept = $snomed#374072009 "Prednisone 50 mg oral tablet"
* subject = Reference(Patient/patient1)
* reason.concept = $snomed#109989006 "Multiple myeloma"
* dosageInstruction[0].doseAndRate.doseQuantity = 3 $snomed#732936001 "Tablet"
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = $ucum#d "day"
//* dosageInstruction[=].timing.repeat.when = $timing#EVE.late "Late Evening"
* dosageInstruction[=].timing.repeat.boundsDuration = 4 $ucum#d "day"
* dispenseRequest.numberOfRepeatsAllowed = 1
* dispenseRequest.quantity = 12 $snomed#732936001 "Tablet"
* dispenseRequest.validityPeriod.start = "2024-10-03"
* dispenseRequest.validityPeriod.end = "2024-12-03"



// EXAMPLE 2: two medication requests grouped only by groupIdentifier. No orchestration.

Instance: 200A-multiitem-prescription-without-orchestration
InstanceOf: Bundle
Usage: #example
Description: "Multiitem prescription where items on the same prescription are not interdependent. Kept together by the same groupIdentifier."

* type = #collection
* entry[0].fullUrl = "https://example.com/MedicationRequest/200C-2-medication-prescription-request1"
* entry[=].resource = 200C-2-medication-prescription-request1

* entry[0].fullUrl = "https://example.com/MedicationRequest/200C-2-medication-prescription-request2"
* entry[=].resource = 200C-2-medication-prescription-request2

* entry[+].fullUrl = "https://example.com/PractitionerRole/doctor1"
* entry[=].resource = doctor1

* entry[+].fullUrl = "https://example.com/Patient/patient1"
* entry[=].resource = patient1


Instance: 200C-2-medication-prescription-request1
InstanceOf: MedicationRequestEuMpd
Usage: #example
Description: "A prescription item (MedicationRequest) that is a part of a two-item-prescription. "

* identifier.value = "200-1/2"  // prescription line identifier if exists
* groupIdentifier.value = "200" // prescription number
* status = #active
* intent = #order
* authoredOn = "2024-10-06"
* requester = Reference(doctor1)
* medication.concept = $snomed#324821004 "Valacyclovir (as valacyclovir hydrochloride) 500 mg oral tablet"
* subject = Reference(patient1)
* reason.concept = $snomed#407451003 "Herpes simplex type 1 infection"
* dosageInstruction[0].doseAndRate.doseQuantity = 1 $snomed#732936001 "Tablet"
* dosageInstruction[=].timing.repeat.frequency = 2
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = $ucum#d "day"
* dosageInstruction[=].timing.repeat.boundsDuration = 5 $ucum#d "day"
* dispenseRequest.numberOfRepeatsAllowed = 1
* dispenseRequest.quantity = 10 $snomed#732936001 "Tablet"
* dispenseRequest.validityPeriod.start = "2024-10-06"
* dispenseRequest.validityPeriod.end = "2024-12-06"

Instance: 200C-2-medication-prescription-request2
InstanceOf: MedicationRequestEuMpd
Usage: #example
Description: "A prescription item (MedicationRequest) that is a part of a two-item-prescription. "

* identifier.value = "200-2/2"  // prescription line identifier if exists
* groupIdentifier.value = "200" // prescription number
* status = #active
* intent = #order
* authoredOn = "2024-10-06"
* requester = Reference(doctor1)
* medication.concept = $snomed#374647008 "Amoxicillin 875 mg oral tablet"
* subject = Reference(patient1)
* reason.concept = $snomed#88348008 "Maxillary sinusitis"
* dosageInstruction[0].doseAndRate.doseQuantity = 1 $snomed#732936001 "Tablet"
* dosageInstruction[=].timing.repeat.frequency = 2
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = $ucum#d "day"
* dosageInstruction[=].timing.repeat.boundsDuration = 7 $ucum#d "day"
* dispenseRequest.numberOfRepeatsAllowed = 1
* dispenseRequest.quantity = 14 $snomed#732936001 "Tablet"
* dispenseRequest.validityPeriod.start = "2024-10-06"
* dispenseRequest.validityPeriod.end = "2024-12-06"


// EXAMPLE 3: 2 medication requests that can be dispensed as one combi-product



Instance: 300A-multiitem-prescription-with-orchestration
InstanceOf: Bundle
Usage: #example
Description: "Multiitem prescription with RequestOrchestration. 2 products dispensable as 1 multiitem product."

* type = #collection
* entry[0].fullUrl = "https://example.com/RequestOrchestration/300B-RequestOrchestration"
* entry[=].resource = 300B-RequestOrchestration

* entry[+].fullUrl = "https://example.com/MedicationRequest/300C-2-medication-prescription-request1"
* entry[=].resource = 300C-2-medication-prescription-request1

* entry[+].fullUrl = "https://example.com/MedicationRequest/300C-2-medication-prescription-request2"
* entry[=].resource = 300C-2-medication-prescription-request2

* entry[+].fullUrl = "https://example.com/PractitionerRole/doctor1"
* entry[=].resource = doctor1

* entry[+].fullUrl = "https://example.com/Patient/patient1"
* entry[=].resource = patient1

* entry[+].fullUrl = "https://example.com/Medication/02A2-CanifugCremolumPessaryItem"
* entry[=].resource = 02A2-CanifugCremolumPessaryItem

* entry[+].fullUrl = "https://example.com/Medication/02A1-CanifugCremolumCreamItem"
* entry[=].resource = 02A1-CanifugCremolumCreamItem

Instance: 300B-RequestOrchestration
InstanceOf: RequestOrchestration
Usage: #example
Description: "A grouper for the lines of a multiitem prescription."

// No identifier, because it's not an actual business object. 
// groupIdentifier is the prescription identifier. All MedicationRequest instances should have the same groupIdentifier value.
* groupIdentifier
  * value = "300"
* subject = Reference(patient1)
* status = #active
* action[0].resource = Reference(300C-2-medication-prescription-request1)
* action[+].resource = Reference(300C-2-medication-prescription-request2)
* intent = #order


Instance: 300C-2-medication-prescription-request1
InstanceOf: MedicationRequestEuMpd
Usage: #example
Description: "A prescription item (MedicationRequest) that is a part of a two-item-prescription. Clotrimazole pessaries."

* identifier.value = "300-1/2"
* groupIdentifier.value = "300"
* status = #active
* intent = #option
* authoredOn = "2024-10-06"
* requester = Reference(doctor1)
* medication.reference = Reference(02A2-CanifugCremolumPessaryItem)
* subject = Reference(patient1)
* reason.concept = $snomed#72934000 "Candidiasis of vagina"
* dosageInstruction[0].doseAndRate.doseQuantity = 1 $snomed#733007009 "Pessary"
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = $ucum#d "day"
* dosageInstruction[=].timing.repeat.when = $timing#EVE.late "Late Evening"
* dosageInstruction[=].timing.repeat.boundsDuration = 6 $ucum#d "day"
* dispenseRequest.numberOfRepeatsAllowed = 1
* dispenseRequest.quantity = 6 $snomed#733007009 "Pessary"
* dispenseRequest.validityPeriod.start = "2024-10-06"
* dispenseRequest.validityPeriod.end = "2024-12-06"


Instance: 300C-2-medication-prescription-request2
InstanceOf: MedicationRequestEuMpd
Usage: #example
Description: "A prescription item (MedicationRequest) that is a part of a two-item-prescription. Clotrimazole cream."

* identifier.value = "300-2/2"
* groupIdentifier.value = "300"
* status = #active
* intent = #option
* authoredOn = "2024-10-06"
* requester = Reference(doctor1)
* medication.reference = Reference(02A1-CanifugCremolumCreamItem)
* subject = Reference(patient1)
* reason.concept = $snomed#72934000 "Candidiasis of vagina"
* dosageInstruction[0].doseAndRate.doseQuantity = 1 $snomed#413568008 "Application - unit of product usage"
* dosageInstruction[=].timing.repeat.frequency = 2
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = $ucum#d "day"
* dosageInstruction[=].timing.repeat.boundsDuration = 6 $ucum#d "day"
* dispenseRequest.numberOfRepeatsAllowed = 1
* dispenseRequest.quantity = 20 $ucum#g "gram(s)"
* dispenseRequest.validityPeriod.start = "2024-10-06"
* dispenseRequest.validityPeriod.end = "2024-12-06"