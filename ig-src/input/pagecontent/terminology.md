### Terminology

This implementation guide does not aim to impose a single common terminology for all European systems. International code systems, especially those used in MyHealth@EU specifications, can make cross-border implementation more straightforward. However, for many countries, providing mappings to common European value sets is more realistic than replacing established national terminology in prescribing, dispensing, and medicinal product systems.

The eHealth Network guidelines identify preferred code systems for prescription and dispensation data, including ATC, EDQM Standard Terms, EMA SPOR SMS, and UCUM. These code systems are used in the MyHealth@EU cross-border ePrescription and eDispensation specifications.

In clinical systems, SNOMED CT may also be used, and several countries are developing or maintaining SNOMED CT national drug extensions to provide medication concepts as terminology. Regulatory systems, meanwhile, follow European Medicines Agency guidance for implementing ISO IDMP. ISO IDMP itself does not define terminologies, but the European IDMP implementation relies on EMA SPOR terminology, including SMS (Substance Management Services) for substances and RMS (Referentials Management Services) for a number of other coded attributes.

Many countries use national codes for publishing product data in national catalogues or registries. At the regulatory level, mappings to EMA SPOR are increasingly important to support data exchange with EMA and marketing authorisation holders.

### Cross-border terminology

MyHealth@EU data exchange for ePrescription and eDispensation is based on CDA and is operational in an increasing number of countries. It allows patients to obtain prescribed medicines from a pharmacy in another participating country. A prescription created in country A is translated into the language of country B to make it understandable for the pharmacist. Dispensation information is then returned to country A and may be stored, at least partly, in the national prescription or dispensation system.

This data flow, including automatic translation of coded elements, is supported by central terminology services. These include:

- central value sets in English (Master ValueSet Catalogue);
- mappings from national value sets to central value sets;
- translations of central value sets into the languages used by participating countries.

The following tables illustrate differences between terminology used in cross-border services and terminology used in the regulatory domain.

Table 1: Code systems used in MyHealth@EU services

| **Data element** | **Code system** | **Example code and display** |
|---|---|---|
| Dose form | EDQM | 10221000 Film-coated tablet |
| Route of administration | EDQM | 20053000 Oral use |
| Packaging | EDQM | 30009000 Box |
| Unit of presentation | EDQM | 15054000 Tablet |
| Unit of measurement | UCUM | ug microgram(s) |
| ATC classification | WHO ATC | G03AA12 drospirenone and ethinylestradiol |
| Active ingredient | EMA SMS (preferred), ATC (allowed) | 100000092667 cefuroxime or J01DC02 cefuroxime |
{:.table-bordered .table-striped .thead-light}

In EMA specifications for regulatory data exchange, similar concepts may be represented using EMA RMS codes rather than the original source code systems.

Table 2: Comparison of code systems used in MyHealth@EU and EMA services

| **Coded attribute** | **MyHealth@EU** | **EMA RMS** | **Display name** |
|---|---|---|---|
| Dose form | EDQM: 10221000 | 100000073665 | Film-coated tablet |
| Route of administration | EDQM: 20053000 | 100000073619 | Oral use |
| Packaging | EDQM: 30009000 | 100000073498 | Box |
| Unit of presentation | EDQM: 15054000 | 200000002152 | Tablet |
| Unit of measurement | UCUM: ug | 100000110656 | microgram(s) |
| ATC | WHO ATC: G03AA12 | 100000095785 | drospirenone and ethinylestradiol |
| Country codes | ISO: SE | 100000000535 | Kingdom of Sweden |
| Language codes | BCP-47: sv-SE | 100000072288 | Swedish |
{:.table-bordered .table-striped .thead-light}

The tables above are examples of different terminology needs. The code systems used in MyHealth@EU services are recommended by the eHealth Network for ePrescription and Patient Summary. At national level, additional terminology systems and implementation choices may be required.

### Substances

EMA SPOR Substance Management Services (SMS) provides a list of coded substances, including active ingredients (salts as well as moieties) and excipients. It is used in EMA SPOR services, recommended in eHealth Network guidelines, and implemented in MyHealth@EU cross-border services. However, EMA SMS does not inherently support grouping of substances, which may be relevant for substitution decision-making.

At national level, local code systems or SNOMED CT are also often used. There is no official mapping between SNOMED CT and EMA SMS. However, as both use official International Nonproprietary Names (INN) assigned by WHO, name-based mapping may be useful.

In MyHealth@EU services, substances are allowed to be coded with ATC. However, ATC is a classification of products, not a code system for ingredients. ATC does not include excipients or modifications such as salts, and many active ingredients would fall into the residue categories (e.g. "Other" or "Combinations with ..."). Therefore, ATC is not recommended for coding active or inactive ingredients.

### Dose form, unit of presentation, package type, and route of administration

Dose form, unit of presentation, package type, and route of administration are semantically different concepts, but they may overlap or have defining relationships with each other. For example, a unit of presentation may be "tablet" and overlap with the dose form "tablet". A unit of presentation may also be "vial", which can overlap with the package type "vial". Many dose form terms include route of administration or package type information in the name. Depending on the code systems used, the need to represent these concepts separately may vary.

Table 3: Comparison of terminology standards

| **Coded attribute** | **EDQM** | **EMA RMS** | **SNOMED CT** |
|---|---|---|---|
| Dose form | 10221000 Film-coated tablet | 100000073665 Film-coated tablet | 1163573008 Film-coated oral tablet |
| Route of administration | 20053000 Oral use | 100000073619 Oral use | 26643006 Oral route |
| Packaging | 30009000 Box | 100000073498 Box | (no equivalent) |
| Unit of presentation | 15054000 Tablet | 200000002152 Tablet | 732936001 Tablet (unit of presentation) |
{:.table-bordered .table-striped .thead-light}

Basic dose forms and pharmaceutical dose forms have been harmonised between EDQM Standard Terms and SNOMED CT, and mappings exist.

In EMA RMS, concepts from EDQM Standard Terms are coded with RMS codes. Mappings from RMS codes to EDQM codes are provided where they exist. RMS declares EDQM to be its main source code system. However, RMS may also provide codes for EU products that are approved without an equivalent EDQM code.

EDQM Standard Terms, EMA RMS, and SNOMED CT all provide useful additions to simple lists of terms by adding attributes to dose forms. These attributes include:

- basic dose form (e.g. cream, tablet);
- state of matter (e.g. solid, gas);
- transformation (e.g. dissolve, disperse);
- release characteristics (e.g. conventional release, prolonged release);
- intended site (e.g. oral, dental);
- administration method (e.g. swallow, inject).

Dose form attributes can support decision logic in electronic prescription systems and other clinical processes. They can also support mapping between code systems. For example, PhPIDs may use dose form attributes rather than precoordinated dose form concepts.

The preferred code system for dose form, unit of presentation, package type, and route of administration in this guide is currently EDQM Standard Terms, as used in MyHealth@EU services. Other code systems are not discouraged, provided that mapping to cross-border value sets is supported where cross-border exchange is required.

### EMA SPOR RMS and EDQM Standard Terms

EMA SPOR Referentials Management Services (RMS) is the terminology service supporting central data management for the European regulatory domain. It includes terminology originating from external sources such as EDQM Standard Terms and WHO ATC, as well as EMA-managed terminology. RMS uses EMA identifiers for terminology and product lifecycle management purposes. This means that concepts from source code systems may be recoded with RMS codes, and additional concepts may be added where needed.

Mappings to source code systems are provided where they exist. For EDQM-derived RMS lists, this means that EDQM codes may be available as mappings from RMS concepts.

EDQM Standard Terms are used in European marketing authorisation applications, labelling, reporting, and related regulatory processes. They have also been adopted by the eHealth community in Europe. The eHealth Network guidelines for ePrescription and Patient Summary recommend EDQM terms for medicinal product data elements such as dose form, route of administration, unit of presentation, and package type.

Some RMS lists originate from EDQM Standard Terms. When represented with EDQM codes, these terms may be treated as part of the EDQM code system. When represented with RMS codes, they are represented as EMA RMS terminology. This distinction may be relevant for validation and mapping.

EMA may add concepts to RMS lists when concepts are pre-accepted by the source system but not yet active. As with ATC, using concepts before they are active in the source system may lead to mapping or validation issues in downstream systems. Where EDQM codes are required in national infrastructure or cross-border services, implementations may include additional codings to ensure that mappings are available and validated.

### SNOMED CT

SNOMED CT can be used for individual coded elements, such as dose form or route of administration, or for medication concepts represented using the SNOMED CT medicinal product model.

SNOMED International maintains mappings between EDQM and SNOMED CT for dose forms. The scope of this mapping includes pharmaceutical dose forms in EDQM, excluding combined dose forms, combined terms, and combination packages.

The international release of SNOMED CT includes generic medication information. Its most granular product concept is the clinical drug, which approximately maps to ISO IDMP Manufactured Item or PhPID level 4. SNOMED CT national extensions may include real medicinal products, including branded products and packages. Although identifiers for national product concepts differ between countries, they use a shared concept model, making it possible to link medications from different countries through clinical drug concepts.

### Units

Several types of units are used in prescriptions and dispensations:

- units of measurement for independent physical units (e.g. milligram, gram, millilitre, hour);
- units of presentation for the smallest countable items in a medicinal product package (e.g. tablet, vial, bottle);
- units of product usage or dosage units used in dosage instructions, which may overlap with the two categories above and may also include less precise expressions such as "application" or "tablespoon".

UCUM is widely used for units in eHealth and beyond, including laboratory results, medicinal product information, and other measurements. In eHealth services, UCUM notations are generally used as codes for units of measurement. UCUM is also the preferred code system for units of measurement in HL7 FHIR.

When UCUM is used for units of presentation or usage, the code `1` may be used to indicate a countable item. Bracket notation such as `{tablet}` is allowed in UCUM but is not encouraged in HL7 FHIR.

In EMA RMS, similar unit concepts are coded with RMS codes, and mappings from RMS units to UCUM are provided where they exist. RMS does not declare UCUM to be the source code system for units of measure, as UCUM notations are not available for all arbitrary units required for EU medicinal products.

SNOMED CT also includes units of measurement with SNOMED CT codes.

Table 4: Comparison of unit terminology standards

| **Coded attribute** | **EDQM Standard Terms** | **EMA RMS** | **SNOMED CT** |
|---|---|---|---|
| Unit of presentation | 15054000 Tablet | 200000002152 Tablet | 732936001 Tablet (unit of presentation) |
| Unit of measurement | ug microgram(s) | 100000110656 microgram(s) | 258685003 mcg |
{:.table-bordered .table-striped .thead-light}

Units of presentation and units of usage overlap. Unit of presentation is more commonly used for packaging information, while units of usage are more focused on dosage instructions and may include ambiguous expressions such as "fingertip". Due to this overlap, SNOMED CT has decided to remove units of use and merge the concepts with units of presentation from 2026.

Unit of presentation as an independent data element is a characteristic of a product, and an extension for this data is available in the Medication profile in this IG. Units of usage are not provided as a separate element or value set in this IG; unit of presentation is used instead where applicable.

The preferred code system for units of measurement is UCUM. The preferred code system for units of presentation is EDQM Standard Terms. Other code systems may be used where required by national or regulatory contexts, provided that mapping to cross-border value sets is supported where relevant.

### Classifications

The most widely known medication classification is the Anatomical Therapeutic Chemical (ATC) Classification System, which has been used since 1976. ATC is widely used in prescription systems, clinical decision support systems, analytics, and pharmacy workflows.

In EMA RMS, WHO ATC has been recoded with RMS codes. The list owner is considered to be WHO, and EMA may add concepts that are pre-accepted for use in the source system but will only come into effect in the future. Implementers should therefore be aware of ATC versions and effective dates.

Cross-border ePrescription services have shown that countries may adopt new ATC versions at different times. Many countries also publish ATC using a national code system identifier, such as a national canonical URL in HL7 FHIR, even when the content is unchanged. In some countries, additional codes have been added to ATC for various national reasons. As a result, automatic one-to-one mapping between ATC concepts from different countries may not always be possible.

This specification encourages using ATC as a classification in the `classification` extension. ATC is not recommended for medication or substance codes, as it is limited in scope and granularity.

PhPID, as defined in ISO IDMP, may also serve as a classification or, depending on the implementation and use case, as a medication-identifying code. Level 4 PhPID provides significantly more granularity than ATC.

Other classifications may also be used, but in most cases they are relevant only in local settings and may be defined using local code systems.

### National code systems

National or proprietary code systems are used in most countries and are likely to remain important in national infrastructure, particularly where systems need to handle legacy data. Transitioning to new code systems usually requires mapping, dual coding, or both.

National variants of international code systems may also exist. For example, a country may publish ATC using a national code system identifier, extend ATC with additional codes, or use EDQM-based dose form terms with local identifiers rather than official EDQM codes.

These local variations may be deeply embedded in clinical systems, including clinical decision support, reimbursement, prescribing, dispensing, and analytics. Replacing them may be slow, costly, or unnecessary. Therefore, major terminology changes at national level should be analysed carefully, especially where cross-border mappings and validation are required.
