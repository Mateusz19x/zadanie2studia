Param()
$ErrorActionPreference = 'Stop'
$py = Join-Path (Get-Location) '.venv\Scripts\python.exe'
if (Test-Path $py) {
    Start-Process -FilePath $py -ArgumentList '-m', 'pylint', 'app', '--persistent=n', '--score=n' -Wait
} else {
    python -m pylint app --persistent=n --score=n
}
Write-Host "Lint finished"
