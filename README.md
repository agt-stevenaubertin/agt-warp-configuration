# Warp Configuration Guide

This directory contains your personal Warp terminal configuration.

## 📁 Directory Structure

```
.warp/
├── README.md                           # This file
├── preferences.yaml                    # Personal preferences (theme, fonts, etc.)
├── launch-config.yaml                  # Startup commands and environment setup
├── profile.ps1                         # Custom PowerShell functions and aliases
├── workflows/
│   ├── git-workflows.yaml             # Git operation shortcuts
│   └── dev-workflows.yaml             # Development task shortcuts
├── WARP_template.md                    # Template for project-specific rules
└── WARP_example_agt_framework.md      # Example AGT Framework configuration

```

## 🚀 Quick Start

### 1. Personal Preferences
Edit `preferences.yaml` to customize:
- Theme (dark/light)
- Font family and size
- Terminal behavior
- Keybindings
- AI agent settings

### 2. Project-Specific Rules
For each project, create a `.warp/WARP.md` file in the project root:

**Example for AGT Framework:**
```bash
# Navigate to project
cd C:\Git\AGTRobotics\AGT\Framework

# Create .warp directory
mkdir .warp

# Copy the example configuration
cp C:\Users\steven.aubertin\.warp\WARP_example_agt_framework.md .\.warp\WARP.md
```

Then customize the WARP.md file for your project's specific needs.

### 3. Custom Workflows
The `workflows/` directory contains saved command sequences:

**Git Workflows** (`git-workflows.yaml`):
- Git status and commit workflows
- Branch management
- GitHub CLI operations (gh)
- Common git operations

**Dev Workflows** (`dev-workflows.yaml`):
- .NET build and test commands
- Project navigation shortcuts
- File search operations
- System utilities

### 4. Launch Configurations
Edit `launch-config.yaml` to customize:
- **Default startup**: Commands run in every new terminal
- **Project presets**: Specific environments (AGT, personal projects)
- **Tab presets**: Open multiple tabs at once
- **Aliases**: Quick shortcuts for common commands

### 5. PowerShell Profile
The `profile.ps1` file provides custom functions and aliases:

**Navigation shortcuts:**
- `agt` - Go to AGT root
- `framework` - Go to Framework project
- `beammaster` - Go to Beammaster project
- `postprocess` - Go to PostProcess project
- `weldingdatabase` - Go to WeldingDatabaseInterface
- `tools` - Go to Tools project
- `repo` - Go to personal repos
- `cdl` - cd + ls combined

**Git shortcuts:**
- `gs` - git status
- `gd` - git diff
- `gl` - git log (pretty format)
- `gp` - git push
- `gpu` - git pull
- `gco` - git checkout
- `gcb` - git checkout -b (new branch)
- `gaa` - git add .
- `gcm "message"` - git commit -m

**GitHub CLI shortcuts:**
- `ghpc` - Create pull request
- `ghpl` - List pull requests
- `ghrc name` - Create private repo

**.NET shortcuts:**
- `db` - dotnet build
- `dt` - dotnet test
- `dr` - dotnet run
- `dc` - dotnet clean
- `dbnr` - Clean, restore, and rebuild

**Utilities:**
- `touch file` - Create empty file
- `mkcd path` - Create directory and cd into it
- `which command` - Find command location
- `ff pattern` - Find files by name
- `grep pattern` - Search in files

**Application shortcuts:**
- `fp` - Launch FilePilot
- `vs file` - Open Visual Studio as admin
- `subl file` - Open Sublime Text
- `Open-Database name` - Open database file

**Variables:**
- `$desktop` - Desktop folder path
- `$repo` - Personal repo folder
- `$env:Git` - C:\Git\
- `$env:testDatabasesLocation` - Test database location

## 🔧 Activation

To activate the PowerShell profile on every terminal startup, it's referenced in `launch-config.yaml`. Warp will automatically load it when you start a new session.

Alternatively, you can manually load it:
```powershell
. $env:USERPROFILE\.warp\profile.ps1
```

Or add it to your PowerShell profile:
```powershell
# Add this line to your $PROFILE
if (Test-Path "$env:USERPROFILE\.warp\profile.ps1") {
    . "$env:USERPROFILE\.warp\profile.ps1"
}
```

## 📝 Creating Project Rules

When working on a new project, create a `.warp/WARP.md` file in the project root using this template:

1. **Copy the template:**
   ```powershell
   cp C:\Users\steven.aubertin\.warp\WARP_template.md .\your-project\.warp\WARP.md
   ```

2. **Fill in the details:**
   - Project context and purpose
   - Development environment (tools, frameworks)
   - Common commands
   - Code style conventions
   - AI agent instructions
   - Files to avoid

3. **Benefits:**
   - Warp AI will use these rules when helping in that project
   - Consistent behavior across team members
   - Better code suggestions and automated tasks

## 🎨 Customization Tips

### Change Theme
Edit `preferences.yaml`:
```yaml
appearance:
  theme: "light"  # or "dark", "system"
```

### Add More Aliases
Edit `profile.ps1` and add functions:
```powershell
function myalias { your-command $args }
```

### Create Workflow
Add to `workflows/dev-workflows.yaml`:
```yaml
- name: "My Custom Workflow"
  command: "your command here"
  description: "What it does"
  tags: ["custom"]
```

### Add Startup Commands
Edit `launch-config.yaml` under `default.on_start`:
```yaml
- type: command
  run: Write-Host "Hello!"
```

## 📚 Resources

- **Warp Documentation**: [docs.warp.dev](https://docs.warp.dev)
- **PowerShell Guide**: [docs.microsoft.com/powershell](https://docs.microsoft.com/powershell)
- **GitHub CLI**: [cli.github.com](https://cli.github.com)

## 🔄 Version Control

Consider adding your Warp config to version control:
```bash
cd ~/.warp
git init
git add .
git commit -m "Initial Warp configuration"
```

## ⚠️ Notes

- These configuration files are templates and may need adjustments based on actual Warp features
- Some features depend on Warp's specific implementation
- Test configurations in a non-critical environment first
- Keep sensitive data (tokens, passwords) out of configuration files

---

**Last Updated:** 2025-12-02  
**Configuration Version:** 1.0
