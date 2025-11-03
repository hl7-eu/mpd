# Multi-Version FHIR Implementation Guide

This repository implements a multi-version FHIR IG that supports both R4 and R5 from a single source.

## Structure

```
.
├── ig-src/                      # Source files (with .liquid.* templates)
│   ├── input/
│   │   ├── fsh/                # FSH source files
│   │   ├── pagecontent/        # Markdown pages
│   │   └── ...
│   ├── ig-template/            # Template customizations
│   ├── sushi-config.liquid.yaml
│   └── ig.liquid.ini
├── igs/
│   ├── mpd-r4/             # Generated R4 build (not committed)
│   └── mpd-r5/             # Generated R5 build (not committed)
├── context-R4.json             # R4 Liquid variables
├── context-R5.json             # R5 Liquid variables
├── _preprocessMultiVersion.sh  # Generate version-specific files
└── _preProcessAndCheckAll.sh   # Build and validate all versions
```

## Prerequisites

- Node.js and npm
- SUSHI: `npm install -g fsh-sushi`
- Java (for IG Publisher)

## Quick Start

1. **Initialize** (if starting fresh):
   ```bash
   ./_initMultiVersionRepo.sh
   ```

2. **Edit source files** in `ig-src/` (use `.liquid.*` extensions for templated files)

3. **Preprocess and build**:
   ```bash
   ./_preProcessAndCheckAll.sh
   ```

## Liquid Template Syntax

Use Liquid template syntax in your `.liquid.*` files:

### Conditional Content
```liquid
{% if isR4 %}
This content only appears in R4
{% endif %}

{% if isR5 %}
This content only appears in R5
{% endif %}
```

### Variables
```liquid
FHIR Version: {{ fhirVersion }}
Version Code: {{ r-code }}
```

### Available Variables

| Variable | R4 Value | R5 Value | Description |
|----------|----------|----------|-------------|
| `isR4` | `true` | `false` | Boolean for R4 |
| `isR5` | `false` | `true` | Boolean for R5 |
| `fhirVersion` | `4.0.1` | `5.0.0` | FHIR version |
| `r-code` | `r4` | `r5` | Lowercase code |
| `R-code` | `R4` | `R5` | Uppercase code |

## Development Workflow

1. Edit files in `ig-src/`
2. Run `_preprocessMultiVersion.sh` to generate version-specific content
3. Run `_preProcessAndCheckAll.sh` to validate both versions
4. Commit changes to `ig-src/` only (generated files are ignored)

## CI/CD

See `.github/workflows/README.md` for automated validation and deployment workflows.

