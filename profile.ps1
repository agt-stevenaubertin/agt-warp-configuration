# Warp Custom PowerShell Profile
# This file is loaded on terminal startup if referenced in launch-config.yaml

# ============================================================================
# Modules
# ============================================================================

Import-Module -Name Microsoft.WinGet.CommandNotFound

# ============================================================================
# Aliases and Functions
# ============================================================================

# Quick navigation functions
function agt { Set-Location "C:\Git\AGTRobotics\AGT" }
function repo { Set-Location "C:\Users\steven.aubertin\repo" }
function framework { Set-Location "C:\Git\AGTRobotics\AGT\Framework" }
function beammaster { Set-Location "C:\Git\AGTRobotics\AGT\Beammaster" }
function postprocess { Set-Location "C:\Git\AGTRobotics\AGT\PostProcess" }
function weldingdatabase { Set-Location "C:\Git\AGTRobotics\AGT\WeldingDatabaseInterface" }
function tools { Set-Location "C:\Git\AGTRobotics\AGT\Tools" }

function cdl { Set-Location $args; Get-ChildItem }

# Git shortcuts
function gs { git status $args }
function gd { git diff $args }
function glog { git log --oneline --graph --decorate -20 $args }
function gp { git push $args }
function gpu { git pull $args }
function gco { git checkout $args }
function gcb { git checkout -b $args }
function gaa { git add . }
function gcom { 
    param([string]$message)
    git commit -m $message 
}
function cm {
    git checkout main
    git fetch
    git pull
    git status
}

# .NET shortcuts
function db { dotnet build $args }
function dt { dotnet test $args }
function dr { dotnet run $args }
function dc { dotnet clean $args }
function dbnr { 
    dotnet clean
    dotnet restore
    dotnet build $args
}

# GitHub CLI shortcuts (per your preference)
function ghpc { gh pr create --fill }
function ghpl { gh pr list }
function ghpv { gh pr view }
function ghrc {
    param([string]$name)
    gh repo create $name --private --clone
}

# Utility functions
function touch {
    param([string]$file)
    New-Item -ItemType File -Path $file -Force | Out-Null
}

function mkcd {
    param([string]$path)
    New-Item -ItemType Directory -Path $path -Force | Out-Null
    Set-Location $path
}

function which {
    param([string]$command)
    Get-Command $command -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Source
}

# Find file by name
function ff {
    param([string]$pattern)
    Get-ChildItem -Recurse -Filter "*$pattern*" -ErrorAction SilentlyContinue | Select-Object FullName
}

# Find in files (like grep)
function grep {
    param(
        [string]$pattern,
        [string]$path = "."
    )
    Select-String -Path $path -Pattern $pattern -Recurse
}

# Application shortcuts
function fp { Start-Process "$env:USERPROFILE\AppData\Local\Voidstar\FilePilot\FPilot.exe" -Args $args }
function vs { Start-Process "$env:programfiles\Microsoft Visual Studio\18\insiders\Common7\IDE\devenv.exe" -ArgumentList $args -Verb RunAs }
function subl { & "$env:programfiles\Sublime Text 3\sublime_text.exe" $args }

# Database helper
function Open-Database {
    param([string]$databaseName)
    if (Test-Path $databaseName) {
        & "$databaseName"
    } else {
        & "$env:testDatabasesLocation\$databaseName"
    }
}

# ============================================================================
# Variables
# ============================================================================

$desktop = "$env:USERPROFILE\Desktop"
$repo = "$env:USERPROFILE\repo"

# ============================================================================
# Environment Setup
# ============================================================================

# Environment variables from existing profile
$env:Git = "C:\Git\"
$env:testDatabasesLocation = "C:\Git\AGTRobotics\AGT\WeldingDatabaseInterface\Source\WeldingDatabase\Core\WeldingRecipes.Tests\MigrationTestDb\"

# Add any custom PATH entries here
# $env:PATH += ";C:\CustomTools"

# ============================================================================
# Prompt Customization (optional)
# ============================================================================

# Uncomment to customize your prompt
# function prompt {
#     $location = Get-Location
#     $gitBranch = git branch --show-current 2>$null
#     
#     Write-Host ""
#     Write-Host "PS " -NoNewline -ForegroundColor Cyan
#     Write-Host "$location" -NoNewline -ForegroundColor Green
#     
#     if ($gitBranch) {
#         Write-Host " [" -NoNewline -ForegroundColor DarkGray
#         Write-Host "$gitBranch" -NoNewline -ForegroundColor Yellow
#         Write-Host "]" -NoNewline -ForegroundColor DarkGray
#     }
#     
#     Write-Host ""
#     return "> "
# }

# ============================================================================
# Welcome Message
# ============================================================================

Write-Host "✓ Warp profile loaded" -ForegroundColor Green
