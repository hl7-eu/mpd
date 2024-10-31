### Crossborder services


### Leveraging ISO IDMP
European Medicines Agency has implemented ISO IDMP for marketing authorisation applications and registered product data, and being able to exchange data with EMA is mandatory for all national medicines agencies who are implementing ISO IDMP compatible systems or mapping layers to conform to IDMP data model.  

At the same time, eHealth services are motivated to use a similar data model in order to use good quality data from the original source. As ISO IDMP model is regulatory-oriented and too granular for most eHealth services, we have identified a core data set applicable for prescription and dispensation services. This subset is compliant with ISO IDMP, but is significantly reduced and slightly simplified. This ensures consistency between regulatory data and the eHealth data - on a real as well as virtual product level.  
All data elements in Medication profile are optional, allowing each implementation to implement the granularity needed for their use case.

### FHIR versions
European countries who already have a FHIR implementation, are using mostly R4, but some are also using R5. European Medicines Agency and national medicines agencies use R5 for ISO IDMP compatible data. Many countries don't have any FHIR implementations yet.  
Considering the context, this FHIR Implentation Guide is created in R4 and R5 in parallel. Both IG versions contain the same content, but differences in FHIR core specification result in slightly different profiles, extensions, and examples. However, functionally the two specifications are the same, and should be perfectly compatible.


### Common terminology

