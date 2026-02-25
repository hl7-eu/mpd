/*
Instance: Pattern-01
InstanceOf: DosageEuMpd
Usage: #example
Description: "1 tablet 3 times a day for 7 days"

Instance: Pattern-02
InstanceOf: DosageEuMpd
Usage: #example
Description: "15-20 ml at 8AM and 8PM from 8.12.2025 to 15.12.2025"


Instance: Pattern-03
InstanceOf: DosageEuMpd
Usage: #example
Description: "2 tablets every third day standing on your left foot"

Instance: Pattern-04
InstanceOf: DosageEuMpd
Usage: #example
Description: "50mg per hour intravenously for 20 minutes every Monday"

Instance: Pattern-05
InstanceOf: DosageEuMpd
Usage: #example
Description: "Half a tablet as needed before breakfast"



Instance: Pattern-06a
InstanceOf: DosageEuMpd
Usage: #example
Description: "Multiples dosages as adjacent steps. Sequence 1: 1500mg 3 times a day for 3 days, intramuscular route."

* sequence = 1
* doseAndRate.doseQuantity = 1500 $ucum#mg "milligram(s)"
* route = $snomed#78421000 "Intramuscular route"
* timing
  * repeat.frequency = 1
  * repeat.period = 8
  * repeat.periodUnit = $ucum#h "hour(s)"
  * repeat.boundsDuration = 3 $ucum#d "day"

Instance: Pattern-06b
InstanceOf: DosageEuMpd
Usage: #example
Description: "Multiple dosages as adjacent steps. Sequence 2: 750mg-1500mg 3 times a day for 4 days, intravenous route."

* sequence = 2
* doseAndRate.doseRange.low = 750 $ucum#mg "milligram(s)"
* doseAndRate.doseRange.high = 1500 $ucum#mg "milligram(s)"
* route = $snomed#78421000 "Intramuscular route"
* timing
  * repeat.frequency = 1
  * repeat.period = 8
  * repeat.periodUnit = $ucum#h "hour(s)"
  * repeat.boundsDuration = 4 $ucum#d "day"

Instance: Pattern-07a
InstanceOf: DosageEuMpd
Usage: #example
Description: "Multiples dosages running in parallel. 1 drop in the morning (and 2 drops in the evening) into left eye for 7 days."

* sequence = 1
* doseAndRate.doseQuantity = 1 $edqm-standardterms#15022000 "Drop"
* timing.repeat.boundsDuration = 7 $ucum#d "day"
* timing.repeat.frequency = 1
* timing.repeat.period = 1 
* timing.repeat.periodUnit = $ucum#d "day"
* timing.repeat.when = #MORN
* site = #left-eye

Instance: Pattern-07b
InstanceOf: DosageEuMpd
Usage: #example
Description: "Multiple dosages running in parallel. (1 drop in the morning and) 2 drops in the evening into left eye for 7 days."

* sequence = 1
* doseAndRate.doseQuantity = 2 $edqm-standardterms#15022000 "Drop"
* timing.repeat.boundsDuration = 7 $ucum#d "day"
* timing.repeat.frequency = 1
* timing.repeat.period = 1 
* timing.repeat.periodUnit = $ucum#d "day"
* timing.repeat.when = #EVE
* site = #left-eye

*/