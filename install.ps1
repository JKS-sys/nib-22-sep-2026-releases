# Install Nib — the AI code text editor — on Windows with one command (PowerShell):
#   irm https://raw.githubusercontent.com/JKS-sys/nib-22-sep-2026-releases/main/install.ps1 | iex
$ErrorActionPreference = 'Stop'
$repo = if ($env:NIB_REPO) { $env:NIB_REPO } else { 'JKS-sys/nib-22-sep-2026-releases' }
$rel = Invoke-RestMethod "https://api.github.com/repos/$repo/releases/latest"
$asset = $rel.assets | Where-Object { $_.name -like '*_x64-setup.exe' } | Select-Object -First 1
if (-not $asset) { throw 'There is no Windows download in the latest release yet.' }
$out = Join-Path $env:TEMP $asset.name
Write-Host "Downloading $($asset.name)..."
Invoke-WebRequest $asset.browser_download_url -OutFile $out -UseBasicParsing
Start-Process $out -ArgumentList '/S' -Wait
Write-Host 'Nib is installed - find it in the Start menu.'
