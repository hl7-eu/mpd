Profile: DosageEuMpd
Parent: Dosage
Id: Dosage-eu-mpd
Title: "Dosage: MPD"
Description: "This profile defines how to represent Dosage data on ePrescription and eDispensation. The profile is equal to FHIR Dosage and only adds obligations and source of requirements."


* sequence
  * ^requirements = "EHDSDosage"

* patientInstruction
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^requirements = "EHDSDosage"

* doseAndRate
  * ^requirements = "EHDSDosage"

* doseAndRate.dose[x]
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][=].extension[documentation].valueMarkdown = "System SHALL support at least Quantity data type for the element"
  * ^requirements = "EHDSDosage"

* doseAndRate.rate[x]
  * ^requirements = "EHDSDosage"

* timing.repeat
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^requirements = "EHDSDosage"

* timing.repeat.bounds[x]
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^extension[$obligation][=].extension[documentation].valueMarkdown = "System SHALL support at least Duration data type for the element"
  * ^requirements = "EHDSDosage"

* timing.repeat.duration
  * ^requirements = "EHDSDosage"

* timing.repeat.durationUnit
  * ^requirements = "EHDSDosage"

* timing.repeat.frequency
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^requirements = "EHDSDosage"

* timing.repeat.period
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^requirements = "EHDSDosage"

* timing.repeat.periodUnit
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^requirements = "EHDSDosage"

* timing.repeat.dayOfWeek
  * ^requirements = "EHDSDosage"

* timing.repeat.timeOfDay
  * ^requirements = "EHDSDosage"

* timing.repeat.when
  * ^requirements = "EHDSDosage"

{{R4}}* asNeededBoolean
{{R5}}* asNeeded
  * ^requirements = "EHDSDosage"

* site
  * ^requirements = "EHDSDosage"

* route
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * ^requirements = "EHDSDosage"

