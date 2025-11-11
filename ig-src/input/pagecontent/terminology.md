The implementation guide does not aim to impose common terminology for all European systems. Using international code systems, especially those that are used in MyHealth@EU specifications, may help in making crossborder implementation more straightforward, but for most countries it is easier to provide mappings than switch to new code systems in their national prescribing systems.  

eHealth Network guideline lists preferred code systems for prescription and dispense: ATC, EDQM, EMA SMS, UCUM. Using these code systems is mandatory in MyHealth@EU crossborder eP/eD specification.  

In a clinical setting, SNOMED CT is often preferred, and multiple countries are creating/maintaining SNOMED CT national drug extensions to provide medication concepts as a terminology.  

Medicines agencies are following European Medicines Agency's guideline for implementing ISO IDMP. ISO IDMP as a set of standards does not include terminologies, but European IDMP implementation guides imposes EMA SPOR terminology: SMS (Substance Management Servise) for substances, and RMS (Referentials Management Service) for a number of other common coded attributes. Many countries use national codes for publishing product data in national catalogues/registries, but on a regulatory level, mappings to EMA SPOR are inevitable to allow data exchange with EMA and marketing authorisation holders.  


### Crossborder terminology

MyHealth@EU data exchange for eP and eD is based on CDA and it is operational in an increasing number of countries, allowing patients to buy their prescription drugs from another country's pharmacy. Prescription created in country A is translated to country B language to make it understandable for the country B pharmacist. Dispensation information travels back to country A and is at least partly stored in the country A prescription/dispensation system. This data flow with automatic translation of coded elements is possible thanks to central terminology services - this includes:  
- central value sets (Master ValueSet Catalogue) in English,  
- mappings from national country A value sets to central value sets,  
- translation of central value sets to all country B languages.  

The following two tables illustrate the differences between what is used in cross-border services and by the regulatory domain.  

Table 1: Code systems used in MyHealth@EU services  

|**Data element**|**Code system**|**Example code and display**|  
|Dose form|EDQM|10221000 Film-coated tablet|  
|Route of administration|EDQM|20053000 Oral use|  
|Packaging|EDQM|30009000 Box|  
|Unit of presentation|EDQM|15054000 Tablet|  
|Unit of measurement|UCUM|ug microgram(s)|  
|ATC classification|WHO ATC|G03AA12 drospirenone and ethinylestradiol|  
|Active ingredient|EMA SMS (preferred), ATC (allowed)|100000092667 or J01DC02 cefuroxime|  
{:.table-bordered .table-striped .thead-light}  
   
In EMA specifications for regulatory data exchange, similar concepts are used (same displays), but a different code system:   

Table 2: Comparison of code systems used in MyHealth@EU and EMA services  

|**Coded attribute**|**MyHealth@EU**|**EMA RMS**|**Display name**|  
|Dose form|EDQM: 10221000|100000073665|Film-coated tablet|  
|Route of administration|EDQM: 20053000|100000073619|Oral use|  
|Packaging|EDQM: 30009000|100000073498|Box|  
|Unit of presentation|EDQM: 15054000|200000002152|Tablet|  
|Unit of measurement|UCUM: ug|100000110656|microgram(s)|  
|ATC|WHO ATC: G03AA12|100000095785|drospirenone and ethinylestradiol|  
|Country codes|ISO: SE|100000000535|Kingdom of Sweden|  
|Language codes|BCP-47: sv-SE|100000072288|Swedish|  
{:.table-bordered .table-striped .thead-light}

The tables above is merely one example of different terminology needs. The code systems used in MyHealth@EU services are recommended by eHealth Network in guidelines for ePrescription and Patient Summary. On a national level, many more use cases and terminology options exist.

### Substances (active ingredients)
EMA SPOR Substance Management Services (SMS) provides a list of coded substances - active ingredients (salts as well as moieties) and excipients. It is used in EMA SPOR services, recommended in eHealth Network guidelines, and implemented in MyHealth@EU cross-border services.   

On a national level, local code systems or SNOMED CT are also often used. There is no official mapping between SNOMED CT and EMA SMS, but as they both use official INN names assigned by WHO, mapping by name is quite helpful.

In MyHealth@EU services, substances are allowed to be coded with ATC. However, ATC is a classification of products, not a code system for ingredients. Therefore, ATC cannot be considered the preferred option for coding active ingredients. ATC does not include excipients or modifications like salts.

### Dose form, route of administration, etc

Dose form, unit of presentation, package type and route of administration are all semantically different concepts, that have overlapping elements or defining relationships with eachother. A unit of presentation may be "tablet" and overlap with the dose form "tablet", or it may be "vial" possibly overlapping with package type "vial". Many dose forms include route of administration or package type information in the name. Depending on the code systems used, the need for the following concepts may vary.    

|**Coded attribute**|**EDQM**|**EMA RMS**|**SNOMED CT**|  
|Dose form|10221000 Film-coated tablet|100000073665 Film-coated tablet|1163573008 Film-coated oral tablet|  
|Route of administration|20053000 Oral use|100000073619 Oral use|26643006 Oral route|  
|Packaging|30009000 Box|100000073498 Box|(no equivalent)|  
|Unit of presentation|15054000 Tablet|200000002152 Tablet|732936001 Tablet (unit of presentation)|  
{:.table-bordered .table-striped .thead-light}

Dose forms have been harmonised between EDQM Standard Terms and SNOMED CT, and the mappings exists.  
EDQM Standard Terms, EMA RMS and SNOMED CT all provide a useful addition to lists of terms by adding attributes to dose forms. Each dose form is equipped with the following attributes:  
- basic dose form (e.g., cream, tablet),  
- state of matter (e.g., solid, gas),  
- transformation (e.g., dissolve, disperse),  
- release characteristics (e.g., conventional release, prolonged release),  
- intended site (e.g., oral, dental),  
- administration method (e.g., swallow, inject).  

Dose form attributes can be used for creating decision logic in ePrescription systems and other clinical processes. They can also be helpful for mapping dose forms between different code systems.    

#### EMA SPOR RMS and EDQM Standard Terms
EMA SPOR Referentials Management Services (RMS) is the terminology service to support central data management for the European regulatory domain, combining external resources like EDQM, WHO ATC, and internal resources. It uses an internal numbering system for terminology and product lifecycle management purposes - this means recoding concepts from aforementioned code systems, and adding concepts when needed (for example, adding concepts to pharmaceutical form list, where no agreement on EDQM level could be reached). Mappings to source code systems are provided if they exist.  
  
EDQM Standard Terms are a code system of about 900 terms in 35 languages. These terms are used in European marketing authorisation applications, labelling, reporting, etc. It is designed to support regulatory processes but has been also adopted by eHealth community in Europe. eHealth Network guidelines for ePrescription and Patient Summary, recommend EDQM terms for capturing medicinal product data concerning dose form, route of administration, unit of presentation, and package types.  
  
There are 16 EMA RMS lists originating from EDQM Standard Terms. These lists are considered one code system when expressed in EDQM codes, but 16 different code systems when expressed in RMS codes. This discrepancy may be confusing for implementers but is unlikely to cause significant technical errors.  
  
EMA states that they may add concepts to these RMS lists, when the concepts are pre-accepted by EDQM but not yet valid in the source code system. Just like with ATC, adding concepts that are not yet active in the source system, may lead to mapping and validation errors in downstream systems. If EDQM codes have a role in your national infrastructure (including cross-border services), additional codings may be added to product data to ensure the mapping is present in the data and validated by the NCA.  
  

#### SNOMED CT  

SNOMED CT can be used for coding single data elements, like dose form or route of administration, or provide a full product as a concept with a sufficient data model to describe the product. 
SNOMED International maintains a mapping of dose forms for EDQM and SNOMED CT. The scope of this mapping is the list of pharmaceutical dose forms in EDQM, excluding combined dose forms, combined terms and combination packages.   
  
The international version of SNOMED CT only includes generic medication information, most granular level of which is ‘clinical drug’, best mapped to manufactured item concept in IDMP.  
More information about how SNOMED CT maps to IDMP, and how regulatory data can be expressed and distributed using SNOMED CT concept model and terminology can be found in SNOMED International guidance materials for understanding international medicinal product model and drug model for national extensions.


### Units

There are several types of units used on prescriptions:  
- units of measurement for independent physical units (e.g., milligram, gram, millilitre, hour, etc);
- units of presentation for smallest countable items in a medicinal product package (e.g., tablet, vial, bottle);
- units of product usage (dosaging) for marking the dosage (possibly a subset of the two above with vague additions, such as "application", "table spoon", etc).

Unified Code for Units of Measure (UCUM) is widely used for units in eHealth and beyond - not only for medicinal product information, but also in laboratory results and other measurements. In eHealth services UCUM notations are generally used as codes for units of measurement, which is the preferred codesystem for units in HL7 FHIR. When UCUM is used for units of presentation/usage, code "1" may be used to indicate any countable item. Brackets notation like "{tablet}" is allowed but not encouraged in HL7 FHIR.    
  
In EMA RMS list, the same concepts are coded with RMS codes, and mapping from RMS units to UCUM is provided if it exists. RMS does not declare UCUM to be the source codesystem for units of measure, leaving at possibility of deviating from it. 

SNOMED CT also includes units of measurement with SNOMED CT codes.

|**Coded attribute**|**EDQM**|**EMA RMS**|**SNOMED CT**|  
|Unit of presentation|15054000 Tablet|200000002152 Tablet|732936001 Tablet (unit of presentation) or 428673006 Tablet - unit of product usage|  
|Unit of measurement|ug microgram(s)|100000110656 microgram(s)|258685003 mcg|
{:.table-bordered .table-striped .thead-light}

Units of presentation and units of usage are overlapping, but unit of presentation is more common for packaging information, while units of usage may be more focused on dosaging information. Unit of presentation as an independent data element is a characteristic of a product, and an extension for this data is available in the Medication profile in this IG. Units of usage are not provided as an element or a value set in this IG, and unit of presentation is used instead.

### WHO ATC

Anatomical Therapeutic Chemical Classification System (ATC) has been known and used since 1976. ATC is widely used in prescription systems, clinical decision support systems, and even on physical pharmacy shelves. 
  
In EMA RMS, WHO ATC has been recoded with RMS codes. The list owner is considered WHO, and EMA is allowed to add concepts that are pre-accepted for use in the source system but will come into effect in the future. For example, concept L01FX25 ‘mosunetuzumab’ was recoded as 200000033781 ‘mosunetuzumab’ in RMS and marked with a status ‘Current’ in November 2023. In WHO ATC this concept was not valid before 01.01.2024. It is important to be aware of the versions and their effective dates when using ATC. In addition to the problem mentioned, it has been noticed in crossborder ePrescription service, that countries may adopt the new version of ATC at different times. Many countries publish ATC with a national URL, even when the content is unaltered. In some countries, additional codes have been added to ATC for various reasons, and automatic 1:1 mapping with other countries' ATC concepts may not be achievable.  

This specification encourages using ATC as a classification in the data element classification. ATC is not the best candidate for medication or substance codes, as it is limited in scope and granularity.
  

### National codesystems

National or proprietary codesystems are used in most countries, and they are likely to keep their importance in the national infrastructure, at least in processes that need to handle legacy data. Transition to new code systems requires mapping and/or double Coding in FHIR resources.  
  
It is also worth mentioning, that there are also national flavours of international codesystems used in countries, for example, Estonian ATC is enriched so, that it provides codes for all combinations of ingredients, extending the code system where official ATC stops at a grouper concept. Also, in many countries, EDQM terms has been used for dose forms for a long time, but with local codes, not official EDQM codes.  
  
These local variations may be deeply rooted in clinical systems (including decision support mechanisms) and discontinuing them may be a slow or unnecessary process. Therefore, significant changes in code systems on a national level should be analysed carefully.
