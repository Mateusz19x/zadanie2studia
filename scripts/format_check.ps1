Param()
$ErrorActionPreference = 'Stop'
$py = Join-Path (Get-Location) '.venv\Scripts\python.exe'
if (Test-Path $py) {
    Start-Process -FilePath $py -ArgumentList '-m', 'black', '--check', '.' -Wait
    Start-Process -FilePath $py -ArgumentList '-m', 'isort', '--check-only', '.' -Wait
} else {
    python -m black --check .
    python -m isort --check-only .
}
Write-Host "Format checks passed"
