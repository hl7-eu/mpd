
### Crossborder initiative: from epSOS to MyHealth@EU

The history of European collaboration in the health space is long, and even precedes the epSOS project (2008-2014). The epSOS project worked on the development, piloting and evaluation of the first cross-border eHealth services.

This long journey resulted in the first operational cross-border services for Patient Summary and ePrescription based on the HL7 CDA R2.0 standard in 2019 (see [here](https://art-decor.ehdsi.eu/art-decor/decor-templates--epsos-) for the current MyHealth@EU CDA-based specifications). The service was initially activated in a few countries and progressively extended on a voluntary basis. These services are maintained by [MyHealth@EU](https://health.ec.europa.eu/ehealth-digital-health-and-care/electronic-cross-border-health-services_en), formerly known as eHDSI (CEF).

While the crossborder ePrescription and eDispensation services continue to operate using HL7 CDA for the near future, the new services in MyHealth@EU are already using HL7 FHIR, and the old services will adopt HL7 FHIR in the future.  

### eHealth Network guidelines

The first version of eHealth Network Guidelines on ePrescription and eDispensation of Authorised Medicinal Products was published in 2014. The third release of this guideline was published in June 2022, and it is the main basis for the current business requirements.

The data sets in eHealth Network guidelines do not include information about cardinality or data types. The data sets have been revised and enhanced by [Xt-EHR project](https://www.xt-ehr.eu/) - the mappings to these logical models are provided in the [Logical Models page](logicalmodels.html). Deviations from eHN guidelines are explained in Xt-EHR project IG and deliverables.  


### European Health Data Space

The EHDS regulation lists ePrescription and eDispensation as priority categories of personal electronic health data.  

According to the regulation, technical specifications for data exchange (EEHRxF a.k.a "the format") shall be created, taking into consideration that the exchange format may have different profiles for its use at the level of EHR systems and at the level of the national contact points for crossborder data exchange. 

This implementation guide serves as the less restricted specification, suitable for adapting for national use cases. Also, more restricted specification for crossborder data exchange may be derived from this implementation guide. National contact points are responsible for transformation when needed.

While the owner of the EHDS specifications will be European Commission, the current IG is resulting from cooperation between different EU projects that are working on preparing EHDS specifications and implementation. 