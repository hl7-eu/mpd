Systems SHALL support searching for medication prescriptions and dispenses for a single subject (Patient).  
The priority searches are for prescriptions of a certain patient and dispenses related to a specific prescription.  
The following tables list the priority search parameters, most of which are defined in FHIR core specification.  

### Search for MedicationRequest (medication prescriptions)

The following search parameters should be considered for prescriptions.

| Search parameter | FHIR profile element | Notes |
|---|---|---|
| patient | MedicationRequest.subject (Patient) | Mandatory to support, both independently and in combination with other search parameters. Search parameter `subject` may be considered equivalent in most cases, since there is no expectation to support subject as Group. |
| identifier | MedicationRequest.identifier | When a prescription contains only one medication, the identifier value is typically the same as the prescription number. |
| group-or-identifier (IHE MPD) | MedicationRequest.groupIdentifier and/or .identifier| May be required for multi-item prescriptions, where `groupIdentifier` represents the prescription number (see also IHE MPD combined search for `identifier` OR `groupIdentifier`). |
| requester | MedicationRequest.requester | Used to search prescriptions by prescriber. |
| authoredOn | MedicationRequest.authoredOn | Used to search prescriptions by the time period of issuance. |
| status | MedicationRequest.status | Typically used to filter for active requests. |
{:.table-bordered .table-striped .thead-light}

`MedicationRequest.dispenseRequest.validityPeriod` may also need to be considered when determining actionable prescriptions.


### Search for MedicationDispense (medication dispenses)

The following search parameters should be considered for dispenses.

| Search parameter | FHIR profile element | Notes |
|---|---|---|
| patient | MedicationDispense.subject (Patient) | Mandatory to support, both independently and in combination with other search parameters. Search parameter `subject` may be considered equivalent in most cases, since there is no expectation to support subject as Group. |
| identifier | MedicationDispense.identifier |  |
| status | MedicationDispense.status |  |
| prescription | MedicationDispense.authorizingPrescription |  |
| performer | MedicationDispense.performer.actor |  |
| recorded / whenHandedOver | MedicationDispense.recorded or .whenHandedOver | In R4 profile, `recorded` is provided via an extension. In some implementations, the same information may instead be conveyed using `whenHandedOver`. The requirement is to enable searching for dispenses within a specified time period. |
{:.table-bordered .table-striped .thead-light}

Please refer to [EU Health Data API implementation guide](https://hl7.eu/fhir/health-data-api) for further information about API requirements. 