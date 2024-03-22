// -------------------------------------------------------------------------------					
//  Concept Model. File: 					eP2FHIR-eu-mpd.fsh
// -------------------------------------------------------------------------------					
Instance: eP2FHIR-eu-mpd					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "eP2Fhir"					
* title = "eHN Subject to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN ePrescription Model to this guide Map"					
* purpose = "It shows how the ePrescription data set defined by the EU eHN guidelines is mapped into this guide"					

/* // R4 <== 
* sourceUri = Canonical(EprescriptionEhn)
* targetUri = Canonical(MedicationRequestEuMpd)
 */
* sourceScopeUri = Canonical(EprescriptionEhn)
* targetScopeUri = Canonical(MedicationRequestEuMpd)
					
/* // R4 <== 
* group[+].source = Canonical(EprescriptionEhn)					
* group[=].target = Canonical(MedicationRequestEuMpd)	 
*/				
* group[+]				
* group[=].element[+].code = #Prescription.patient					
* group[=].element[=].display = "A.1.1 Patient administrative data"					
* group[=].element[=].target.code = #MedicationRequest.subject					
* group[=].element[=].target.display = ""					
// R4 <==  * group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.relationship = #equivalent		

* group[=].element[+].code = #Prescription.authentication					
* group[=].element[=].display = "A.1.2 Authentication of the prescription"					
* group[=].element[=].target.code = #MedicationRequest					
* group[=].element[=].target.display = ""					
// R4 <== * group[=].element[=].target.relationship = #related-to
* group[=].element[=].target.relationship = #related-to				
					
* group[=].element[+].code = #Prescription.authentication.identifier					
* group[=].element[=].display = "A.1.2.1 Identifier of the Prescription"					
* group[=].element[=].target.code = #MedicationRequest.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
* group[=].element[=].target.comment = "if a prescription includes only one prescribed item"					
* group[=].element[+].code = #Prescription.authentication.identifier					
* group[=].element[=].display = "A.1.2.1 Identifier of the Prescription"					
* group[=].element[=].target.code = #MedicationRequest.groupIdentifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
* group[=].element[=].target.comment = "if a prescription includes more then one prescribed item"					
* group[=].element[+].code = #Prescription.authentication.date					
* group[=].element[=].display = "A.1.2.2 Issue date"					
* group[=].element[=].target.code = #MedicationRequest.authoredOn					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
					
* group[=].element[+].code = #Prescription.prescriber					
* group[=].element[=].display = "A.1.3 Identification of the prescribing health professional"					
* group[=].element[=].target.code = #MedicationRequest.requester					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
					
* group[=].element[+].code = #Prescription.prescriber.familyName					
* group[=].element[=].display = "A.1.3.1 Familyname"					
* group[=].element[=].target.code = #MedicationRequest.requester					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #related-to					
* group[=].element[=].target.comment = "Details in the referred Practitioner resource"					
* group[=].element[+].code = #Prescription.prescriber.givenName					
* group[=].element[=].display = "A.1.3.2 Given name"					
* group[=].element[=].target.code = #MedicationRequest.requester					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #related-to					
* group[=].element[=].target.comment = "Details in the referred Practitioner resource"					
* group[=].element[+].code = #Prescription.prescriber.qualification					
* group[=].element[=].display = "A.1.3.3 Professional qualifications"					
* group[=].element[=].target.code = #MedicationRequest.requester					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #related-to					
* group[=].element[=].target.comment = "Details in the referred Practitioner resource"					
* group[=].element[+].code = #Prescription.prescriber.contact					
* group[=].element[=].display = "A.1.3.4 Details for direct contact"					
* group[=].element[=].target.code = #MedicationRequest.requester					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #related-to					
* group[=].element[=].target.comment = "Details in the referred Practitioner resource"					
* group[=].element[+].code = #Prescription.prescriber.workAddress					
* group[=].element[=].display = "A.1.3.5 Work address"					
* group[=].element[=].target.code = #MedicationRequest.requester					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #related-to					
* group[=].element[=].target.comment = "Details in the referred Practitioner resource"					
* group[=].element[+].code = #Prescription.prescriber.signature					
* group[=].element[=].display = "A.1.3.6 Signature"					
* group[=].element[=].target.code = #MedicationRequest.requester					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #related-to					
* group[=].element[=].target.comment = "Not implemented in the current eP / eD service"					
* group[=].element[+].code = #Prescription.prescriber.identifier					
* group[=].element[=].display = "A.1.3.7  Health care provider identifier"					
* group[=].element[=].target.code = #MedicationRequest.requester					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #related-to					
* group[=].element[=].target.comment = "Details in the referred Practitioner resource"					
* group[=].element[+].code = #Prescription.product					
* group[=].element[=].display = "A1.4 Identification of the prescribed product"					
* group[=].element[=].target.code = #MedicationRequest.medicationReference					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
					
* group[=].element[+].code = #Prescription.details					
* group[=].element[=].display = "A.1.5 Prescription information"					
* group[=].element[=].target.code = #MedicationRequest					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #related-to					
					
* group[=].element[+].code = #Prescription.details.quantity					
* group[=].element[=].display = "A.1.5.2 Quantity of prescribed product"					
* group[=].element[=].target.code = #MedicationRequest.dispenseRequest.quantity					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #related-to					
					
* group[=].element[+].code = #Prescription.details.doseRegimen					
* group[=].element[=].display = "A.1.5.3 Dose regimen"					
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
					
* group[=].element[+].code = #Prescription.details.doseRegimen.numOfIntakes					
* group[=].element[=].display = "A.1.5.3.1 Number of units per intake"					
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.doseAndRate.doseQuantity					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
					
* group[=].element[+].code = #Prescription.details.doseRegimen.frequencyOfIntakes					
* group[=].element[=].display = "A.1.5.3.2 Frequency of intakes"					
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.timing					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #related-to					
* group[=].element[=].target.comment = "A combination of frequency, period and periodUnit.
'3 times per day', 3 would be the frequency and '1 day' would be the period/periodUnit."					
* group[=].element[+].code = #Prescription.details.route					
* group[=].element[=].display = "A.1.5.4 Route of administration"					
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.route					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
					
* group[=].element[+].code = #Prescription.details.duration					
* group[=].element[=].display = "A.1.5.5 Duration of treatment"					
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.timing.repeat.duration					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
					
* group[=].element[+].code = #Prescription.details.startDate					
* group[=].element[=].display = "A.1.5.6 Starting date of therapy "					
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.timing.duration					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #related-to					
					
* group[=].element[+].code = #Prescription.details.directionsOfUse					
* group[=].element[=].display = "A.1.5.7 Directions for use"					
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #related-to					
					
* group[=].element[+].code = #Prescription.details.expiryDate					
* group[=].element[=].display = "A.1.5.8 Prescription expiry date"					
* group[=].element[=].target.code = #MedicationRequest.dispenseRequest.validityPeriod					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
					
* group[=].element[+].code = #Prescription.details.repeats					
* group[=].element[=].display = "A.1.5.9 Repeats"					
* group[=].element[=].target.code = #MedicationRequest					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #related-to					
* group[=].element[=].target.comment = "TO BE DISCUSSED"					
* group[=].element[+].code = #Prescription.details.reason					
* group[=].element[=].display = "A.1.5.10 Reason for prescription"					
* group[=].element[=].target.code = #MedicationRequest.reasonReference					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #related-to					
					
* group[=].element[+].code = #Prescription.details.reason					
* group[=].element[=].display = "A.1.5.10 Reason for prescription"					
* group[=].element[=].target.code = #MedicationRequest.reasonCode					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
					
* group[=].element[+].code = #Prescription.details.substitution					
* group[=].element[=].display = "A.1.5.11 Substitution"					
* group[=].element[=].target.code = #MedicationRequest.substitution.allowedCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
					
					
* group[+].source = "http://hl7.eu/fhir/ig/xpandh-mpd/StructureDefinition/Prescription"					
* group[=].target = "http://hl7.eu/fhir/ig/xpandh-mpd/StructureDefinition/Practitioner-eu-mpd"					
					
* group[=].element[+].code = #Prescription.prescriber.familyName					
* group[=].element[=].display = "A.1.3.1 Familyname"					
* group[=].element[=].target.code = #Practitioner.name.given					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
					
* group[=].element[+].code = #Prescription.prescriber.givenName					
* group[=].element[=].display = "A.1.3.2 Given name"					
* group[=].element[=].target.code = #Practitioner.name.family					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
					
* group[=].element[+].code = #Prescription.prescriber.qualification					
* group[=].element[=].display = "A.1.3.3 Professional qualifications"					
* group[=].element[=].target.code = #Practitioner.qualification					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
					
* group[=].element[+].code = #Prescription.prescriber.contact					
* group[=].element[=].display = "A.1.3.4 Details for direct contact"					
* group[=].element[=].target.code = #Practitioner.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
					
* group[=].element[+].code = #Prescription.prescriber.workAddress					
* group[=].element[=].display = "A.1.3.5 Work address"					
* group[=].element[=].target.code = #Practitioner.address					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
* group[=].element[=].target.comment = "where use = 'work'"					
* group[=].element[+].code = #Prescription.prescriber.identifier					
* group[=].element[=].display = "A.1.3.7  Health care provider identifier"					
* group[=].element[=].target.code = #Practitioner.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #related-to					
					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
					
