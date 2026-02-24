
Profile: MedicationEuMpd
Parent: Medication
Id: Medication-eu-mpd
Title: "Medication: MPD"
Description: "This profile defines how to represent Medication data on ePrescription and eDispensation"

* extension contains $ihe-ext-medication-productname named productName 0..1
* extension[productName] ^short = "Current trade name (authorised name) of the medicinal product." 
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* extension contains $ihe-ext-medication-classification named classification 0..*
* extension[classification] ^short = "Classifications of the product, e.g ATC, narcotic/psychotropic, orphan drug, etc"

* extension contains $ihe-ext-medication-sizeofitem named sizeOfItem 0..1
* extension[sizeOfItem] ^short = "Size of one item (for example, in a pack of 5 vials, this would represent the size of 1 vial)"

* extension contains $ihe-ext-medication-characteristic named characteristic 0..*
* extension[characteristic] ^short = "Specifies other descriptive properties of the medication."

* extension contains $ihe-ext-medication-unitofpresentation named unitOfPresentation 0..1
* extension[unitOfPresentation] ^short = "Unit of presentation of the product (e.g. tablet, vial, ampoule, etc)"

* extension contains MedicationPackageType named packageType 0..1
* extension[packageType] ^short = "Type of container. This information is more relevant in cases when the packaging has an impact on administration of the product (e.g. pre-filled syringe)"

* identifier
  * ^short = "Identifier for the medicinal product, its generic representation, or packaged product (e.g. EMA PMS ID on product or package level)" //identifier
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
* code 
  * ^short = "A terminology-based code for the product (e.g. SNOMED CT code)"
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
* ingredient
  * ^short = "Ingredient or a part product. For combination packs, each ingredient can be a separate manufactured item with its own ingredients, dose form, and strength" // item
  * isActive





* extension contains $ihe-ext-medication-device named device 0..*
* extension[device] ^short = "Device, typically an administration device, included in the product."
* extension[device].extension[device].valueCodeableConcept from $eHDSIPackage (example)

* ingredient
  * item[x]
    * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * itemReference only Reference (MedicationEuMpd)
  * itemCodeableConcept from $substanceIPS (example)
    * ^binding.extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
    * ^binding.extension[=].extension[0].url = "purpose"
    * ^binding.extension[=].extension[=].valueCode = #candidate
    * ^binding.extension[=].extension[+].url = "valueSet"
    * ^binding.extension[=].extension[=].valueCanonical = $eHDSISubstance
    * ^binding.extension[=].extension[+].url = "documentation"
    * ^binding.extension[=].extension[=].valueMarkdown = "MyHealth@EU crossborder value set for substances. Based on EMA SPOR SMS."
    * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * strength ^short = "Amount of substance in product (presentation or concentration strength)"
  * strength ^definition = """Definitional resources should be used for specifying the different types of strengths: presentation; concentration."""
  * strength // item.ingredient.strengthInfo (does not map exactly)
    * extension contains $ihe-ext-medication-strengthsubstance named basisOfStrengthSubstance 0..1 
    * extension[basisOfStrengthSubstance] ^short = "Substance for which the strength is provided (this could be different from the precise active ingredient)."
    * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* form from $eHDSIDoseForm (example) 
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
