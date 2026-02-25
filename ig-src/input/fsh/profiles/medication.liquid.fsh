Profile: MedicationEuMpd
Parent: MedicationEuCore
Id: Medication-eu-mpd
Title: "Medication: MPD"
Description: "This profile defines how to represent Medication data on ePrescription and eDispensation. The profile is equal to Medication EU Core and only adds obligations."

* extension[productName]
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
* identifier
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
* code 
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer


{% if isR5 %}
//* insert ImposeProfile ( $Medication-ihe , 0)

* ingredient
  * item
    * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

  * strength[x]
    * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* doseForm
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

{% endif %}

{% if isR4 %}

* ingredient
  * item[x]
    * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * itemCodeableConcept
    * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * strength
    * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* form from $eHDSIDoseForm (example) 
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

{% endif %}