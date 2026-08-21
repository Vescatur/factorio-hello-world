# Run a Lua harness as a scenario in the real Factorio client and collect what it wrote.
#
# Takes parameters, unlike the other scripts here, because it is a runner rather
# than a single fixed job.
#
# The headless server (tools/check/probe.ps1) is the cheaper way to ask the game
# questions and should be preferred. This exists for the two things it cannot do:
#
#   * a real player. build_from_cursor, the cursor stack, build/reach distance and
#     rotate-by-player only exist for a character, and a headless server cannot
#     make one -- create_character on an offline player fails outright with "User
#     isn't connected; can't create character." A harness that script-creates
#     entities instead bypasses on_built_entity and proves nothing about a hand
#     placement.
#
#   * rendering. game.take_screenshot silently does nothing headless, so visual
#     evidence has to come from the client.
#
# Launch goes through STEAM, exactly like tools/run/playtest.ps1. Running factorio.exe
# directly raises a confirmation dialog no script can answer, and the run then
# comes up unable to see the scenario at all -- "Scenario ... not found" for a
# directory that is plainly on disk, which sends you hunting the wrong bug. Steam
# passes trailing arguments straight through without asking.
#
# The harness writes its own verdict with helpers.write_file into script-output,
# and that artefact appearing IS the completion signal: launching through Steam
# leaves no process handle and no exit code to read.

param(
    [Parameter(Mandatory = $true)][string]$Lua,
    [string]$Scenario = "verify",
    [string[]]$Expect = @("report.txt"),
    [int]$Timeout = 240,
    [switch]$Keep
)

# Point at STEAM, not at Factorio -- see the note above.
$steamExe     = "C:\Program Files (x86)\Steam\steam.exe"
$factorioId   = "427520"
$scenariosDir = Join-Path $env:APPDATA "Factorio\scenarios"
$outputDir    = Join-Path $env:APPDATA "Factorio\script-output"
$stateFile    = Join-Path $PSScriptRoot ".verify\rcon.json"

if (-not (Test-Path $steamExe)) { Write-Error "Steam executable not found at: $steamExe"; exit 1 }
if (-not (Test-Path $Lua)) { Write-Error "Harness not found at: $Lua"; exit 1 }

# Both processes want the same user data directory, and the loser reports a lock
# file problem rather than a conflict.
if (Test-Path $stateFile) {
    Write-Error "A verification server is running. Run tools/check/probe.ps1 -Action stop first."
    exit 1
}

$scenarioDir = Join-Path $scenariosDir $Scenario
$collected   = Join-Path $outputDir $Scenario

New-Item -ItemType Directory -Path $scenarioDir -Force | Out-Null
Copy-Item $Lua (Join-Path $scenarioDir "control.lua") -Force
Remove-Item $collected -Recurse -Force -ErrorAction SilentlyContinue

# Steam hands back no handle for the game it launches, so the only safe cleanup is
# to kill whatever appeared that was not running before -- never every factorio
# process, in case one of them is a game being played.
$before = @(Get-Process factorio -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Id)

Start-Process -FilePath $steamExe -ArgumentList @(
    "-applaunch", $factorioId, "--load-scenario", $Scenario, "--disable-audio")

$elapsed = 0
$ready = $false
while ($elapsed -lt $Timeout) {
    Start-Sleep -Seconds 2
    $elapsed += 2
    $present = $true
    foreach ($name in $Expect) {
        if (-not (Test-Path (Join-Path $collected $name))) { $present = $false }
    }
    if ($present) { $ready = $true; break }
}

foreach ($running in (Get-Process factorio -ErrorAction SilentlyContinue)) {
    if ($before -notcontains $running.Id) {
        Stop-Process -Id $running.Id -Force -ErrorAction SilentlyContinue
    }
}
if (-not $Keep) { Remove-Item $scenarioDir -Recurse -Force -ErrorAction SilentlyContinue }

if (-not $ready) {
    # A harness that dies takes its report with it, which is why the templates
    # pcall their bodies and write the report regardless. Failing that, the game's
    # own log is the only witness.
    Write-Host "=== last errors from factorio-current.log ==="
    $log = Join-Path $env:APPDATA "Factorio\factorio-current.log"
    if (Test-Path $log) { Select-String -Path $log -Pattern "Error|Exception" | Select-Object -Last 8 }
    Write-Error "Harness did not produce $($Expect -join ', ') within ${Timeout}s."
    exit 1
}

foreach ($name in $Expect) {
    $path = Join-Path $collected $name
    Write-Host "=== $name ==="
    if ($name -match '\.(txt|json|log|csv)$') { Get-Content $path } else { Write-Host $path }
}
Write-Host ""
Write-Host "Artefacts in $collected -- delete it when done."
