Instance: 01A-Cefuroxime1500GenericExplicit
InstanceOf: MedicationEuMpd
Usage: #example
Description: "1A. Cefuroxime 1500mg (1.5g) powder for solution in a vial. Generic product, defined by attributes."

* form = $edqm-standardterms#50053000 "Powder for solution for injection or infusion"
* extension[classification].valueCodeableConcept = $who-atc#J01DC02 "cefuroxime"
* ingredient.itemCodeableConcept = $snomed#372833007 "Cefuroxime"
* ingredient.isActive = true
* ingredient.strength.numerator = 1500 $ucum#mg "milligram"
* ingredient.strength.denominator = 1 $edqm-standardterms#15060000 "Vial"

Instance: 01B-Cefuroxime1500GenericConcept
InstanceOf: MedicationEuMpd
Usage: #example
Description: "1B. Cefuroxime 1500mg (1.5g) powder for solution in a vial. Generic product, defined by a code system (receiving system is expected to have access to the code system for additional attributes or display names)."

* code = $snomed#1193769004 "Cefuroxime (as cefuroxime sodium) 1.5 g powder for solution for injection vial"

Instance: 01C-Cefuroxime1500Branded
InstanceOf: MedicationEuMpd
Usage: #example
Description: "1C. Cefuroxime 1500mg (1.5g) powder for solution in a vial (10 vials per package). Branded packaged product, defined by attributes."

* identifier.value = "1529962"
* identifier.system = "https://www.ravimiregister.ee" // not official FHIR identifier URL
* form = $edqm-standardterms#50053000 "Powder for solution for injection or infusion"
* extension[classification].valueCodeableConcept = $who-atc#J01DC02 "cefuroxime"
* extension[productName].valueString = "Cefuroxime MIP 1500 mg, süste-/infusioonilahuse pulber"
* extension[unitOfPresentation].valueCodeableConcept = $edqm-standardterms#15060000 "Vial"
* amount.numerator = 10 $edqm-standardterms#15060000 "Vial"
* amount.denominator.value = 1
* ingredient.itemCodeableConcept = $snomed#48753004 "Cefuroxime sodium"
* ingredient.isActive = true
* ingredient.strength.numerator = 1500 $ucum#mg "milligram"
* ingredient.strength.denominator = 1 $edqm-standardterms#15060000 "Vial"
* ingredient.strength.extension[basisOfStrengthSubstance].valueCodeableConcept = $snomed#372833007 "Cefuroxime" 
* manufacturer.display = "MIP Pharma GmbH"

Instance: 01D-Cefuroxime750Branded
InstanceOf: MedicationEuMpd
Usage: #example
Description: "1D. Cefuroxime 750mg powder for solution in a vial (5 vials per package). Branded packaged product, defined by attributes."

* identifier.value = "1529928"
* identifier.system = "https://www.ravimiregister.ee" // not official FHIR identifier URL
* form = $edqm-standardterms#11205000 "Powder for solution for injection"
* extension[classification].valueCodeableConcept = $who-atc#J01DC02 "cefuroxime"
* extension[productName].valueString = "Cefuroxime MIP 750 mg, süstelahuse pulber"
* extension[unitOfPresentation].valueCodeableConcept = $edqm-standardterms#15060000 "Vial"
* amount.numerator = 5 $edqm-standardterms#15060000 "Vial"
* amount.denominator.value = 1
* ingredient.itemCodeableConcept = $snomed#48753004 "Cefuroxime sodium"
* ingredient.isActive = true
* ingredient.strength.numerator = 750 $ucum#mg "milligram"
* ingredient.strength.denominator = 1 $edqm-standardterms#15060000 "Vial"
* ingredient.strength.extension[basisOfStrengthSubstance].valueCodeableConcept = $snomed#372833007 "Cefuroxime" 
* manufacturer.display = "MIP Pharma GmbH"


Instance: 02A-ClotrimazoleCanifugCremolum
InstanceOf: MedicationEuMpd
Usage: #example
Description: "2A. Clotrimazole cream 10mg/g and 6 pessaries 100g. Branded packaged product, consisting of different medication items. Defined by attributes."

* identifier.value = "1033692"
* identifier.system = "https://www.ravimiregister.ee" // not official FHIR identifier URL
* form = $edqm-standardterms#14001000 "Cream + pessary"
* extension[classification].valueCodeableConcept = $who-atc#G01AF02 "clotrimazole"
* extension[productName].valueString = "Canifug Cremolum"
* extension[device].extension[device].valueCodeableConcept = $edqm-standardterms#30002000 "Applicator"
* extension[device].extension[quantity].valueQuantity.value = 1


* ingredient[0].itemReference = Reference(02A1-CanifugCremolumCreamItem)
* ingredient[+].itemReference = Reference(02A2-CanifugCremolumPessaryItem)
//* ingredient[+].itemCodeableConcept = $edqm-standardterms#30002000 "Applicator"


Instance: 02A1-CanifugCremolumCreamItem
InstanceOf: MedicationEuMpd
Usage: #example
Description: "2A2. Clotrimazole cream (10mg/g, 1 tube of 20g) as part of Canifug Cremolum product (ISO IDMP manufactured item)"

* form = $edqm-standardterms#10901000 "Vaginal cream"
* amount.numerator = 1 $edqm-standardterms#15058000 "Tube"
* amount.denominator.value = 1
* extension[unitOfPresentation].valueCodeableConcept = $edqm-standardterms#15058000 "Tube"
* extension[sizeOfItem].valueQuantity = 20 $ucum#g "gram"
* ingredient.itemCodeableConcept = $snomed#387325003 "Clotrimazole"
* ingredient.isActive = true
* ingredient.strength.numerator = 10 $ucum#mg "milligram"
* ingredient.strength.denominator = 1 $ucum#g "gram"

Instance: 02A2-CanifugCremolumPessaryItem
InstanceOf: MedicationEuMpd
Usage: #example
Description: "2A1. Clotrimazole pessary (6 pessaries of 100mg) as part of Canifug Cremolum product (ISO IDMP manufactured item)"

* form = $edqm-standardterms#10909000 "Pessary"
* amount.numerator = 6 $edqm-standardterms#15039000 "Pessary"
* amount.denominator.value = 1
* extension[unitOfPresentation].valueCodeableConcept = $edqm-standardterms#15039000 "Pessary"
* ingredient.itemCodeableConcept = $snomed#387325003 "Clotrimazole"
* ingredient.isActive = true
* ingredient.strength.numerator = 100 $ucum#mg "milligram"
* ingredient.strength.denominator = 1 $edqm-standardterms#15039000 "Pessary"


Instance: 03B-VitaminBComplexBranded
InstanceOf: MedicationEuMpd
Usage: #example
Description: "3B. Milgamma N, B-vitamin complex. Branded packaged product, defined by attributes."

* identifier.value = "1029776"
* identifier.system = "https://www.ravimiregister.ee" // not official FHIR identifier URL
* form = $edqm-standardterms#13047000 "Solution for suspension for injection"
* extension[classification].valueCodeableConcept = $who-atc#A11DB "Vitamin B1 in combination with vitamin B6 and/or vitamin B12"
* extension[productName].valueString = "MILGAMMA N"
* extension[sizeOfItem].valueQuantity = 2 $ucum#mL "milliliter"
* extension[unitOfPresentation].valueCodeableConcept = $edqm-standardterms#15002000 "Ampoule"
* amount.numerator = 5 $edqm-standardterms#15002000 "Ampoule" // possibility to use UCUM {Ampoule} or extension for unit of presentation.
* amount.denominator.value = 1

* ingredient[0].itemCodeableConcept = $snomed#259659006 "Thiamine"
* ingredient[=].isActive = true
* ingredient[=].strength.numerator = 50 $ucum#mg "milligram"
* ingredient[=].strength.denominator = 1 $ucum#mL "milliliter"

* ingredient[+].itemCodeableConcept = $snomed#430469009 "Pyridoxine"
* ingredient[=].isActive = true
* ingredient[=].strength.numerator = 50 $ucum#mg "milligram"
* ingredient[=].strength.denominator = 1 $ucum#mL "milliliter"

* ingredient[+].itemCodeableConcept = $snomed#419382002 "Cyanocobalamin"
* ingredient[=].isActive = true
* ingredient[=].strength.numerator = 0.5 $ucum#mg "milligram"
* ingredient[=].strength.denominator = 1 $ucum#mL "milliliter"

* ingredient[+].itemCodeableConcept = $snomed#387480006 "Lidocaine"
* ingredient[=].isActive = true
* ingredient[=].strength.numerator = 10 $ucum#mg "milligram"
* ingredient[=].strength.denominator = 1 $ucum#mL "milliliter"

Instance: 04A-FirmagonBranded
InstanceOf: MedicationEuMpd
Usage: #example
Description: "4A. Firmagon. Branded packaged product, defined by attributes, includes administration devices."

* identifier.value = "1400601"
* identifier.system = "https://www.ravimiregister.ee" // not official FHIR identifier URL
* form = $edqm-standardterms#11207000 "Powder and solvent for solution for injection"
* extension[classification].valueCodeableConcept = $who-atc#L02BX02 "degarelix"
* extension[productName].valueString = "FIRMAGON"
* extension[sizeOfItem].valueQuantity = 3 $ucum#mL "milliliter"
* extension[unitOfPresentation].valueCodeableConcept = $edqm-standardterms#15060000 "Vial"

* amount.numerator = 2 $edqm-standardterms#15060000 "Vial"
* amount.denominator.value = 1
* ingredient.itemCodeableConcept = $snomed#441864003 "Degarelix"
* ingredient.isActive = true
* ingredient.strength.numerator = 120 $ucum#mg "milligram"
* ingredient.strength.denominator = 1 $edqm-standardterms#15060000 "Vial"
* ingredient.strength.extension[basisOfStrengthSubstance].valueCodeableConcept = $snomed#441864003 "Degarelix"
* manufacturer.display = "Ferring Pharmaceuticals A/S"
 
* extension[device].extension[device].valueCodeableConcept = $edqm-standardterms#30051000 "Pre-filled syringe" // solvent pre-filled syringe
* extension[device].extension[quantity].valueQuantity.value = 2

* extension[device][+].extension[device].valueCodeableConcept = $edqm-standardterms#30028000 "Injection needle"
* extension[device][=].extension[quantity].valueQuantity.value = 2
// 2 trays containing 2 powder vials, 2 solvent pre-filled syrnges, 2 plunger rods, 2 vial adapters, 2 needles

Instance: 05A-Tilidin-Branded
InstanceOf: MedicationEuMpd
Usage: #example
Description: "5A. Tilidin (50mg), Naloxon (4mg) oral drops. Branded packaged product, defined by attributes. Unusual strength."

* identifier.value = "12345"
//* identifier.system = "example"
* form = $edqm-standardterms#10101000 "Oral drops, solution"
* extension[classification].valueCodeableConcept = $who-atc#N02AX51 "tilidine and naloxone"
//* extension[classification].valueCodeableConcept.coding.version = "2025"
* extension[productName].valueString = "Tilidin HEXAL® comp Lösung, 50/4 mg je 0,72 ml Tropfen zum Einnehmen, Lösung"
* extension[unitOfPresentation].valueCodeableConcept = $edqm-standardterms#15022000 "Drop"
* amount.numerator = 10 $ucum#mL "milliliter"
* amount.denominator.value = 1
* ingredient[0].itemCodeableConcept = $snomed#373562008 "Tilidine"
* ingredient[=].isActive = true
* ingredient[=].strength.numerator = 50 $ucum#mg "milligram"
* ingredient[=].strength.denominator = 20 $edqm-standardterms#15022000 "Drop"
* ingredient[=].strength.extension[basisOfStrengthSubstance].valueCodeableConcept = $snomed#96186004 "Tilidine hydrochloride" 

* ingredient[+].itemCodeableConcept = $snomed#372890007 "Naloxone"
* ingredient[=].isActive = true
* ingredient[=].strength.numerator = 4 $ucum#mg "milligram"
* ingredient[=].strength.denominator = 20 $edqm-standardterms#15022000 "Drop"
* ingredient[=].strength.extension[basisOfStrengthSubstance].valueCodeableConcept = $snomed#21518006 "Naloxone hydrochloride" 

* manufacturer.display = "Hexal AG" //We did not profile MAH data, shall we try better?

//Lösung (20 Tropfen = 4 Hübe) enthalten 51,45 mg Tilidinhydrochlorid-Hemihydrat (entsprechend 50 mg Tilidinhydrochlorid) und 4,40 mg Naloxonhydrochlorid-Dihydrat (entsprechend 4 mg Naloxonhydrochlorid).