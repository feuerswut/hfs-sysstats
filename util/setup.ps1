# Installs this repo's dependencies. Safe to re-run. Usage: pwsh util/setup.ps1  (or powershell -File util\setup.ps1)
$ErrorActionPreference = 'Stop'
Set-Location (Split-Path $PSScriptRoot -Parent)
if (Test-Path package-lock.json) { npm ci } else { npm install }
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
Write-Host 'Dependencies installed. See the scripts section of package.json (build, test, ...).'
