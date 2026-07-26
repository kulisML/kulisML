$ErrorActionPreference = "Stop"

$root = Resolve-Path (Join-Path $PSScriptRoot "..")
$readme = Join-Path $root "README.md"
$hero = Join-Path $root "assets/readme/hero.svg"

foreach ($path in @($readme, $hero)) {
    if (-not (Test-Path -LiteralPath $path)) {
        throw "Missing required file: $path"
    }
}

$readmeText = Get-Content -Raw -LiteralPath $readme
$heroText = Get-Content -Raw -LiteralPath $hero

foreach ($text in @("yandex-2gis-maps-scraper", "handy-llm-postprocessing", "economy-tokens-pepe", "KOD+ 2027 Infra Arena")) {
    if (-not $readmeText.Contains($text)) {
        throw "Missing selected work: $text"
    }
}

if ($readmeText -match "github-readme-stats|contribution-grid-snake|Project Shelf") {
    throw "README still contains removed profile clutter"
}

foreach ($text in @("<svg", "<title", "<desc", 'viewBox="0 0 1200 400"')) {
    if (-not $heroText.Contains($text)) {
        throw "Hero is missing: $text"
    }
}

Write-Host "Profile validation passed."
