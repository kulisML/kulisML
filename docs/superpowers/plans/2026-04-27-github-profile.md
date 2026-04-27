# GitHub Profile README Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build a complete local `kulisML` GitHub profile repository with a bright AI product-builder README, custom animated hero, dynamic contribution snake workflow, and validation script.

**Architecture:** The repository is a standard GitHub special profile repo: `README.md` in the root, static visual assets in `assets`, and automation in `.github/workflows`. The README uses GitHub-compatible Markdown plus safe animated SVG assets that can render inside a GitHub profile.

**Tech Stack:** Markdown, SVG, GitHub Actions, PowerShell validation.

---

### Task 1: Profile Validation Script

**Files:**
- Create: `scripts/validate-profile.ps1`

- [x] **Step 1: Write the failing validation script**

The script checks for the root README, bright hero SVG, snake workflow, required profile copy, all current repositories, dynamic widget references, and forbidden placeholder copy.

- [x] **Step 2: Run the validation script before implementation**

Run:

```powershell
.\scripts\validate-profile.ps1
```

Expected: FAIL before the README and bright hero exist.

### Task 2: Bright Animated Hero

**Files:**
- Create: `assets/bright-product-hero.svg`

- [x] **Step 1: Add the custom SVG hero**

Create a bright animated product-style SVG hero with a white base, coral/yellow/teal/purple waves, AI assistant, workflow cards, code panel, ML chart, database blocks, and soft product shadows.

- [x] **Step 2: Validate asset presence**

Run the validation script after README and workflow exist. Expected: PASS includes SVG root, bright wave, bot, workflow card, and ML chart checks.

### Task 3: GitHub Profile README

**Files:**
- Create: `README.md`

- [x] **Step 1: Add hero and contact section**

Add the bright hero, title, Telegram badge, email badge, and profile view badge.

- [x] **Step 2: Add positioning and pillars**

Add short profile copy and the three pillars: AI / ML, Full-Stack Systems, and Frontend Craft.

- [x] **Step 3: Add featured builds**

Add curated descriptions for `gitlab-telegram`, `bulbai2`, `FocusGuard`, and `HakatonHungerGames` without external repo pin cards.

- [x] **Step 4: Add Project Shelf**

List all visible repositories in a compact table so every repo is represented without weakening the first impression.

- [x] **Step 5: Add motion layer**

Add light-themed GitHub stats, streak, activity graph, and contribution snake image references.

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
.\scripts\validate-profile.ps1
```

Expected: `Profile validation passed.`

- [ ] **Step 2: Check git status**

Run:

```powershell
git status --short
```

Expected: only intended profile redesign files are changed.
