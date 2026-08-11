$factorioExe = "C:\Program Files (x86)\Steam\steamapps\common\Factorio\bin\x64\factorio.exe"
$saveName    = "dev.zip"

if (-not (Test-Path $factorioExe)) {
    Write-Error "Factorio executable not found at: $factorioExe`nUpdate `$factorioExe in this script."
    exit 1
}

$args = @(
    "--load-game", $saveName,
    "--disable-audio"
)

Start-Process -FilePath $factorioExe -ArgumentList $args