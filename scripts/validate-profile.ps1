$ErrorActionPreference = "Stop"

$Root = Resolve-Path (Join-Path $PSScriptRoot "..")
$Readme = Join-Path $Root "README.md"
$Banner = Join-Path $Root "assets/bright-product-hero.svg"
$Workflow = Join-Path $Root ".github/workflows/snake.yml"

function Assert-File {
    param([string]$Path)

    if (-not (Test-Path -LiteralPath $Path)) {
        throw "Missing required file: $Path"
    }
}

function Assert-Contains {
    param(
        [string]$Path,
        [string]$Needle,
        [string]$Label
    )

    $content = Get-Content -LiteralPath $Path -Raw
    if (-not $content.Contains($Needle)) {
        throw "Missing $Label in $Path"
    }
}

function Assert-NotContainsRegex {
    param(
        [string]$Path,
        [string]$Pattern,
        [string]$Label
    )

    $content = Get-Content -LiteralPath $Path -Raw
    if ($content -match $Pattern) {
        throw "Found forbidden $Label in $Path"
    }
}

Assert-File $Readme
Assert-File $Banner
Assert-File $Workflow

$requiredReadmeText = @(
    "kulissssss / kulisML",
    "AI Product Builder crafting ML systems",
    "Aspiring Machine Learning Engineer",
    "AI / ML",
    "Full-Stack Systems",
    "Frontend Craft",
    "gitlab-telegram",
    "bulbai2",
    "FocusGuard",
    "HakatonHungerGames",
    "-------",
    "hakanot4",
    "RabittMQ-Calary",
    "Razum2.0-HAC",
    "-----------",
    "Click",
    "KulisMLbot",
    "gut",
    "fsdf",
    "mm3",
    "@kulissssss",
    "kulismlengineer107@gmail.com",
    "github-contribution-grid-snake",
    "bright-product-hero.svg",
    "Featured Builds",
    "Product Pipeline",
    "Project Shelf",
    "Product Studio",
    "AI Product Builder"
)

foreach ($item in $requiredReadmeText) {
    Assert-Contains $Readme $item "README text '$item'"
}

Assert-Contains $Banner "<svg" "SVG root"
Assert-Contains $Banner "wave-coral" "bright coral wave"
Assert-Contains $Banner "float-bot" "animated assistant bot"
Assert-Contains $Banner "flow-card" "animated workflow card"
Assert-Contains $Banner "ml-chart" "ML chart motif"
Assert-Contains $Workflow "Platane/snk/svg-only@v3" "snake action"
Assert-Contains $Workflow "github-contribution-grid-snake-dark.svg?palette=github-dark" "dark snake output"
Assert-Contains $Workflow "target_branch: output" "output branch publish"
Assert-NotContainsRegex $Readme "(TBD|TODO|coming soon|lorem ipsum)" "placeholder copy"
Assert-NotContainsRegex $Readme "github-readme-stats\.vercel\.app/api/pin" "external repo pin widgets"
Assert-NotContainsRegex $Readme "readme-typing-svg" "external typing animation"
Assert-NotContainsRegex $Readme "No description provided" "GitHub missing-description copy"
Assert-NotContainsRegex $Readme "tokyonight|react-dark|0D1117|premium-ai-hero|space|galaxy" "old dark space styling"

Write-Host "Profile validation passed."
