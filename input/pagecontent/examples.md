All examples in the [**Artifacts**](artifacts.html) page are equipped with numbers. These numbers provide a reference, but are also created in series to show connection between examples that are connected either by being parts of the same multi-item prescription or being different resources fulfilling the same workflow.

### Medication examples

There are multiple ways to express medication information on a prescription or dispense. Overview of different granularities of medication information can be found in the [Medication Concepts](medicationconcepts.html) page.

#### Generic/virtual products
- **1A** - generic product defined by attributes (powder in a vial)  
- **1B** - generic product defined by a codesystem concept  

These two approaches are not mutually exclusive - it is perfectly acceptable to reference a codesystem concept or an identifier and fill in the attributes describing the product, as well.  

#### Branded products
- **1C** and **1C** - branded package (powder in a vial)  
- **3B** - branded package (solution in ampoules, multiple active ingredients)  
- **4A** - branded package (powder and solvent in vials, multiple devices)  
- **5A** - branded package (drops, multiple active ingredients with strength given for 20 drops)  

#### Combination packs (multiple products or devices in one packaging)
- **2A** - combination pack including a 20g tube of creme (2A1) and 6 pessaries (2A2)  
- **4A** - package includes multiple administration devices  
 

### Prescription examples

This implementation guide does not consider a prescription or dispense a HL7 FHIR document, but a transactional set of resources. There is no resource called "Prescription" in HL7 FHIR: a prescription may be implemented as a MedicationRequest, multiple MedicationRequests, or a combination of MedicationRequests and RequestOrchestration/RequestGroup. These resources may be exchanged in a Bundle. It is also allowed to use Composition for following the document-oriented approach, but it is not normative.

Be aware, that MedicationRequest may sometimes be used as a request NOT to give/prescribe a certain medication to a patient, and MedicationDispense can be used for declining a dispense. Do-not-perform-requests are out of scope for this implementation guide, declining a dispense is presented in the examples.  

#### Single-line prescriptions
- **400C** - single-line prescription, allowing multiple dispenses  

#### Multi-line prescriptions

Following examples are all formulated using a Bundle of type 'collection'. This is just for the sake of representing the example in this IG - using Bundle is not normative in this guide.

- **100A** - prescription with RequestGroup/RequestOrchestration representing a 42-day-cycle where three treatments must start at the same time  
- **300A** - prescription with RequestGroup/RequestOrchestration for twp products that may be dispensed as one combination product or two separate products  
- **200A** - prescription where prescription items are only connected by the .groupIdentifier value  

Please find more information about multi-item prescription in the [implementation notes](implementationnotes.html) page.  

### Dispense examples

- **400D-1** and **400D-2** - two dispenses for the same prescription (400C)  
- **300D** - one dispense fulfilling two requests. Please note that this may not be supported by all implementations  
- **400E** - declining dispense  
