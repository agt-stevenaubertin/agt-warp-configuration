# Warp Configuration Changelog

## 2025-12-03 - Git Shortcut Updates

### Changed
- ✓ Renamed `gl` → `glog` to avoid conflicts with common `gl` alias
- ✓ Renamed `gcm` → `gcom` (git commit message) to avoid PowerShell conflict
- ✓ Updated all documentation (README.md, QUICK_REFERENCE.md, test-profile.ps1)

### Git Shortcuts Summary
- `gs` - git status
- `gd` - git diff
- `glog` - git log --oneline --graph (renamed from `gl`)
- `gp` - git push
- `gpu` - git pull
- `gco` - git checkout
- `gcb` - git checkout -b
- `gaa` - git add .
- `gcom` - git commit -m (renamed from `gcm`)
- `cm` - checkout main + fetch + pull + status

## 2025-12-03 - Profile Merge

### ✅ Merged from Existing PowerShell Profile

Successfully merged all content from `$PROFILE` into `.warp/profile.ps1`:

#### Modules
- ✓ `Microsoft.WinGet.CommandNotFound` - Command not found suggestions

#### Navigation Functions (Added)
- ✓ `cdl` - Combined cd + ls command

#### Git Functions (Enhanced)
- ✓ `cm` - Updated to include git status after pull

#### Application Shortcuts (Added)
- ✓ `fp` - Launch FilePilot
- ✓ `vs` - Open Visual Studio as administrator
- ✓ `subl` - Open Sublime Text 3
- ✓ `Open-Database` - Open database files with fallback to test location

#### Variables (Added)
- ✓ `$desktop` - Desktop folder shortcut
- ✓ `$repo` - Personal repository folder shortcut

#### Environment Variables (Added)
- ✓ `$env:Git` - C:\Git\
- ✓ `$env:testDatabasesLocation` - Path to test database location

### 📝 Updated Documentation
- ✓ `README.md` - Added all merged functions
- ✓ `QUICK_REFERENCE.md` - Added new sections for apps and variables
- ✓ `test-profile.ps1` - Added tests for all merged functions

### ✅ Verification
All 9 test categories pass:
1. Profile loading
2. Navigation functions (8 total)
3. Git shortcuts (9 total)
4. .NET shortcuts (5 total)
5. Utility functions (5 total)
6. GitHub CLI shortcuts (4 total)
7. Application shortcuts (4 total)
8. Environment variables (4 total)
9. Configuration files

## 2025-12-02 - Initial Configuration

### Created Files
- `preferences.yaml` - Personal preferences
- `launch-config.yaml` - Startup and environment
- `profile.ps1` - Initial aliases and functions
- `workflows/git-workflows.yaml` - Git operation shortcuts
- `workflows/dev-workflows.yaml` - Development workflows
- `README.md` - Complete guide
- `QUICK_REFERENCE.md` - Quick reference card
- `WARP_template.md` - Project template
- `WARP_example_agt_framework.md` - AGT example
- `test-profile.ps1` - Testing script

---

**Configuration Version:** 1.1  
**Last Updated:** 2025-12-03
