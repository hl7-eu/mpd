# Multi-Version FHIR IG Validation and Deployment

This repository uses GitHub Actions to automatically validate both R4 and R5 versions of the FHIR Implementation Guide and deploy R5 to a separate repository:

- **R4 build** → validated in CI, built locally for publishing
- **R5 build** → validated in CI and deployed to a **separate repository** (`mpd-r5`)

## Workflows

### 1. `deploy.yml` - Validate and Deploy R5 (runs on push to any branch)
- Validates both R4 and R5 IGs
- Deploys R5 to separate `mpd-r5` repository
- Maintains matching branch names across repos
- R4 is only validated, not deployed (build locally when needed)

### 2. `validate.yml` - Validation Only (runs on Pull Requests)
- Validates both R4 and R5 IGs
- Does NOT deploy (validation only)

## Required Setup

### Step 1: Create a GitHub Personal Access Token

The deployment workflow needs a Personal Access Token to push to this repository and the R5 repository.

**How to create the token:**

1. Go to your GitHub account settings: [https://github.com/settings/tokens](https://github.com/settings/tokens)
2. Click **"Generate new token"** → **"Generate new token (classic)"**
3. Give it a descriptive name (e.g., "MPD Multi-Version Deploy")
4. Set expiration (recommended: 90 days or less for security)
5. Select the following scopes:
   - ✅ `repo` (Full control of private repositories)
   - ✅ `workflow` (Update GitHub Action workflows)
6. Click **"Generate token"** at the bottom
7. **IMPORTANT**: Copy the token immediately (you won't see it again!)

### Step 2: Add the Token as a Repository Secret

**In THIS repository (`mpd`):**

1. Go to **Settings** → **Secrets and variables** → **Actions**
2. Click **"New repository secret"**
3. Name: `DEPLOY_TOKEN`
4. Value: Paste the Personal Access Token you created
5. Click **"Add secret"**

### Step 3: Configure Repository Variables (Optional)

By default, the R5 build deploys to `{owner}/mpd-r5` where `{owner}` is automatically detected from the repository (e.g., `hl7-eu/mpd-r5` for the main repo, `oijauregui/mpd-r5` for your fork).

**To use a different R5 repository:**

1. Go to **Settings** → **Secrets and variables** → **Actions** → **Variables** tab
2. Click **"New repository variable"**
3. Name: `R5_REPO_URL`
4. Value: `owner/repo-name` (e.g., `my-org/custom-r5-repo`)
5. Click **"Add variable"**

### Step 4: Create the R5 Target Repository

1. Create a new repository on GitHub (e.g., `mpd-r5` in the same organization)
2. Make sure your `DEPLOY_TOKEN` has write access to it
3. The workflow will automatically:
   - Detect the correct repository owner
   - Create matching branches
   - Push R5 content to the repository root
   - Trigger the HL7 auto-ig-builder

## How It Works

### On Push to Any Branch:

**Step 1: Validation (runs in parallel)**
- Validates R4 IG (preprocessing → IG Publisher → validation)
- Validates R5 IG (preprocessing → IG Publisher → validation)

**Step 2: Deployment (only if both validations pass)**
- **R5 Deployment**:
  - R5 files from `igs/mpd-r5/` are pushed to the **mpd-r5** repository root
  - Creates matching branch name in R5 repo if it doesn't exist
  - Triggers HL7 auto-ig-builder for publishing

**Note**: R4 is only validated, not deployed. Build R4 locally when needed using `./_genonce.sh`

### On Pull Requests:

- Only runs validation (no deployment)
- Must pass validation before merge is allowed

## Repository Structure

```
mpd/                          # This repository (source + validation)
├── .github/workflows/        # Workflow definitions
│   ├── deploy.yml           # Validates R4 & R5, deploys R5 only
│   └── validate.yml         # Validates only (PRs)
├── ig-src/                  # Source files (edit here!)
│   ├── input/fsh/           # FSH definitions
│   ├── input/pagecontent/   # Markdown pages
│   └── sushi-config.liquid.yaml
└── igs/                     # Generated (not committed)
    └── mpd-r5/             # R5 build artifacts (deployed to mpd-r5 repo)
```

**To build R4 locally:**
```bash
./_preprocessMultiVersion.sh  # Generate R4 files in root
./_updatePublisher.sh -y       # Update IG Publisher
./_genonce.sh                  # Build R4 IG
```

## Manual Workflow Trigger

You can manually trigger the deployment workflow:

1. Go to **Actions** tab
2. Select "Validate and Deploy R4 & R5"
3. Click **"Run workflow"**
4. Select the branch
5. Click **"Run workflow"** button