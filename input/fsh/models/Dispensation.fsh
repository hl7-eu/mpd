// -------------------------------------------------------------------------------				
//  Logical Model				Dispensation.fsh
// -------------------------------------------------------------------------------				
Logical: EdispensationEhn				
Id: Dispensation				
Title: "B.1 Dispensation information (provided by the dispensing pharmacy)"				
Description:  """Dispensation information (provided by the dispensing pharmacy). Section B1 of the guidelines"""				
* dispenserIdentifier 0..* Identifier "B.1.1 Identifier of the dispenser" """A unique number or code issued for the purpose of identifying a dispenser [ISO/TS 27527:2010]; this may be a licence or registration number which can be used to trace the dispenser and to check whether a medicinal product was dispensed by the right person according to the law of the dispensing country."""				
* dispenserFamilyName 0..* string "B.1.2 Family name of the dispenser" """The family name/surname/last name of the dispenser. This enables the dispenser to be traced in the event of questions or emergencies."""				
* dispenserGivenName 0..* string "B.1.3 Given name of the dispenser" """The given name/first name of the dispenser. This enables the dispenser to be traced in the event of questions or emergencies."""		 		
* pharmacyIdentifier 0..* dateTime "B.1.4 Identifier of the pharmacy" """A unique number or code issued for the purpose of identifying a pharmacy [ISO/TS 27527:2010]; this may be a licence or registration number which can be used to trace the dispensing pharmacy."""				
* pharmacyAddress 0..1 Address "B.1.5 Address of the pharmacy" """Minimally, the country should be specified."""				
* contactDetails 0..* ContactPoint "B.1.6 Details of direct contact" """Details of direct contact could be an email address and/or phone/fax number of the dispensing pharmacy."""				
* prescriptionIdentifier 0..* Identifier "B.1.7 Identifier of the prescription" """ As described in A.1.2."""				
* medicinalProduct 0..* BackboneElement "B.1.8 Medicinal product" """Information about the dispensed product as described in A.1.4.
The cardinality of the data elements in the product description may differ between ePrescription and eDispensation."""				
* dispensedQuantity 0..* Quantity "B.1.9 Dispensed quantity" """The package size should be clear from the medicinal product data and the overall amount should be automatically calculable. The dispensed quantity may differ from the prescribed quantity.
 - Preferred system(s): UCUM, EDQM"""				
* dispensationDate 0..* dateTime "B.1.10 Dispensation date" """The date and optionally the time of dispensation.
 - Preferred system(s): ISO 8601"""				
* substitution 0..* CodeableConcept "B.1.11 Substitution" """Information whether and why the substitution took place"""				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
