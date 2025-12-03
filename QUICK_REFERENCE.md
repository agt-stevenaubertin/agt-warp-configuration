# Warp Quick Reference Card

## 🚀 Navigation Shortcuts
| Command | Description |
|---------|-------------|
| `agt` | C:\Git\AGTRobotics\AGT |
| `framework` | AGT Framework project |
| `beammaster` | AGT Beammaster project |
| `postprocess` | AGT PostProcess project |
| `weldingdatabase` | WeldingDatabaseInterface |
| `tools` | AGT Tools project |
| `repo` | Personal repositories |
| `cdl <path>` | cd + ls combined |

## 📦 Git Shortcuts
| Command | Full Command | Description |
|---------|--------------|-------------|
| `gs` | git status | Show status |
| `gd` | git diff | Show changes |
| `gl` | git log --oneline --graph -20 | Pretty log |
| `gp` | git push | Push changes |
| `gpu` | git pull | Pull changes |
| `gco <branch>` | git checkout | Switch branch |
| `gcb <name>` | git checkout -b | New branch |
| `gaa` | git add . | Stage all |
| `gcm "msg"` | git commit -m | Commit with message |

## 🐙 GitHub CLI
| Command | Description |
|---------|-------------|
| `ghpc` | Create pull request |
| `ghpl` | List pull requests |
| `ghpv` | View pull request |
| `ghrc <name>` | Create private repo |

## 🔨 .NET Shortcuts
| Command | Full Command | Description |
|---------|--------------|-------------|
| `db` | dotnet build | Build project |
| `dt` | dotnet test | Run tests |
| `dr` | dotnet run | Run project |
| `dc` | dotnet clean | Clean artifacts |
| `dbnr` | clean + restore + build | Full rebuild |

## 🛠️ Utilities
| Command | Description |
|---------|-------------|
| `touch <file>` | Create empty file |
| `mkcd <path>` | Create dir and cd |
| `which <cmd>` | Find command location |
| `ff <pattern>` | Find files by name |
| `grep <pattern>` | Search in files |

## 🖥️ Applications
| Command | Description |
|---------|-------------|
| `fp` | Launch FilePilot |
| `vs <file>` | Open Visual Studio (as admin) |
| `subl <file>` | Open Sublime Text |
| `Open-Database <name>` | Open database file |

## 📊 Variables
| Variable | Value |
|----------|-------|
| `$desktop` | Desktop folder path |
| `$repo` | Personal repo folder |
| `$env:Git` | C:\Git\ |
| `$env:testDatabasesLocation` | Test DB location |

## 📁 Configuration Files
| File | Purpose |
|------|---------|
| `preferences.yaml` | Appearance & behavior |
| `launch-config.yaml` | Startup & environment |
| `profile.ps1` | Aliases & functions |
| `workflows/git-workflows.yaml` | Git commands |
| `workflows/dev-workflows.yaml` | Dev commands |

## 🎯 Project Setup
```powershell
# Create project-specific rules
cd your-project
mkdir .warp
cp C:\Users\steven.aubertin\.warp\WARP_template.md .\.warp\WARP.md
# Edit WARP.md with project details
```

## 💡 Tips
- Load profile manually: `. $env:USERPROFILE\.warp\profile.ps1`
- Test workflow: Read YAML files in `workflows/`
- Customize theme: Edit `preferences.yaml`
- Add aliases: Edit `profile.ps1`

---
**Quick access:** `C:\Users\steven.aubertin\.warp\`
