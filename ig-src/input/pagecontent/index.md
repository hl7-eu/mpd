{% include fsh-link-references.md %}

<!-- Horizontal banner - test workflow -->

<div style="
  /* reserve space for the ToC on the right */
  margin: 0 340px 1.25rem 0;   /* top right bottom left; adjust 340px to your ToC width */
  border: 2px solid #003366;
  border-radius: 8px;
  padding: 1em;
  background-color: #f9f9ff;
  box-sizing: border-box;

  /* optional: pull the banner up a bit to align with the ToC’s top */
  /* margin-top: -0.75rem;  uncomment/tweak if you want tighter vertical alignment */
">
  <div style="margin-bottom: 1em;">
    <img src="xtehr-logo.png" alt="XTEHR Logo" style="max-width: 100%; height: 40px;" />
  </div>
  <div style="text-align: left;">
    <strong>Acknowledgment</strong><br/>
    The development of this Implementation Guide version has been supported by the 
    <strong>Xt-EHR Joint Action</strong>.  
    Xt-EHR provided expertise, alignment with European health policy priorities, 
    and validation of specifications to enable consistency with EHDS requirements.
  </div>
</div>

### Scope

The scope of this implementation guide is **Medication Prescription and Dispense** in the **European** Context.
It is coherent with the [European eHN Guidelines](https://health.ec.europa.eu/ehealth-digital-health-and-care/key-documents_en) and preparatory EHDS work.

This implementation guide is designed to be a flexible basis for national specifications as well as crossborder services. 

Additional information can be found in the [Scope and Content](scope.html) section.

### Purpose
The goal of this Implementation Guide is to define the European standard for Medication Prescriptions and Dispense data to facilitate the harmonization among the national initiatives and prepare the ground for the European EHR eXchange Format (EEHRxF).

This project is the result of a cross SDO collaboration with IHE Pharmacy, realized in collaboration with several other European and national organizations and projects.

The aspiration of this guide is that of being used as part of EEHRxF specifications, providing a base that can be adopted by European national guides as well as by MyHealth@EU for the EU cross-border services.

### Background

Medication Prescription and Dispense FHIR implementation guide is an open collaborative work of several projects and initiatives:
- [**IHE**](https://www.ihe.net/): authoring the global MPD profile
- [**HL7 Europe**](https://www.hl7europe.org/): authoring the EU MPD profile and providing platform for EHDS-related collaboration
- [**Xt-EHR**](https://www.xt-ehr.eu): preparing future EHDS implementing acts (WP 6, Task 6.2 "ePrescription and eDispensation")
- [**xShare**](https://xshare-project.eu): implementing EEHRxF in various adoption sites
- [**XpanDH**](https://xpandh-project.iscte-iul.pt): working on proof of concept on European exchange format (EEHRxF) on FHIR

The working group also includes participants from MyHealth@EU, HL7 Pharmacy, several EHR vendors, plus a variety of interested individuals from over 20 countries.   
Please refer to the [Authors and Contributors](authors.html) page for additional information.


