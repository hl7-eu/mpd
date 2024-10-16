
Profile: MedicationEuMpd
// Parent: $Medication-uv-ips
Parent: Medication
Id: Medication-eu-mpd
Title: "Medication: MPD"
Description: "This profile defines how to represent Medication data on ePrescription and eDispensation"


* insert MedicationEpCommon
* totalVolume MS // item.amount; packSize
  * ^short = "Total volume or number of package items inside a package. This element should not contain overall prescribed amount, but describe the product itself. In case of complex packages, this element could be left empty, and number of different items could be indicated in the nested Medications." //packSize (almost)
* ingredient
//  * item from $eHDSISubstance (example)
  * item only CodeableReference (Substance or MedicationEuMpd)
    * ^short = "Substance (Substance resource or concept from terminology) or a medicinal product (Medication resource or concept from terminology). Medicinal product can be an ingredient in case of extemporal medications or combination packs (e.g Creme + 6 tablets)" 
  * strength[x] ^short = "Amount of substance in product (presentation or concentration strength)"
  * strength[x] ^definition = """Definitional resources should be used for specifying the different types of strengths: presentation; concentration."""
  * strength[x] MS // item.ingredient.strengthInfo (does not map exactly)
    * extension contains MedicationStrengthSubstance named strengthSubstance 0..1 
    * extension[strengthSubstance] ^short = "Substance for which the strength is provided (this could be different from the precise active ingredient)."
    * extension contains MedicationStrengthType named strengthType 0..1
    * extension[strengthType] ^short = "Type of the given strength (concentration strength, presentation strength, or other)"
* doseForm MS // doseForm; item.doseForm
  * ^short = "Dose form. For a branded product, this would most likely be authorised dose form, but it could also be administrable dose form. For package items, it could be item's individual dose form." // doseForm
* marketingAuthorizationHolder MS

Extension: MedicationDevice
Id:        ihe-ext-medication-device
Title:     "Medication - Device"
Description: "Device, typically an administration device, included in the medicinal product."
Context: Medication
* extension contains
    device 1..1 and
    quantity 1..1
* extension[device].value[x] only CodeableReference(Device or DeviceDefinition)
* extension[device] ^short = "Coded or referenced device"
* extension[quantity].value[x] only Quantity
* extension[quantity] ^short = "Number of defined devices in te package"

Extension: MedicationStrengthSubstance
Id: ihe-ext-medication-strengthsubstance
Title: "Medication - Strength substance"
Description: "Substance for marking the basis of strength. When the precise active ingredient is a salt, the strength is often provided for the active moiety (basis of strength)."
Context: Medication.ingredient.strength[x]
* value[x] only CodeableConcept
* valueCodeableConcept 1..1


Extension: MedicationStrengthType
Id: ihe-ext-medication-strengthtype
Title: "Medication - Strength type"
Description: "Strength type (e.g. concentration strength, presentation strength)"
Context: Medication.ingredient.strength[x]
* value[x] only CodeableConcept
* valueCodeableConcept 1..1