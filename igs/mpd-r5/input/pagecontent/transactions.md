This implementation guide defines the data models for exchanging European ePrescription and eDispensation information; it does not define the exchange mechanisms by which data flows between systems. See the [Scope](scope.html) section for more.

Content definition alone is necessary, but not sufficient for achieving interoperability. Consistent, interoperable ePrescription and eDispensation workflows, including the key EHDS goal of cross-border dispensation, require a common set of aligned transactions.

> **Note:** This section is informative. MyHealth@EU's cross-border infrastructure has its own rules, and many countries already have ePrescribing infrastructure in place with existing transaction definitions. This guide does not define cross-border specifications; the following is directional, not prescriptive.

Implementers, including EHR developers building transaction support and EU countries without existing transaction infrastructure, should consider combining the data models defined herein with the transactions in the [IHE Medication Prescription and Dispense (MPD) specification](https://profiles.ihe.net/PHARM/MPD/).

The following examples illustrate how these transactions could support ePrescription workflows in the EU:

* A patient receives care abroad. Their care provider connects to MyHealth@EU; the National Contact Point of the country of treatment uses [PHARM-7: Retrieve Medication Orders](https://profiles.ihe.net/PHARM/MPD/pharm-7.html) to obtain the patient's active orders from the National Contact Point of the home country.
* The National Contact Point of the country of treatment uses [PHARM-8: Submit Medication Dispense](https://profiles.ihe.net/PHARM/MPD/pharm-8.html) to report the dispensation to the National Contact Point of the patient's home country.
* A clinician prescribes medication; the EHR uses [PHARM-5: Submit Medication Order](https://profiles.ihe.net/PHARM/MPD/pharm-5.html) to submit an EEHRxF-formatted prescription to the national repository, making it available for dispensation.




