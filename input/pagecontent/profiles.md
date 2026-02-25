### Mappings from EHDS models to FHIR profiles

EHDS logical information models are provided by Xt-EHR project. Please read more about the models on [Logical Models page](logicalmodels.html).  
Mappings from eHealth Network Guidelines are not provided by this guide.

#### Prescription  

EHDS Medication Prescription model allows multiple items prescribed on one prescription. In such case, EHDS.MedicationPrescription.identifier maps to MedicationRequest.groupIdentifier, and RequestOrchestration/RequestGroup may be the target of some of the prescription elements. Please read [implementation notes](implementationnotes.html) for more information.  
  
|**Logical model element**|**FHIR Path R5**|**FHIR Path R4**|  
|header.subject|MedicationRequest.subject|MedicationRequest.subject|  
|header.identifier|MedicationRequest.identifier or .groupIdentifier|MedicationRequest.identifier or .groupIdentifier|  
|header.author[x]|MedicationRequest.requester|MedicationRequest.requester|  
|header.date|MedicationRequest.authoredOn|MedicationRequest.authoredOn|  
|header.status|MedicationRequest.status or RequestOrchestration.status (for multi-item)|MedicationRequest.status or RequestGroup.status (for multi-item)|  
|header.language[x]|MedicationRequest.language|MedicationRequest.language|   
|header.statusReason[x]|MedicationRequest.statusReason|MedicationRequest.statusReason|   
|header.presentedForm|||   
|prescriptionItem|MedicationRequest|MedicationRequest|  
|prescriptionItem.identifier|MedicationRequest.identifier|MedicationRequest.identifier|  
|prescriptionItem.status|MedicationRequest.status|MedicationRequest.status|  
|prescriptionItem.statusReason[x]|MedicationRequest.statusReason|MedicationRequest.statusReason|  
|prescriptionItem.medication|MedicationRequest.medication|MedicationRequest.medication[x]|  
|prescriptionItem.indication[x]|MedicationRequest.reason|MedicationRequest.reasonCode or .reasonReference|  
|prescriptionItem.intendedUseType|MedicationRequest.reason.concept|MedicationRequest.reasonCode|  
|prescriptionItem.periodOfUse|MedicationRequest.effectiveDosePeriod|MedicationRequest.extension:effectiveDosePeriod|  
|prescriptionItem.quantityPrescribed|MedicationRequest.dispenseRequest.extension: prescribedQuantity|MedicationRequest.dispenseRequest.extension: prescribedQuantity|  
|prescriptionItem.dosageInstructions|MedicationRequest.dosageInstruction|MedicationRequest.dosageInstruction|  
|prescriptionItem.validityPeriod|MedicationRequest.dispenseRequest.validityPeriod|MedicationRequest.dispenseRequest.validityPeriod|  
|prescriptionItem.substitution|MedicationRequest.substitution|MedicationRequest.substitution|  
|prescriptionItem.substitution.allowed[x]|MedicationRequest.substitution.allowed[x]|MedicationRequest.substitution.allowed[x]|  
|prescriptionItem.substitution.reason[x]|MedicationRequest.substitution.reason|MedicationRequest.substitution.reason|  
|prescriptionItem.numberOfRepeats|MedicationRequest.dispenseRequest.numberOfRepeatsAllowed|MedicationRequest.dispenseRequest.numberOfRepeatsAllowed|  
|prescriptionItem.minimumDispenseInterval|MedicationRequest.dispenseRequest.dispenseInterval|MedicationRequest.dispenseRequest.dispenseInterval|  
|prescriptionItem.offLabel|MedicationRequest.extension:offLabelUse|MedicationRequest.extension:offLabelUse|  
|prescriptionItem.note|MedicationRequest.note.text|MedicationRequest.note.text|  
{:.table-bordered .table-striped .thead-light}

#### Medication  
  
The map is available in HL7 Europe Base and Core FHIR IG.

#### Dosage  
  
|**Logical model element**|**FHIR Path R5**|**FHIR Path R4**|  
|EHDSDosage|-|-| 
|renderedDosageInstruction|MedicationDispense.renderedDosageInstruction; MedicationRequest.renderedDosageInstruction|MedicationDispense.extension:renderedDosageInstruction; MedicationRequest.extension:renderedDosageInstruction| 
|dosageDetails|Dosage|Dosage| 
|dosageDetails.sequence|Dosage.sequence|Dosage.sequence| 
|dosageDetails.note|Dosage.patientInstruction|Dosage.patientInstruction| 
|dosageDetails.doseAndRate|Dosage.doseAndRate|Dosage.doseAndRate| 
|dosageDetails.doseAndRate.dose[x]|Dosage.doseAndRate.dose[x]|Dosage.doseAndRate.dose[x]| 
|dosageDetails.doseAndRate.rate[x]|Dosage.doseAndRate.rate[x]|Dosage.doseAndRate.rate[x]| 
|dosageDetails.repeat|Dosage.timing.repeat|Dosage.timing.repeat| 
|dosageDetails.repeat.bounds|Dosage.timing.repeat.bounds[x]|Dosage.timing.repeat.bounds[x]| 
|dosageDetails.repeat.bounds.duration||| 
|dosageDetails.repeat.bounds.period||| 
|dosageDetails.repeat.duration|Dosage.timing.repeat.duration + Dosage.timing.repeat.durationUnit|Dosage.timing.repeat.duration + Dosage.timing.repeat.durationUnit| 
|dosageDetails.repeat.frequency|-|-| 
|dosageDetails.repeat.frequency.numberOfTimes|Dosage.timing.repeat.frequency|Dosage.timing.repeat.frequency| 
|dosageDetails.repeat.frequency.period|Dosage.timing.repeat.period + Dosage.timing.repeat.periodUnit|Dosage.timing.repeat.period + Dosage.timing.repeat.periodUnit| 
|dosageDetails.repeat.dayOfWeek|Dosage.timing.repeat.dayOfWeek|Dosage.timing.repeat.dayOfWeek| 
|dosageDetails.repeat.timeOfDay|Dosage.timing.repeat.timeOfDay|Dosage.timing.repeat.timeOfDay| 
|dosageDetails.repeat.eventTime|Dosage.timing.repeat.when|Dosage.timing.repeat.when| 
|dosageDetails.asNeeded|Dosage.asNeeded|Dosage.asNeededBoolean| 
|dosageDetails.bodySite|Dosage.site|Dosage.site| 
|dosageDetails.routeOfAdministration|Dosage.route|Dosage.route| 
{:.table-bordered .table-striped .thead-light}

#### Medication Dispense  
  
|**Logical model element**|**FHIR Path R5**|**FHIR Path R4**|  
|EHDSMedicationDispense||| 
|header||| 
|header.subject|MedicationDispense.subject|MedicationDispense.subject| 
|header.identifier|MedicationDispense.identifier|MedicationDispense.identifier| 
|header.author[x]|MedicationDispense.performer.actor|MedicationDispense.performer.actor| 
|header.date|MedicationDispense.recorded|MedicationDispense.extension:recorded| 
|header.status|MedicationDispense.status|MedicationDispense.status| 
|header.language|MedicationDispense.language|MedicationDispense.language| 
|dispenseLocation|MedicationDispense.location|MedicationDispense.location| 
|receiver[x]|MedicationDispense.receiver|MedicationDispense.receiver| 
|relatedRequest|MedicationDispense.authorizingPrescription|MedicationDispense.authorizingPrescription| 
|medication|MedicationDispense.medication|MedicationDispense.medication[x]| 
|dispensedQuantity|MedicationDispense.quantity|MedicationDispense.quantity| 
|timeOfDispensation|MedicationDispense.whenHandedOver|MedicationDispense.whenHandedOver| 
|substitutionOccurred|MedicationDispense.substitution.wasSubstituted|MedicationDispense.substitution.wasSubstituted| 
|dosageInstructions|MedicationDispense.dosageInstruction|MedicationDispense.dosageInstruction| 
|note|MedicationDispense.note|MedicationDispense.note| 
{:.table-bordered .table-striped .thead-light}
