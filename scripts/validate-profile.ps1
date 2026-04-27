$ErrorActionPreference = "Stop"

$Root = Resolve-Path (Join-Path $PSScriptRoot "..")
$Readme = Join-Path $Root "README.md"
$Banner = Join-Path $Root "assets/ai-profile-banner.svg"
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
    "AI Full-Stack Developer building intelligent web products",
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
    "readme-typing-svg",
    "github-contribution-grid-snake",
    "github-readme-stats"
)

foreach ($item in $requiredReadmeText) {
    Assert-Contains $Readme $item "README text '$item'"
}

Assert-Contains $Banner "<svg" "SVG root"
Assert-Contains $Banner "neural" "banner neural motif"
Assert-Contains $Workflow "Platane/snk/svg-only@v3" "snake action"
Assert-Contains $Workflow "github-contribution-grid-snake-dark.svg?palette=github-dark" "dark snake output"
Assert-Contains $Workflow "target_branch: output" "output branch publish"
Assert-NotContainsRegex $Readme "(TBD|TODO|coming soon|lorem ipsum)" "placeholder copy"

Write-Host "Profile validation passed."
