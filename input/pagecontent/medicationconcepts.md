### Medication concepts

Medication on a prescription may be represented either as a coded concept (`CodeableConcept`) or as a fully described FHIR resource (e.g. `Medication` or `MedicinalProductDefinition`). The level of detail may range from a simple substance to a fully specified branded product with a defined package size. On dispense, additional identifiers such as a physical package identifier may also be recorded.

When prescribing, the medication may represent either a **virtual product** (e.g. a generic concept) or a **real product** (a specific authorised medicinal product). The implications of this choice vary by jurisdiction. In some countries, prescribing a real product implies that substitution is not allowed. In others, substitution is allowed or expected unless explicitly prohibited, and the prescribed product represents one of several acceptable alternatives.

Virtual and real products can both be represented using coded concepts or structured FHIR resources. In many implementations, these concepts are interlinked, enabling navigation between different levels of granularity and supporting substitution workflows.


### Medication and dosage

Medication concepts overlap with dosage information, which may result in different representations of the same clinical order.

For example, when only a substance is prescribed, the dosage instructions contain additional details such as strength and route of administration. In the following example, the prescriptions are represented differently, but the intended order is likely the same. Representing these elements in dosage rather than in the medication concept allows flexibility in selecting the exact product (e.g. enabling the dispenser or nurse to choose between different oral dose forms according to the patient's needs or preferences). National legislation may impose additional constraints.

| **Medication** | **Dosage** |
|---------------|-----------|
| paracetamol | 125 mg, oral route, when needed |
| paracetamol 125 mg / 5 mL oral suspension | 5 mL when needed |
{:.table-bordered .table-striped .thead-light}

Route (method) of administration is an element that may describe both the medication and the dosage (administration instructions). Medicinal products are authorised for specific routes of administration; however, a single product may support multiple routes, and in some cases may be used off-label. For example, a product with a dose form "drops for eye, nose or ear" may be used for different body sites. In a prescription, the clinically relevant information is the intended route for that specific case. Therefore, route of administration is typically conveyed in dosage instructions, even though product catalogues may include route information as part of medication definitions.

### Standards and medicinal product models

Various standards and code systems support representation of medication concepts at different levels of granularity.

The ISO IDMP standard defines several core concepts, including Medicinal Product, Packaged Product, Pharmaceutical Product, and Manufactured Item. Each represents a different level of detail and relationship structure. The Pharmaceutical Product represents the administrable form of a specific real product, while the Pharmaceutical Product Identifier (PhPID) supports more abstract grouping of products.

PhPID is designed to support use cases such as prescribing and cross-border exchange. Initiatives such as those by the Uppsala Monitoring Centre (WHO collaborating centre for drug monitoring) aim to provide global PhPID mappings and link them to international medicinal product dictionaries. PhPID concepts can also be linked to locally defined product identifiers to improve interoperability.

SNOMED CT includes concepts for substances, dose forms, and units, as well as precoordinated medication concepts at multiple levels of granularity. The international release includes only virtual products; its most granular concept, *clinical drug*, aligns approximately with Manufactured Item or PhPID level 4 in ISO IDMP.

National extensions of SNOMED CT may include real medicinal products, including branded products and packages. Although identifiers differ between countries, these extensions are based on a shared concept model, enabling linkage across jurisdictions via common clinical drug concepts.

FHIR representations of these concepts can be implemented using resources such as `MedicationDefinition` and related artifacts defined in the FHIR Medication Definition module.

### Granularity and implementation considerations

The granularity of medication representation depends on the use case and the chosen concept type. Prescriptions often use less granular (virtual) concepts to allow flexibility, while dispense records typically use more granular concepts representing specific real products and packages.

It is important that implementations support:
- selection of an appropriate level of granularity, and  
- navigation between more and less granular representations.

The following table illustrates how selected concept types compare:

| **Concept type** | **Active substance** | **Strength** | **Manufactured dose form** | **Administrable dose form** | **Authorised name** | **Pack size** |
|-----------------|---------------------|--------------|----------------------------|-----------------------------|---------------------|---------------|
| ISO IDMP Medicinal Product | + | + | + | * | + | - |
| PhPID Level 4 | + | + | - | + | - | - |
| SNOMED CT Clinical Drug | + | + | + | - | - | - |
| SNOMED CT Real Drug Package | * | * | * | - | + | + |
{:.table-bordered .table-striped .thead-light}

“+” indicates that the attribute is included in the concept, “-” that it is not included, and “*” that it may be inferred through relationships to other concepts.

### Medicinal product dictionaries

Most countries maintain national medicinal product dictionaries or registers, often published by regulatory authorities and sometimes remodelled into code systems by other organisations. These systems enable prescriptions and dispenses to reference products using identifiers, with systems resolving full details via lookup.

However, cross-border scenarios cannot rely on access to national systems. Therefore, cross-border exchange must include both:
- a product identifier, and  
- a minimum set of descriptive attributes required for safe interpretation.