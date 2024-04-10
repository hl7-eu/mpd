//These extensions and profiles are shared between IHE-MEOW and IHE-MPD profiles

Extension: Classification
Description: "Medication classification/category. Allows the product to be classified by various systems, e.g ATC, narcotic class, legal status of supply, etc."
* value[x] only CodeableConcept

Extension: MedicinalProductName
Description: "Name of the medicinal product. Optionally the type of name (Full official name, prescribing name, invented name) and language of the name can be specified. The extension is a simplified approach of what is used in MedicinalProductDefinition resource."
* extension contains
    name 1..1 and
    nameType 0..1 and
    language 0..1
* extension[name].value[x] only string
* extension[name] ^short = "Product name"
* extension[nameType].value[x] only CodeableConcept
* extension[nameType] ^short = "Type of product name (full name, common name, prescription name, etc)"
* extension[language].value[x] only CodeableConcept
* extension[language].valueCodeableConcept from AllLanguages
* extension[language] ^short = "Language code of this name. A code with a combination of country and name can be used."

Extension: SizeOfMedicationItem
Description: "Size of a manufactured item or unit of presentation. For example, size of one vial in a package that may contain several vials."
* value[x] only Quantity
// Extension for pack size or is the combination of SizeOfMedicationItem and totalAmount sufficient?

Extension: MedicinalProductDevice
Description: "Device, typically an administration device, included in the medicinal product."
* extension contains
    device 1..1 and
    quantity 1..1
// * extension[device].value[x] only CodeableReference(Device or DeviceDefinition)
* extension[device].value[x] only Reference(Device or DeviceDefinition) or CodeableConcept
* extension[device] ^short = "Coded or referenced device"
* extension[quantity].value[x] only Quantity
* extension[quantity] ^short = "Number of defined devices in te package"


Extension: MedicationClassification
Id:        ihe-ext-medication-classification
Title:     "Medication Classification"
Description: "Classification."
* ^context[+].type = #element
* ^context[=].expression = "Medication"
* value[x] only CodeableConcept  // 0 or more


Extension: MedicationPackSize
Id:        ihe-ext-medication-packsize
Title:     "Medication Package Size"
Description: "Package size of a product."
* ^context[+].type = #element
* ^context[=].expression = "Medication"
* value[x] only unsignedInt  // 0 or more


Extension: MedicationProductName
Id:        ihe-ext-medication-productname
Title:     "Medication Package Size"
Description: "Classification."
* ^context[+].type = #element
* ^context[=].expression = "Medication"
* value[x] only string  // 0 or more


Extension: MedicationRequestTotalAmount
Id:        ihe-ext-medicationrequest-totalamount
Title:     "MedicationRequest - Total Amount"
Description: "Total amount of product being requested."
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"
* value[x] only unsignedInt  // 0 or more


