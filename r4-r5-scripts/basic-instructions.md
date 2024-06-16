# How to edit this guide

This HL7 FHIR IG uses a common development environment for both the FHIR R4 and the R5 versions.

To support this there are speciifc instructions that have to be followeg for:
 1. the design and the storage of the fsh files
 1. building the guide (or running sushi)
 1. pushing changes to GitHub


 ## Design and storage of the FSH file

 ### FHIR artefacts

 For each HL7 FHIR artefact specified by this guide, the FSH files defining this artefact, have to be designed separating:
 * the Common R4 and R5 rules
 * the R4 rules, and
 * the R5 rules
 
 1. The first have to be specified as RulesSet and stored in the appropriate input/fsh folder, *excluding input/fsh/diff-fhir-rel*. See e.g. input/fsh/profiles/common/medication-mpd.fsh
 1. The second has to be specified as fsh artefact (e.g. Profile) by adding only the R4 rules to the Common RuleSets and stored in the appropriate input\diff\r4 folder (see. e.g. input\diff\r4\profiles\medication-r4.fsh)
1. The latter has to be specified as fsh artefact (e.g. Profile) by adding only the R5 rules to the Common RuleSets and stored in the appropriate input\diff\r5 folder (see. e.g.  input\diff\r5\profiles\medication-r5.fsh)

#### Exceptions
* it doesn't apply if the artefact is only defined by common R4 and R5 rules 


### Alias

*TO BE DONE*

### Input folder structure

The input folder follows the usual structure of the FHIR IG with these "special" folders:
* *input\diff\r4*: it includes subfolders where R4 FSH artefacts are specified. **This is the folder where R4 FSH artefacts have to be edited**
* *input\diff\r5*: it includes subfolders where R5 FSH artefacts are specified. **This is the folder where R5 FSH artefacts have to be edited**
* *input/fsh/diff-fhir-rel*: it is the folder where the FSH artefacts are copied when the guide is built. **This folder shall be used as a sort of read-only dir** . It is deleted any time the script are run.

 

## Building the guide


## Pushing changes to GitHub
