Param()
$ErrorActionPreference = 'Stop'
$py = Join-Path (Get-Location) '.venv\Scripts\python.exe'
if (Test-Path $py) {
    Start-Process -FilePath $py -ArgumentList '-m', 'pytest', '-q' -Wait
} else {
    python -m pytest -q
}
