Param()
$ErrorActionPreference = 'Stop'
Write-Host "Cleaning project artifacts..."
Remove-Item -Recurse -Force .venv -ErrorAction SilentlyContinue
Get-ChildItem -Path . -Recurse -Directory -Filter "__pycache__" | Remove-Item -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force build, dist, .pytest_cache -ErrorAction SilentlyContinue
Write-Host "Clean complete."
