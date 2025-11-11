# Multi-Version FHIR IG Validation and Deployment

This repository uses GitHub Actions to automatically validate and deploy both R4 and R5 versions of the FHIR Implementation Guide:

- **R4 build** → deployed to the **root** of this repository
- **R5 build** → deployed to a **separate repository** (`mpd-r5`)

## Workflows

### 1. `deploy.yml` - Validate and Deploy (runs on push to any branch)
- Validates both R4 and R5 IGs
- Deploys R4 to root of this repo
- Deploys R5 to separate `mpd-r5` repository
- Maintains matching branch names across repos

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

By default, the R5 build deploys to `{owner}/mpd-r5` (where `{owner}` is your GitHub username/org).

**To use a different R5 repository:**

1. Go to **Settings** → **Secrets and variables** → **Actions** → **Variables** tab
2. Click **"New repository variable"**
3. Name: `R5_REPO_URL`
4. Value: `owner/repo-name` (e.g., `oijauregui/my-custom-r5-repo`)
5. Click **"Add variable"**

### Step 4: Create the R5 Target Repository

1. Create a new repository on GitHub (e.g., `mpd-r5`)
2. Make sure your `DEPLOY_TOKEN` has write access to it
3. The workflow will automatically:
   - Create matching branches
   - Push R5 content to the repository root
   - Trigger the HL7 auto-ig-builder

## How It Works

### On Push to Any Branch:

**Step 1: Validation (runs in parallel)**
- Validates R4 IG (preprocessing → IG Publisher → validation)
- Validates R5 IG (preprocessing → IG Publisher → validation)

**Step 2: Deployment (only if both validations pass)**
- **R4 Deployment**:
  - Generated R4 files are committed to the **root** of this repository
  - Includes: `sushi-config.yaml`, `ig.ini`, `input/`, `ig-template/`, etc.
  - Branch name stays the same
- **R5 Deployment**:
  - R5 files from `igs/mpd-r5/` are pushed to the **mpd-r5** repository root
  - Creates matching branch name in R5 repo if it doesn't exist
  - Triggers HL7 auto-ig-builder for publishing

**Important**: The workflow skips deployment if the commit is from "GitHub Actions Bot" to prevent infinite loops.

### On Pull Requests:

- Only runs validation (no deployment)
- Must pass validation before merge is allowed

## Repository Structure

```
mpd/                          # This repository
├── .github/workflows/        # Workflow definitions
│   ├── deploy.yml           # Validates & deploys both versions
│   └── validate.yml         # Validates only (PRs)
├── ig-src/                  # Source files (edit here!)
│   ├── input/fsh/           # FSH definitions
│   ├── input/pagecontent/   # Markdown pages
│   └── sushi-config.liquid.yaml
├── igs/                     # Generated (not committed)
│   └── mpd-r5/             # R5 build artifacts
├── input/                   # R4 build (committed to root)
├── sushi-config.yaml        # R4 config (committed to root)
└── ig.ini                   # R4 config (committed to root)
```

## Manual Workflow Trigger

You can manually trigger the deployment workflow:

1. Go to **Actions** tab
2. Select "Validate and Deploy R4 & R5"
3. Click **"Run workflow"**
4. Select the branch
5. Click **"Run workflow"** button