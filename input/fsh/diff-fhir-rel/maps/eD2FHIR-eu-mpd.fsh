// -------------------------------------------------------------------------------					
//  Concept Model. File: 					eD2FHIR-eu-mpd.fsh
// -------------------------------------------------------------------------------					
Instance: eD2FHIR-eu-mpd					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "eD2Fhir"					
* title = "eHN eDispense to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN eDispensation Model to this guide Map"					
* purpose = "It shows how the eDispensation data set defined by the EU eHN guidelines is mapped into this guide"					
* sourceUri = Canonical (EdispensationEhn)
* targetUri = Canonical (MedicationDispenseEuMpd)
					
* group[+].source = Canonical (EdispensationEhn)
* group[=].target = Canonical(MedicationDispenseEuMpd)
					
* group[=].element[+].code = #Dispensation.dispenserIdentifier					
* group[=].element[=].display = "B.1.1 Identifier of the dispenser"					
* group[=].element[=].target.code = #MedicationDispense.performer.actor					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Details in the referred Practitioner or PractitionerRole  resource"					
					
* group[=].element[+].code = #Dispensation.dispenserFamilyName					
* group[=].element[=].display = "B.1.2 Family name of the dispenser"					
* group[=].element[=].target.code = #MedicationDispense.performer.actor					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Details in the referred Practitioner or PractitionerRole  resource"					

* group[=].element[+].code = #Dispensation.dispenserGivenName					
* group[=].element[=].display = "B.1.3 Given name of the dispenser"					
* group[=].element[=].target.code = #MedicationDispense.performer.actor.practitioner.name.given					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Details in the referred Practitioner or PractitionerRole  resource"					

* group[=].element[+].code = #Dispensation.pharmacyIdentifier					
* group[=].element[=].display = "B.1.4 Identifier of the pharmacy"					
* group[=].element[=].target.code = #MedicationDispense.performer.actor					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if actor of type PractitionerRole (to be checked this assume that the pharamcy  is the org the dispenser is working for?)"					
* group[=].element[+].code = #Dispensation.pharmacyIdentifier					
* group[=].element[=].display = "B.1.4 Identifier of the pharmacy"					
* group[=].element[=].target.code = #MedicationDispense.performer.actor					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if actor of type Organziation (to be checked this assumes that the pharamcy  is the org dispensing)"	
* group[=].element[+].code = #Dispensation.pharmacyIdentifier					
* group[=].element[=].display = "B.1.4 Identifier of the pharmacy"					
* group[=].element[=].target.code = #MedicationDispense.location.identifier
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if location is used to identify the pharmacy"	

* group[=].element[+].code = #Dispensation.pharmacyAddress					
* group[=].element[=].display = "B.1.5 Address of the pharmacy"					
* group[=].element[=].target.code = #MedicationDispense.performer.actor.address					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if actor of type Organziation (to be checked this assumes that the pharamcy  is the org dispensing)"	
* group[=].element[+].code = #Dispensation.pharmacyAddress					
* group[=].element[=].display = "B.1.5 Address of the pharmacy"					
* group[=].element[=].target.code = #MedicationDispense.location.address				
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if location is used to identify the pharmacy"	

// TODO: wrong mapping, in eHN it is the contact of the pharmacy
* group[=].element[+].code = #Dispensation.contactDetails					
* group[=].element[=].display = "B.1.6 Details of direct contact"					
* group[=].element[=].target.code = #MedicationDispense.performer.actor.contact					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if performer.actor is an organization"
* group[=].element[+].code = #Dispensation.contactDetails					
* group[=].element[=].display = "B.1.6 Details of direct contact"					
* group[=].element[=].target.code = #MedicationDispense.location.telecom	
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if location is used to identify the pharmacy"	

// TODO: check when multi-line prescription
* group[=].element[+].code = #Dispensation.prescriptionIdentifier					
* group[=].element[=].display = "B.1.7 Identifier of the prescription"					
* group[=].element[=].target.code = #MedicationDispense.authorizingPrescription.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "TO BE CHECKED is this true for multi-items prescriptions ?"	

* group[=].element[+].code = #Dispensation.medicinalProduct					
* group[=].element[=].display = "B.1.8 Medicinal product"					
* group[=].element[=].target.code = #MedicationDispense.medication					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Dispensation.dispensedQuantity					
* group[=].element[=].display = "B.1.9 Dispensed quantity"					
* group[=].element[=].target.code = #MedicationDispense.quantity					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Dispensation.dispensationDate					
* group[=].element[=].display = "B.1.10 Dispensation date"					
* group[=].element[=].target.code = #MedicationDispense.whenHandedOver					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Dispensation.substitution					
* group[=].element[=].display = "B.1.11 Substitution"					
* group[=].element[=].target.code = #MedicationDispense.substitution					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
