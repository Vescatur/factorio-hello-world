# Point to your STEAM executable, NOT the Factorio executable
$steamExe   = "C:\Program Files (x86)\Steam\steam.exe"
$factorioId = "427520"
$saveName   = "dev.zip"

if (-not (Test-Path $steamExe)) {
    Write-Error "Steam executable not found at: $steamExe"
    exit 1
}

# Combine the Steam launch command with your Factorio arguments
$args = @(
    "-applaunch", $factorioId,
    "--load-game", $saveName,
    "--disable-audio"
)

# Tell Steam to run it. Steam accepts its own arguments and passes the rest to Factorio without a warning.
Start-Process -FilePath $steamExe -ArgumentList $args