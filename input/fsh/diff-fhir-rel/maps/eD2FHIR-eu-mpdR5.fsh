// -------------------------------------------------------------------------------					
//  Concept Model. File: 					eD2FHIR-eu-mpd.fsh
// -------------------------------------------------------------------------------					
Instance: eD2FHIR-eu-mpd					
InstanceOf: ConceptMap					
Usage: #definition					
					
* name = "eD2Fhir"					
* title = "eHN eDispense to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN eDispensation Model to this guide Map"					
* purpose = "It shows how the eDispensation data set defined by the EU eHN guidelines is mapped into this guide"					
* sourceScopeUri = Canonical(EdispensationEhn)
* targetScopeUri = Canonical(MedicationDispenseEuMpd)
					
//* group[+].source = Canonical(EdispensationEhn)
//* group[=].target = Canonical(MedicationDispenseEuMpd)	
* group[+]		
* group[=].element[+].code = #Dispensation.dispenserIdentifier					
* group[=].element[=].display = "B.1.1 Identifier of the dispenser"					
* group[=].element[=].target.code = #MedicationDispense.performer.actor					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent
* group[=].element[=].target.comment = "Details in the referred Practitioner or PractitionerRole resource"					
					
* group[=].element[+].code = #Dispensation.dispenserFamilyName					
* group[=].element[=].display = "B.1.2 Family name of the dispenser"					
* group[=].element[=].target.code = #MedicationDispense.performer.actor					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #related-to					
* group[=].element[=].target.comment = "Details in the referred Practitioner or PractitionerRole resource"					

* group[=].element[+].code = #Dispensation.dispenserGivenName					
* group[=].element[=].display = "B.1.3 Given name of the dispenser"					
* group[=].element[=].target.code = #MedicationDispense.performer.actor.practitioner.name.given					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
* group[=].element[=].target.comment = "Details in the referred Practitioner or PractitionerRole resource"					

* group[=].element[+].code = #Dispensation.pharmacyIdentifier					
* group[=].element[=].display = "B.1.4 Identifier of the pharmacy"					
* group[=].element[=].target.code = #MedicationDispense.performer.actor					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #related-to					
* group[=].element[=].target.comment = "When actor is of type PractitionerRole."					
* group[=].element[+].code = #Dispensation.pharmacyIdentifier					
* group[=].element[=].display = "B.1.4 Identifier of the pharmacy"					
* group[=].element[=].target.code = #MedicationDispense.performer.actor					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #related-to					
* group[=].element[=].target.comment = "When actor is of type Organization."	
* group[=].element[+].code = #Dispensation.pharmacyIdentifier					
* group[=].element[=].display = "B.1.4 Identifier of the pharmacy"					
* group[=].element[=].target.code = #MedicationDispense.location.identifier
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #related-to					
* group[=].element[=].target.comment = "When Location is used to identify the pharmacy."	

* group[=].element[+].code = #Dispensation.pharmacyAddress					
* group[=].element[=].display = "B.1.5 Address of the pharmacy"					
* group[=].element[=].target.code = #MedicationDispense.performer.actor.address					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #related-to					
* group[=].element[=].target.comment = "When actor is of type Organization."	
* group[=].element[+].code = #Dispensation.pharmacyAddress					
* group[=].element[=].display = "B.1.5 Address of the pharmacy"					
* group[=].element[=].target.code = #MedicationDispense.location.address				
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #related-to					
* group[=].element[=].target.comment = "When Location is used to identify the pharmacy."	

* group[=].element[+].code = #Dispensation.contactDetails					
* group[=].element[=].display = "B.1.6 Details of direct contact"					
* group[=].element[=].target.code = #MedicationDispense.performer.actor.contact					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #related-to					
* group[=].element[=].target.comment = "When actor is of type Organization."
* group[=].element[+].code = #Dispensation.contactDetails					
* group[=].element[=].display = "B.1.6 Details of direct contact"					
* group[=].element[=].target.code = #MedicationDispense.location.telecom	
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #related-to					
* group[=].element[=].target.comment = "When Location is used to identify the pharmacy."	

* group[=].element[+].code = #Dispensation.prescriptionIdentifier					
* group[=].element[=].display = "B.1.7 Identifier of the prescription"					
* group[=].element[=].target.code = #MedicationDispense.authorizingPrescription.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					

* group[=].element[+].code = #Dispensation.medicinalProduct					
* group[=].element[=].display = "B.1.8 Medicinal product"					
* group[=].element[=].target.code = #MedicationDispense.medication					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #related-to					
					
* group[=].element[+].code = #Dispensation.dispensedQuantity					
* group[=].element[=].display = "B.1.9 Dispensed quantity"					
* group[=].element[=].target.code = #MedicationDispense.quantity					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
					
* group[=].element[+].code = #Dispensation.dispensationDate					
* group[=].element[=].display = "B.1.10 Dispensation date"					
* group[=].element[=].target.code = #MedicationDispense.whenHandedOver					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #equivalent					
					
* group[=].element[+].code = #Dispensation.substitution					
* group[=].element[=].display = "B.1.11 Substitution"					
* group[=].element[=].target.code = #MedicationDispense.substitution					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.relationship = #related-to					
					
//---END					
				
