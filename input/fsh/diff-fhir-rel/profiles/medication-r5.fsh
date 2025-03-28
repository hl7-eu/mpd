/* Remove after syncing R5 extensions.
Extension: PackageType
Id: package-type
Title: "Package type"
Description: "This extension applies to Medication and expresses the type of the container for the product (e.g. bottle, unit-dose blister, pre-filled pen)."
Context: Medication

* ^url = "http://hl7.eu/fhir/StructureDefinition/package-type"
* value[x] only CodeableConcept
* valueCodeableConcept from $eHDSIPackage (example)	
* valueCodeableConcept ^short = "Type of container, e.g pre-filled syringe, unit-dose blister, sachet, etc."
*/


Profile: MedicationEuMpd
// Parent: $Medication-uv-ips
Parent: Medication
Id: Medication-eu-mpd
Title: "Medication: MPD"
Description: "This profile defines how to represent Medication data on ePrescription and eDispensation"

* insert ImposeProfile ( $Medication-ihe , 0)
* insert MedicationEpCommon
* extension contains $ihe-ext-medication-device named device 0..* // device
* extension[device] ^short = "Device, typically an administration device, included in the product."
* extension[device].extension[device].valueCodeableReference from $eHDSIPackage (example)
* totalVolume // MS // item.amount; packSize
  * ^short = "Total volume or number of package items inside a package. This element should not contain overall prescribed amount, but describe the product itself. In case of complex packages, this element could be left empty, and number of different items could be indicated in the nested Medications." //packSize (almost)
* ingredient
  * item only CodeableReference (Substance or MedicationEuMpd)
    * ^short = "Substance (Substance resource or concept from terminology) or a medicinal product (Medication resource or concept from terminology). Medicinal product can be an ingredient in case of extemporal medications or combination packs (e.g Creme + 6 tablets)" 
  * item from $substanceSCT (example)
    * ^binding.additional.purpose = #candidate
    * ^binding.additional.valueSet = $eHDSISubstance
    * ^binding.additional.documentation = """MyHealth@EU crossborder value set for substances. Based on EMA SPOR SMS.""" 
  * strength[x] ^short = "Amount of substance in product (presentation or concentration strength)"
  * strength[x] ^definition = """Definitional resources should be used for specifying the different types of strengths: presentation; concentration."""
  * strength[x] // MS // item.ingredient.strengthInfo (does not map exactly)
    * extension contains $ihe-ext-medication-strengthsubstance named basisOfStrengthSubstance 0..1 
    * extension[basisOfStrengthSubstance] ^short = "Basis of strength substance - substance for which the strength is provided (this could be different from the precise active ingredient)."
* doseForm // MS // doseForm; item.doseForm
  * ^short = "Dose form. For a branded product, this would most likely be authorised dose form, but it could also be administrable dose form. For package items, it could be item's individual dose form." // doseForm
  * ^binding.additional.purpose = #candidate
  * ^binding.additional.valueSet = $eHDSIDoseForm
  * ^binding.additional.documentation = """MyHealth@EU crossborder value set for dose forms. Based on EDQM Standard Terms.""" 
* marketingAuthorizationHolder // MS

