// -------------------------------------------------------------------------------				
//  Logical Model				MedicinalProduct.fsh
// -------------------------------------------------------------------------------				
Logical: MedProductEhn				
Id: MedicinalProduct				
Title: "A1.4 Identification of the prescribed product"				
Description:  """Identification of the prescribed product. Section A1.4 of the eHN guideline"""				
* name 0..* string "A.1.4.1 Name of the medicinal product" """Brand name of the authorised medicinal product.
It has to be noted, that according to Implementing Directive 2012/52/EU additional requirements may apply.
[not applicable for generic prescriptions]"""				
* mpid 0..* Identifier "A.1.4.2 Identifier of the medicinal product" """Identifier of a medicinal product refers to the product inside the package, not the packaged item as such. It could be MPID according to ISO 11615, EMA PMS ID and/or a national identifier.
[not applicable for generic prescriptions]"""							
* phpid 0..* Identifier "A.1.4.2.1 Identifier(s) of the pharmaceutical product" """Identifier of a pharmaceutical product refers to unique PhPID according to ISO 11616. This could be a part of a description of a specific medicinal product or an attribute of a generic prescription.
[not applicable for generic prescriptions]"""		 						
* pcid 0..* Identifier "A.1.4.2.2 Identifier(s) of the packaged medicinal product" """Identifier of a packaged medicinal product refers to a specific pack size of a specific product. It could be PCID according to ISO 11615 and/or its national equivalent.
[not applicable for generic prescriptions]"""							
* marketingAuthHolder 0..1 Organization "A.1.4.3 Marketing authorisation holder" """Organisation that holds the marketing authorisation of the prescribed product.
[not applicable for generic prescriptions]"""				
* activeSubstance 0..* CodeableConcept "A.1.4.4 Active substance(s)" """All active substances according to ISO 11238. Referred to by ""common name"" in implementing directive 2012/52/EU."""				
  * ^binding.description = "EMA SMS"
  * ^binding.strength = #preferred					
* strength 0..* Ratio "A.1.4.4.1 Strength of the active substance(s)" """Presentation and/or concentration strength of the active substances. In addition, reference strength could be provided (Article 1 of Directive 2001/83/EC). Preferred codesystem UCUM and EDQM."""								
* classification 0..* CodeableConcept "A.1.4.5 Product classification" """WHO ATC code of the product"""				
  * ^binding.description = "ATC"
  * ^binding.strength = #preferred					
* doseForm 0..* CodeableConcept "A.1.4.6 Pharmaceutical dose form(s)" """Dose form of a product could be either authorised dose form (includes EDQM combination pack dose forms), administrable dose form or manufactured item dose form. It must be made clear which type of dose forms are provided. For example, for the same product several different dose forms can be provided: ?powder and solvent for solution for injection? as authorised dose form, ?solution for injection? as administrable dose form, and ?powder? and ?solvent? as the dose forms for the manufactured items in the inner packaging.
Referred to by ""pharmaceutical formulation"" in implementing directive 2012/52/EU."""
  * ^binding.description = "EDQM"
  * ^binding.strength = #preferred					
* unitOfPresentation 0..* CodeableConcept "A.1.4.7 Unit of presentation(s)" """Unit of presentation is used as a unit when describing the strength, but according to ISO IDMP it is also a separate attribute of the pharmaceutical product and manufactured item."""				
  * ^binding.description = "EDQM"
  * ^binding.strength = #preferred					
* packageType 0..* CodeableConcept "A.1.4.8 Package type" """Type of the container, Examples: bottle, blister, box"""				
  * ^binding.description = "EDQM"
  * ^binding.strength = #preferred					
* packageSize 0..* Quantity "A.1.4.9 Pack size" """Typically, the pack size is the number of unit of presentations in the package. 
It could also be presented using units of measurement (ml, g). In some cases, there is a need to refine the package size that it describes the amounts of different manufactured items in more than one inner packages. However, the overall amount of a prescribed product must be calculable from the pack size description.
 - Preferred system(s): UCUM; EDQM"""
  * ^binding.description = "UCUM, EDQM"
  * ^binding.strength = #preferred					
//--- END				
	
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
