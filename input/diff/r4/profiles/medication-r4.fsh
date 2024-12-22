
Profile: MedicationEuMpd
// Parent: $Medication-uv-ips
Parent: Medication
// DEFINE THIS AS SPECIALIZAITON OF A COMMON EHDSI PROFILE
Id: Medication-eu-mpd
Title: "Medication: MPD"
Description: "This profile defines how to represent MedicationRequest in HL7 FHIR for the purpose of this guide."

// * extension contains $medication-definition-r5 named MedicationDefinitionR5 0..
// * extension[MedicationDefinitionR5].valueReference only Reference(MedicationKnowledge)


//* extension contains $medication-totalVolume-r5 named totalVolume 0..
//* extension[MedicationTotalVolumeR5]


//* insert ImposeProfile ( $Medication-uv-ips , 0)
* insert MedicationEpCommon

* ingredient
  * itemReference only Reference (MedicationEuMpd)
  * itemCodeableConcept from $substanceIPS (example)
    * ^binding.extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
    * ^binding.extension[=].extension[0].url = "purpose"
    * ^binding.extension[=].extension[=].valueCode = #candidate
    * ^binding.extension[=].extension[+].url = "valueSet"
    * ^binding.extension[=].extension[=].valueCanonical = $eHDSISubstance
    * ^binding.extension[=].extension[+].url = "documentation"
    * ^binding.extension[=].extension[=].valueMarkdown = "MyHealth@EU crossborder value set for substances. Based on EMA SPOR SMS."
  * strength ^short = "Amount of substance in product (presentation or concentration strength)"
  * strength ^definition = """Definitional resources should be used for specifying the different types of strengths: presentation; concentration."""
  * strength // MS // item.ingredient.strengthInfo (does not map exactly)
    * extension contains MedicationStrengthSubstance named basisOfStrengthSubstance 0..1 
    * extension[basisOfStrengthSubstance] ^short = "Substance for which the strength is provided (this could be different from the precise active ingredient)."
    * extension contains MedicationStrengthType named strengthType 0..1
    * extension[strengthType] ^short = "Type of the given strength (concentration strength, presentation strength, or other)"
* form from $eHDSIDoseForm (example) 
/** form ^binding.extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* form ^binding.extension[=].extension[0].url = "purpose"
* form ^binding.extension[=].extension[=].valueCode = #candidate
* form ^binding.extension[=].extension[+].url = "valueSet"
* form ^binding.extension[=].extension[=].valueCanonical = $eHDSIDoseForm
* form ^binding.extension[=].extension[+].url = "documentation"
* form ^binding.extension[=].extension[=].valueMarkdown = "MyHealth@EU crossborder value set for dose forms. Based on EDQM."
*/
//  * ^short = "Dose form. For a branded product, this would most likely be authorised dose form, but it could also be administrable dose form. For package items, it could be item's individual dose form." // doseForm
/* 

Extension: MedicationDevice
Id:        ihe-ext-medication-device
Title:     "Medication - Device"
Description: "Device, typically an administration device, included in the medicinal product."
// Extension on Medication
* extension contains
    device 1..1 and
    quantity 0..1
* extension[device].value[x] only CodeableConcept or Reference(Device or DeviceDefinition)
* extension[device] ^short = "Coded or referenced device"
* extension[quantity].value[x] only Quantity
* extension[quantity] ^short = "Number of defined devices in te package"

Extension: MedicationStrengthSubstance
Id: ihe-ext-medication-strengthsubstance
Title: "Medication - Strength substance"
Description: "Substance for marking the basis of strength. When the precise active ingredient is a salt, the strength is often provided for the active moiety (basis of strength)."
Context: Medication.ingredient.strength
* value[x] only CodeableConcept
* valueCodeableConcept 1..1


Extension: MedicationStrengthType
Id: ihe-ext-medication-strengthtype
Title: "Medication - Strength type"
Description: "Strength type (e.g. concentration strength, presentation strength)"
Context: Medication.ingredient.strength
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 */