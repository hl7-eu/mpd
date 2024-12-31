// -------------------------------------------------------------------------------					
//  Concept Model. File: 					medProd2FHIR-eu-mpd.fsh
// -------------------------------------------------------------------------------					
Instance: medProd2FHIR-eu-mpd					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "MedProd2Fhir"					
* title = "eHN Medicinal Product to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Medicinal Product Model to this guide Map"					
* purpose = "It shows how the Medicinal Product data set defined by the EU eHN guidelines is mapped into this guide"					
* sourceUri = Canonical(MedProductEhn)						
* targetUri = Canonical(MedicationEuMpd)					
					
* group[+].source = Canonical(EprescriptionEhn)					
* group[=].target = Canonical(MedicationEuMpd)					
					
* group[=].element[+].code = #MedicinalProduct.name					
* group[=].element[=].display = "A.1.4.1 Name of the medicinal product"					
* group[=].element[=].target.code = #Medication.extension[productName]					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #MedicinalProduct.name					
* group[=].element[=].display = "A.1.4.1 Name of the medicinal product"					
* group[=].element[=].target.code = #Medication.code.text					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto	
* group[=].element[+].code = #MedicinalProduct.name					
* group[=].element[=].display = "A.1.4.1 Name of the medicinal product"					
* group[=].element[=].target.code = #Medication.code.coding.display					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto	

* group[=].element[+].code = #MedicinalProduct.mpid					
* group[=].element[=].display = "A.1.4.2 Identifier of the medicinal product"					
* group[=].element[=].target.code = #Medication.identifier		
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					

* group[=].element[+].code = #MedicinalProduct.phpid					
* group[=].element[=].display = "A.1.4.2.1 Identifier(s) of the pharmaceutical product"					
* group[=].element[=].target.code = #Medication.extension[classification]
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto	

* group[=].element[+].code = #MedicinalProduct.phpid					
* group[=].element[=].display = "A.1.4.2.1 Identifier(s) of the pharmaceutical product"					
* group[=].element[=].target.code = #Medication.code.coding
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto	

* group[=].element[+].code = #MedicinalProduct.pcid					
* group[=].element[=].display = "A.1.4.2.2 Identifier(s) of the packaged medicinal product"					
* group[=].element[=].target.code = #Medication.identifier
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #MedicinalProduct.marketingAuthHolder					
* group[=].element[=].display = "A.1.4.3 Marketing authorisation holder"					
* group[=].element[=].target.code = #Medication.manufacturer					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #MedicinalProduct.activeSubstance					
* group[=].element[=].display = "A.1.4.4 Active substance(s)"					
* group[=].element[=].target.code = #Medication.ingredient.item					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Where isActive = true."

* group[=].element[+].code = #MedicinalProduct.strength					
* group[=].element[=].display = "A.1.4.4.1 Strength of the active substance(s)"					
* group[=].element[=].target.code = #Medication.ingredient.strength					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = """When the basis of strength substance is different from Medication.ingredient, then the basis of strength subspatnce is provided using an extension."""

* group[=].element[+].code = #MedicinalProduct.classification					
* group[=].element[=].display = "A.1.4.5 Product classification"					
* group[=].element[=].target.code = #Medication.extension[classification]
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					

// since there is a classification extension, this use is deprecated?
// * group[=].element[+].code = #MedicinalProduct.classification					
// * group[=].element[=].display = "A.1.4.5 Product classification "					
// * group[=].element[=].target.code = #Medication.code.coding					
// * group[=].element[=].target.display = ""					
// * group[=].element[=].target.equivalence = #equivalent					
// * group[=].element[=].target.comment = "How it is implemented now in the IPS"

* group[=].element[+].code = #MedicinalProduct.doseForm					
* group[=].element[=].display = "A.1.4.6 Pharmaceutical dose form(s)"					
* group[=].element[=].target.code = #Medication.form					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					

* group[=].element[+].code = #MedicinalProduct.unitOfPresentation					
* group[=].element[=].display = "A.1.4.7 Unit of presentation(s)"					
* group[=].element[=].target.code = #Medication.extension[unitOfPresentation]					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #MedicinalProduct.unitOfPresentation					
* group[=].element[=].display = "A.1.4.7 Unit of presentation(s)"					
* group[=].element[=].target.code = #Medication.ingredient.strength.denominator.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "if it is the presentation strength"

// * group[=].element[+].code = #MedicinalProduct.packageType					
// * group[=].element[=].display = "A.1.4.8 Package type"					
// * group[=].element[=].target.code = #Medication.contained.packaging.type					
// * group[=].element[=].target.display = ""					
// * group[=].element[=].target.equivalence = #relatedto					
// * group[=].element[=].target.comment = "if contained. TODO"	

// * group[=].element[+].code = #MedicinalProduct.PackageSize					
// * group[=].element[=].display = "A.1.4.9 Pack size"					
// * group[=].element[=].target.code = #Medication.contained.packaging.quantity					
// * group[=].element[=].target.display = ""					
// * group[=].element[=].target.equivalence = #relatedto					
// * group[=].element[=].target.comment = "if contained. TODO"	
				
* group[=].element[+].code = #MedicinalProduct.packageType					
* group[=].element[=].display = "A.1.4.8 Package type"					
* group[=].element[=].target.code = #Medication.extension[packageType]					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					

* group[=].element[+].code = #MedicinalProduct.packageSize					
* group[=].element[=].display = "A.1.4.9 Pack size"					
* group[=].element[=].target.code = #Medication.amount					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "See also. Medication.extension[sizeOfItem]"					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
