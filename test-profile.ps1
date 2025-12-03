# Test Warp PowerShell Profile
# Run this script to verify your profile is working correctly

Write-Host "`n=== Testing Warp Configuration ===" -ForegroundColor Cyan
Write-Host ""

# Test 1: Load profile
Write-Host "1. Loading profile..." -NoNewline
try {
    . "$env:USERPROFILE\.warp\profile.ps1"
    Write-Host " ✓" -ForegroundColor Green
} catch {
    Write-Host " ✗" -ForegroundColor Red
    Write-Host "   Error: $_" -ForegroundColor Red
    exit 1
}

# Test 2: Check navigation functions
Write-Host "2. Checking navigation functions..." -NoNewline
$navFunctions = @('agt', 'repo', 'framework', 'beammaster', 'postprocess', 'weldingdatabase', 'tools', 'cdl')
$allExist = $true
foreach ($func in $navFunctions) {
    if (-not (Get-Command $func -ErrorAction SilentlyContinue)) {
        $allExist = $false
        Write-Host " ✗" -ForegroundColor Red
        Write-Host "   Missing: $func" -ForegroundColor Red
        break
    }
}
if ($allExist) {
    Write-Host " ✓" -ForegroundColor Green
}

# Test 3: Check git shortcuts
Write-Host "3. Checking git shortcuts..." -NoNewline
$gitFunctions = @('gs', 'gd', 'glog', 'gp', 'gpu', 'gco', 'gcb', 'gaa', 'gcom', 'cm')
$allExist = $true
foreach ($func in $gitFunctions) {
    if (-not (Get-Command $func -ErrorAction SilentlyContinue)) {
        $allExist = $false
        Write-Host " ✗" -ForegroundColor Red
        Write-Host "   Missing: $func" -ForegroundColor Red
        break
    }
}
if ($allExist) {
    Write-Host " ✓" -ForegroundColor Green
}

# Test 4: Check .NET shortcuts
Write-Host "4. Checking .NET shortcuts..." -NoNewline
$dotnetFunctions = @('db', 'dt', 'dr', 'dc', 'dbnr')
$allExist = $true
foreach ($func in $dotnetFunctions) {
    if (-not (Get-Command $func -ErrorAction SilentlyContinue)) {
        $allExist = $false
        Write-Host " ✗" -ForegroundColor Red
        Write-Host "   Missing: $func" -ForegroundColor Red
        break
    }
}
if ($allExist) {
    Write-Host " ✓" -ForegroundColor Green
}

# Test 5: Check utilities
Write-Host "5. Checking utility functions..." -NoNewline
$utilFunctions = @('touch', 'mkcd', 'which', 'ff', 'grep')
$allExist = $true
foreach ($func in $utilFunctions) {
    if (-not (Get-Command $func -ErrorAction SilentlyContinue)) {
        $allExist = $false
        Write-Host " ✗" -ForegroundColor Red
        Write-Host "   Missing: $func" -ForegroundColor Red
        break
    }
}
if ($allExist) {
    Write-Host " ✓" -ForegroundColor Green
}

# Test 6: Check GitHub CLI shortcuts
Write-Host "6. Checking GitHub CLI shortcuts..." -NoNewline
$ghFunctions = @('ghpc', 'ghpl', 'ghpv', 'ghrc')
$allExist = $true
foreach ($func in $ghFunctions) {
    if (-not (Get-Command $func -ErrorAction SilentlyContinue)) {
        $allExist = $false
        Write-Host " ✗" -ForegroundColor Red
        Write-Host "   Missing: $func" -ForegroundColor Red
        break
    }
}
if ($allExist) {
    Write-Host " ✓" -ForegroundColor Green
}

# Test 7: Check application shortcuts
Write-Host "7. Checking application shortcuts..." -NoNewline
$appFunctions = @('fp', 'vs', 'subl', 'Open-Database')
$allExist = $true
foreach ($func in $appFunctions) {
    if (-not (Get-Command $func -ErrorAction SilentlyContinue)) {
        $allExist = $false
        Write-Host " ✗" -ForegroundColor Red
        Write-Host "   Missing: $func" -ForegroundColor Red
        break
    }
}
if ($allExist) {
    Write-Host " ✓" -ForegroundColor Green
}

# Test 8: Check environment variables
Write-Host "8. Checking environment variables..." -NoNewline
if ($env:Git -and $env:testDatabasesLocation -and $desktop -and $repo) {
    Write-Host " ✓" -ForegroundColor Green
} else {
    Write-Host " ✗" -ForegroundColor Red
    if (-not $env:Git) { Write-Host "   Missing: `$env:Git" -ForegroundColor Red }
    if (-not $env:testDatabasesLocation) { Write-Host "   Missing: `$env:testDatabasesLocation" -ForegroundColor Red }
    if (-not $desktop) { Write-Host "   Missing: `$desktop" -ForegroundColor Red }
    if (-not $repo) { Write-Host "   Missing: `$repo" -ForegroundColor Red }
}

# Test 9: Check configuration files
Write-Host "7. Checking configuration files..." -NoNewline
$configFiles = @(
    "$env:USERPROFILE\.warp\preferences.yaml",
    "$env:USERPROFILE\.warp\launch-config.yaml",
    "$env:USERPROFILE\.warp\profile.ps1",
    "$env:USERPROFILE\.warp\workflows\git-workflows.yaml",
    "$env:USERPROFILE\.warp\workflows\dev-workflows.yaml"
)
$allExist = $true
foreach ($file in $configFiles) {
    if (-not (Test-Path $file)) {
        $allExist = $false
        Write-Host " ✗" -ForegroundColor Red
        Write-Host "   Missing: $file" -ForegroundColor Red
        break
    }
}
if ($allExist) {
    Write-Host " ✓" -ForegroundColor Green
}

# Summary
Write-Host ""
Write-Host "=== Test Complete ===" -ForegroundColor Cyan
Write-Host ""
Write-Host "Available shortcuts:" -ForegroundColor Yellow
Write-Host "  Navigation: agt, repo, framework, beammaster, postprocess, weldingdatabase, tools, cdl"
Write-Host "  Git: gs, gd, glog, gp, gpu, gco, gcb, gaa, gcom, cm"
Write-Host "  GitHub: ghpc, ghpl, ghpv, ghrc"
Write-Host "  .NET: db, dt, dr, dc, dbnr"
Write-Host "  Utils: touch, mkcd, which, ff, grep"
Write-Host "  Apps: fp, vs, subl, Open-Database"
Write-Host "  Vars: `$desktop, `$repo, `$env:Git, `$env:testDatabasesLocation"
Write-Host ""
Write-Host "Configuration location: $env:USERPROFILE\.warp" -ForegroundColor Gray
Write-Host "Quick reference: $env:USERPROFILE\.warp\QUICK_REFERENCE.md" -ForegroundColor Gray
Write-Host ""
