if (!(Test-Path $PROFILE)) {
    New-Item -Path $PROFILE -ItemType File -Force
}

function LineExistsInProfile($line) {
    $content = Get-Content -Path $PROFILE -ErrorAction SilentlyContinue
    if ($content -contains $line) {
        return $true
    } else {
        return $false
    }
}

$aliases = @(
    "Set-Alias -Name init -Value .\scripts\init.ps1",
    "Set-Alias -Name lint -Value .\scripts\lint.ps1",
    "Set-Alias -Name run -Value .\scripts\run.ps1",
    "Set-Alias -Name test -Value .\scripts\test.ps1"
)

foreach ($alias in $aliases) {
    if (!(LineExistsInProfile $alias)) {
        Add-Content -Path $PROFILE -Value $alias
    }
}

Write-Output "Set persistent aliases"
