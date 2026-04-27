# GitHub Profile README Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build a complete local `kulisML` GitHub profile repository with a futuristic AI README, custom banner, dynamic contribution snake workflow, and validation script.

**Architecture:** The repository is a standard GitHub special profile repo: `README.md` in the root, static visual assets in `assets`, and automation in `.github/workflows`. The README uses GitHub-compatible Markdown and external readme widgets for dynamic profile content.

**Tech Stack:** Markdown, SVG, GitHub Actions, PowerShell validation.

---

### Task 1: Profile Validation Script

**Files:**
- Create: `scripts/validate-profile.ps1`

- [x] **Step 1: Write the failing validation script**

The script checks for the root README, banner SVG, snake workflow, required profile copy, all current repositories, dynamic widget references, and forbidden placeholder copy.

- [x] **Step 2: Run the validation script before implementation**

Run:

```powershell
& 'C:\Users\рс\Desktop\github acc\kulisML\scripts\validate-profile.ps1'
```

Expected: FAIL with `Missing required file: ...\README.md`.

### Task 2: Static Profile Assets

**Files:**
- Create: `assets/ai-profile-banner.svg`

- [x] **Step 1: Add the custom SVG banner**

Create a 1200x360 futuristic AI banner with dark background, neural graph motif, cyan/violet/green accents, and readable profile text.

- [ ] **Step 2: Validate asset presence**

Run the validation script after README and workflow exist. Expected: PASS includes SVG root and neural motif checks.

### Task 3: GitHub Profile README

**Files:**
- Create: `README.md`

- [x] **Step 1: Add hero and contact section**

Add the banner, title, typing animation, Telegram badge, email badge, and profile view badge.

- [x] **Step 2: Add positioning and pillars**

Add short profile copy and the three pillars: AI / ML, Full-Stack Systems, and Frontend Craft.

- [x] **Step 3: Add featured projects**

Add curated descriptions and GitHub Readme Stats pin cards for `gitlab-telegram`, `bulbai2`, `FocusGuard`, and `HakatonHungerGames`.

- [x] **Step 4: Add Project Galaxy**

List all visible repositories in a compact table so every repo is represented without weakening the first impression.

- [x] **Step 5: Add stats and snake section**

Add GitHub stats, streak, activity graph, and contribution snake image references.

### Task 4: Contribution Snake Workflow

**Files:**
- Create: `.github/workflows/snake.yml`

- [x] **Step 1: Add workflow triggers**

Configure `workflow_dispatch`, daily schedule, and push-to-main triggers.

- [x] **Step 2: Generate snake SVGs**

Use `Platane/snk/svg-only@v3` with `${{ github.repository_owner }}` and generate light/dark SVG outputs.

- [x] **Step 3: Publish generated assets**

Use `crazy-max/ghaction-github-pages@v4` to publish the generated `dist` folder to the `output` branch.

### Task 5: Final Verification

**Files:**
- Use: `scripts/validate-profile.ps1`

- [ ] **Step 1: Run validation script**

Run:

```powershell
& 'C:\Users\рс\Desktop\github acc\kulisML\scripts\validate-profile.ps1'
```

Expected: `Profile validation passed.`

- [ ] **Step 2: Check git status**

Run:

```powershell
git status --short
```

Expected: new files only in the local profile repository.
