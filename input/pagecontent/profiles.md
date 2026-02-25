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

#### Medication  
  
|**Logical model element**|**FHIR Path R5**|**FHIR Path R4**|**Comment**|  
|--|--|--|--|
|identifyingCode[x]|-|-|See mapping by data types|  
|identifyingCodeCodeableConcept|Medication.code|Medication.code||  
|identifyingCodeIdentifier|Medication.identifier|Medication.identifier||  
|classification|Medication.extension:classification|Medication.extension:classification||  
|productName|Medication.extension:productName|Medication.extension:productName||  
|marketingAuthorisationHolder|Medication.marketingAuthorizationHolder|Medication.manufacturer||  
|marketingAuthorisationHolder.organisationName|Organization.name|Organization.name||  
|marketingAuthorisationHolder.organisationIdentifier|Organization.identifier|Organization.identifier||  
|doseForm|Medication.doseForm|Medication.form|Dose form for the whole product (authorised dose form) - in case of combination packs, the authorised dose form may differ from individual item dose forms.|  
|description|Medication.extension:characteristic|Medication.extension:characteristic|Value of string data type|  
|item|Medication.ingredient.item.reference(Medication) or N/A|Medication.ingredient.itemReference(Medication) or N/A|EHDSMedication.item is the content of the package. If the medication  consists of one type of manufactured items, it is data about its ingredients and strength (no mapping for this element exactly). If a package contains multiple different manufactured items, each type of item is described by another Medication resource.|  
|item.doseForm|Medication.doseForm|Medication.form|Only relevant for combination packs where this element maps to the nested Medication's dose form.|  
|item.ingredient|Medication.ingredient|Medication.ingredient||  
|item.ingredient.isActive|Medication.ingredient.isActive|Medication.ingredient.isActive||  
|item.ingredient.substance|Medication.ingredient.item.concept|Medication.ingredient.itemCodeableConcept||  
|item.ingredient.strengthInfo|-|-|Backbone element|  
|item.ingredient.strengthInfo.strength|Medication.ingredient.strengthRatio|Medication.ingredient.strength||  
|item.ingredient.strengthInfo.basisOfStrengthSubstance|Medication.ingredient.strength[x].extension: basisOfStrengthSubstance|Medication.ingredient.strength.extension: basisOfStrengthSubstance||  
|item.unitOfPresentation|Medication.extension:unitOfPresentation|Medication.extension:unitOfPresentation||  
|item.containedQuantity|Medication.extension:sizeOfItem|Medication.extension:sizeOfItem||  
|item.amount|Medication.totalVolume|Medication.amount||  
|item.packageType|Medication.extension:packageType|Medication.extension:packageType||  
|device|Medication.extension:device|Medication.extension:device||  
|device.deviceQuantity|Medication.extension:device.extension:quantity|Medication.extension:device.extension:quantity||  
|device.device[x]|Medication.extension:device.extension:device|Medication.extension:device.extension:device|Only type of device (CodeableConcept) is expected. Reference not supported.|  
|characteristic|Medication.extension:characteristic|Medication.extension:characteristic||  
|characteristic.type|Medication.extension:characteristic.extension:type|Medication.extension:characteristic.extension:type||  
|characteristic.value[x]|Medication.extension:characteristic.extension:value|Medication.extension:characteristic.extension:value||  
|batch|Medication.batch|Medication.batch||  
|batch.lotNumber|Medication.batch.lotNumber|Medication.batch.lotNumber||  
|batch.expirationDate|Medication.batch.expirationDate|Medication.batch.expirationDate||  
{:.table-bordered .table-striped .thead-light}

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

