# GitHub Copilot Instructions for EU Medicinal Product Dictionary (MPD)

## Project Context
This is a FHIR Implementation Guide (IG) for the European Medicinal Product Dictionary. The project uses:
- **FHIR Shorthand (FSH)** for defining profiles, extensions, and resources
- **SUSHI** for compiling FSH to FHIR JSON
- **HL7 IG Publisher** for generating the implementation guide
- **Multi-version support** for both FHIR R4 and R5

## Key Directories
- `input/fsh/` - FSH source files for profiles, models, and examples
- `input/diff/` - Version-specific differences between R4 and R5
- `MULTIVERSION/` - Multi-version build scripts and configurations
- `r4-r5-scripts/` - Build scripts for specific FHIR versions

## Coding Guidelines
When working with this codebase:

1. **FSH Files**: Follow FHIR Shorthand syntax and conventions
2. **Profile Names**: Use consistent naming with `EuMpd` prefix
3. **Extensions**: Place custom extensions in appropriate subdirectories
4. **Examples**: Ensure all examples validate against their profiles
5. **Version Compatibility**: Consider both R4 and R5 compatibility when making changes

## Common Tasks
- Creating new profiles should extend appropriate base FHIR resources
- Use RuleSets for common constraints across profiles
- Test changes with SUSHI compilation before committing
- Update both R4 and R5 versions when applicable

## Build Process
The project uses automated build scripts:
- `sushi .` to compile FSH
- `_build.sh` for full IG generation
- Multi-version builds via `MULTIVERSION/` scripts