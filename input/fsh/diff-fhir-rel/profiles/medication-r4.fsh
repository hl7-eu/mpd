
Profile: MedicationEuMpd
// Parent: $Medication-uv-ips
Parent: Medication
// DEFINE THIS AS SPECIALIZAITON OF A COMMON EHDSI PROFILE
Id: Medication-eu-mpd
Title: "Medication: MPD"
Description: "This profile defines how to represent MedicationRequest in HL7 FHIR for the purpose of this guide."

// * extension contains $medication-definition-r5 named MedicationDefinitionR5 0..
// * extension[MedicationDefinitionR5].valueReference only Reference(MedicationKnowledge)


* extension contains $medication-totalVolume-r5 named MedicationTotalVolumeR5 0..
* extension[MedicationTotalVolumeR5]


* insert ImposeProfile ( $Medication-uv-ips , 0)
* insert MedicationEpCommon

* ingredient
  * itemCodeableConcept from $eHDSISubstance (example)
  * itemReference only Reference (MedicationEuMpd)
  * strength ^short = "Amount of substance in product (presentation or concentration strength)"
  * strength ^definition = """Definitional resources should be used for specifying the different types of strengths: presentation; concentration."""
* form from $eHDSIDoseForm (example)
  * ^short = "Dose form. For a branded product, this would most likely be authorised dose form, but it could also be administrable dose form. For package items, it could be item's individual dose form." // doseForm


Extension: MedicationDevice
Id:        ihe-ext-medication-device
Title:     "Medication - Device"
Description: "Device, typically an administration device, included in the medicinal product."
// Extension on Medication
* extension contains
    device 1..1 and
    quantity 1..1
* extension[device].value[x] only CodeableConcept or Reference(Device or DeviceDefinition)
* extension[device] ^short = "Coded or referenced device"
* extension[quantity].value[x] only Quantity
* extension[quantity] ^short = "Number of defined devices in te package"