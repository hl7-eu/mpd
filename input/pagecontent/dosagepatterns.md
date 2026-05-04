### Dosage data type obligations and constraints

The IG makes use of the full Dosage data type, and the profile in the IG only adds obligations on elements that are related to the most commonly used dosaging schemes (patterns) - these are the same elements as defined for EHDSDosage model.  

Dosage profile does not profile out any elements or add extensions, but there are expectations to terminology bindings regarding administration route and units. The preferred code system for measurement units is UCUM, and the preferred code system for units of presentation is EDQM Standard Terms. Both of these code systems are already used in the MyHealth@EU crossborder services. 

See the [Dosage profile differential](StructureDefinition-Dosage-eu-mpd.html) for the list of elements to be supported.

### Endorsed dosage patterns

The following example dosages are supported by the defined elements:  
* 0.5 tablets
* 2-3 tablets
* 15ml-20ml
* 50mg/h for 20 minutes


The following example timings (and their combinations) are supported by the defined elements:
* 3 times a day
* at 8AM
* for 7 days
* from 1.1.2026 - 10.1.2026
* every Monday
* every third day
* as needed

The following additional information is supported by the defined elements:
* coded instruction (before breakfast)
* text instruction
* body site and/or route of administration

### Dosage pattern examples  

In most cases, the full rendered dosage instructions should be made available in the renderedDosageInstruction element (extension in R4) of MedicationRequest or MedicationDispense resources. This should provide a human-readable information that can be safely displayed or printed out in the original language without processing every individual data element or extension that may be used in a particular implementation. If the dosaging instructions contain multiple different Dosages, the renderedDosageInstruction element must contain all of them and display them logically.  



|Path R4|1 tablet 3 times a day for 7 days|15-20ml at 8AM and 8PM from 8.12.2025 to 15.12.2025|2 tablets every third day standing on your left foot|50mg per hour intravenously for 20 minutes every Monday|half a tablet as needed before breakfast|
|Dosage||||||
|Dosage.sequence||||||
|Dosage.patientInstruction|||"standing on left foot"|||
|Dosage.timing||||||
|Dosage.timing.repeat||||||
|Dosage.timing.repeat.bounds[x]||||||
|Dosage.timing.repeat.boundsDuration|7 d|||||
|Dosage.timing.repeat.boundsPeriod||8.12.2025 - 15.12.2025||||
|Dosage.timing.repeat.duration||||20||
|Dosage.timing.repeat.durationUnit||||min||
|Dosage.timing.repeat.frequency|3||1|||
|Dosage.timing.repeat.period|1||3|||
|Dosage.timing.repeat.periodUnit|d||d|||
|Dosage.timing.repeat.dayOfWeek||||Monday||
|Dosage.timing.repeat.timeOfDay||8:00, 20:00||||
|Dosage.timing.repeat.when|||||before breakfast|
|Dosage.asNeededBoolean|||||TRUE|
|Dosage.site||||||
|Dosage.route||||intravenous||
|Dosage.doseAndRate||||||
|Dosage.doseAndRate.dose[x]||||||
|Dosage.doseAndRate.doseRange||15 ml - 20 ml||||
|Dosage.doseAndRate.doseQuantity|1 tablet(s)||2 tablet(s)||0.5 tablet(s)|
|Dosage.doseAndRate.rate[x]||||||
|Dosage.doseAndRate.rateRatio||||||
|Dosage.doseAndRate.rateRange||||||
|Dosage.doseAndRate.rateQuantity||||50 mg/h||  
{:.table-bordered .table-striped .thead-light}  



