# Symlink src/ into the Factorio mods folder as <name>_<version> from src/info.json.
#
# The target is resolved from this script's own location, not the shell's
# working directory -- a relative path silently produced a junction pointing at
# a folder that does not exist, and Factorio then loads without the mod at all,
# which looks exactly like a clean run.

$src = Join-Path (Split-Path $PSScriptRoot -Parent) "src"

if (-not (Test-Path $src)) {
    Write-Error "Mod source not found at: $src"
    exit 1
}

# Read rather than hardcode: Factorio refuses a mod whose folder name disagrees
# with the name in its info.json, so a rename here has to follow that file.
$info = Get-Content (Join-Path $src "info.json") -Raw | ConvertFrom-Json
$mods = Join-Path $env:APPDATA "Factorio\mods"
$link = Join-Path $mods "$($info.name)_$($info.version)"

if (Test-Path $link) {
    # rmdir removes the junction itself; Remove-Item -Recurse would follow it.
    cmd /c "rmdir `"$link`""
}

cmd /c "mklink /J `"$link`" `"$src`""
