# Cross-version Analysis - HL7 Europe Medication Prescription and Dispense v0.1.0-ci-build

* [**Table of Contents**](toc.md)
* **Cross-version Analysis**

## Cross-version Analysis

### R4 vs R5 IG

This implementation guide has parallel flavours for HL7 FHIR R4 and R5 versions. Content of the implementation guide versions is functionally the same. However, there are differences related to the available terminology for bindings or availability of extensions. Also, the corresponding HL7 Europe Base implementation guide and Extensions pack are provided both in R4 as well as R5 versions.

Mapping from EHDS logical models to R4 and R5 are provided on [Logical Models page](logicalmodels.md). The table format allows spotting differences between R4 and R5 versions.

Most notable differences:

* Addition of CodeableReference data type in R5.
* RequestGroup resource in R4 has been renamed to RequestOrchestration in R5.
* Differences in Medication resource element names.
* In profiles, some example value sets differ between versions due to the value set being only available for R4 (International Patient Summary) or only in R5 (IHE MPD extensions may use FHIR R5 core value sets).

### Cross Version Analysis

This is an R4 IG. None of the features it uses are changed in R4B, so it can be used as is with R4B systems. Packages for both [R4 (hl7.fhir.eu.mpd.r4)](package.r4.tgz) and [R4B (hl7.fhir.eu.mpd.r4b)](package.r4b.tgz) are available.

