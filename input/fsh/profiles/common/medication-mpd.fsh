RuleSet: MedicationEpCommon
// * contained only MedicationKnowledge 
* ^purpose = "This profile constrains the Medication resource for the purpose of the eP/eD proof of concept."
* extension contains MedicationProductName named productName 0..* // productName
* extension[productName] ^short = "Name of the medicinal product. Names of different types (full name, short name, etc) and in different languages can be provided if relevant." 

* extension contains MedicationClassification named classification 0..* // classification
* extension[classification] ^short = "Classifications of the product, e.g ATC, narcotic/psychotropic, orphan drug, etc"

* extension contains MedicationSizeOfItem named sizeOfItem 0..1 // item.containedQuantity
* extension[sizeOfItem] ^short = "Size of one item (for example, in a pack of 5 vials, this would represent the size of 1 vial)"

* extension contains MedicationDevice named device 0..1 // device
* extension[device] ^short = "Device, typically an administration device, included in the product."

* identifier MS 
  * ^short = "Identifier for the medicinal product, its generic representation, or packaged product." //identifier
* code MS 
  * ^short = "A terminology-based code for the product" // productCode
* ingredient MS 
  * ^short = "Ingredient or a part product. For combination packs, each ingredient can be a separate manufactured item with its own ingredients, dose form, and strength" // item
  * isActive MS // item.ingredient.role



