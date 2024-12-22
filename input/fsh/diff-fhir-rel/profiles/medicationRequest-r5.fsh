Profile: MedicationRequestEuMpd
Parent: MedicationRequest 
Id: MedicationRequest-eu-mpd
Title: "MedicationRequest: MPD"
Description: "This profile defines how to represent ePrescription or other medication request."

* insert MedicationRequestEpCommon
* medication 1..
* medication only CodeableReference(MedicationEuMpd)
* reason ^short = "Reason or indication for this prescription"

// For R4, this extension is in Extensions IG.
Extension: PrescribedQuantity
Id: prescribed-quantity
Title: "Overall prescribed quantity"
Description: "This extension applies to the MedicationRequest resource for marking the overall prescribed quantity (e.g. number of packages)."
Context: MedicationRequest.dispenseRequest

* ^url = "http://hl7.eu/fhir/StructureDefinition/prescribed-quantity"
* value[x] only Quantity	
