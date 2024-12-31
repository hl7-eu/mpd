### Terminology bindings R4 vs R5  

All value set bindings declared in this implementation guide are with a binding strength 'example'. Normally, the preference is to not create new example value sets but use valid international value set definitions instead - for example, eHDSI EU crossborder services value sets for European scope, or International Patient Summary value sets for international use cases.  
Occasionally, a value set has been defined for R4 or R5 only, and the bindings in R4 and R5 profiles might therefore be slightly different. However, as they are only examples, this should not be a problem, as the content of example value sets should be relatively similar.  

### Extensions with IHE canonical URLs  

HL7 Europe's MPD R5 uses extensions from IHE MPD implementation guide, and therefore, those extensions have canonical URLs assigned by IHE.  
IHE MPD does not have an R4 version of the MPD IG, so these extensions do not have an R4 version defined by IHE. 
In order to keep consistency between two versions, HL7 Europe defines R4 versions of IHE R5 extensions using IHE R5 URLs for canonical URLs. 

### Ambiguous mappings for some elements  
#### Medicinal product name  

Medication resource does not have an explicit element for medicinal product's name. In countries where medication information is distributed as a code system, *de facto* element for holding the medication name has been Medication.code.text or Medication.code.coding.display.  

However, analysis of extensions in national implementation guides showed that many countries prefer to extend Medication resource in order to include an explicit element for the name. It was also evident, that countries often added multiple codings to the .code element, which makes it difficult to understand which of the codings display the official name of the product. Therefore, this IG includes a simple extension for the authorised medicinal product name. 

#### Dispensing pharmacy  

Comparing national implementations two different approaches are used for capturing the details of the pharmacy where the dispense occurred:  
- MedicationDispense.location - pharmacy is indicated using Location resource.  
- MedicationDispense.performer.actor - PractitionerRole as performer is expected to indicate the pharmacy as an Organization.  

This implementation guide does not yet take a stance on which approach should be preferred. Additional input from countries is welcomed during the ballots.  
