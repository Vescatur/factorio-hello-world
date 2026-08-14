# Symlink src/ into the Factorio mods folder as tycoon_1.0.0.
#
# The target is resolved from this script's own location, not the shell's
# working directory -- a relative path silently produced a junction pointing at
# a folder that does not exist, and Factorio then loads without the mod at all,
# which looks exactly like a clean run.

$src  = Join-Path (Split-Path $PSScriptRoot -Parent) "src"
$link = Join-Path $env:APPDATA "Factorio\mods\tycoon_1.0.0"

if (-not (Test-Path $src)) {
    Write-Error "Mod source not found at: $src"
    exit 1
}

if (Test-Path $link) {
    # rmdir removes the junction itself; Remove-Item -Recurse would follow it.
    cmd /c "rmdir `"$link`""
}

cmd /c "mklink /J `"$link`" `"$src`""
