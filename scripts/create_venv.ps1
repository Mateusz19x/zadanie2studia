Param()
$ErrorActionPreference = 'Stop'
$venvPath = Join-Path (Get-Location) '.venv'
if (-not (Test-Path $venvPath)) {
    python -m venv $venvPath
}
$py = Join-Path $venvPath 'Scripts\python.exe'
Start-Process -FilePath $py -ArgumentList '-m', 'pip', 'install', '--upgrade', 'pip' -Wait
if (Test-Path 'requirements.txt') {
    Start-Process -FilePath $py -ArgumentList '-m', 'pip', 'install', '-r', 'requirements.txt' -Wait
}
Write-Host "Virtualenv ready at $venvPath"
