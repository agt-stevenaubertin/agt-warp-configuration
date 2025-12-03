# AGT Framework Project Configuration

<!-- Example: Copy this to C:\Git\AGTRobotics\AGT\Framework\.warp\WARP.md -->

## Project Context

**Project Name:** AGT Framework  
**Language/Framework:** C#/.NET  
**Purpose:** Core framework for AGT Robotics automation and control systems

## Development Environment

- **Build Tool:** MSBuild / dotnet
- **Package Manager:** NuGet
- **Test Framework:** [xUnit/NUnit - check project]
- **IDE:** Visual Studio / Rider

## Common Commands

```powershell
# Build
dotnet build

# Build specific configuration
dotnet build --configuration Release

# Test
dotnet test

# Clean
dotnet clean

# Restore packages
dotnet restore
```

## Code Style & Conventions

- Indentation: 4 spaces
- Naming conventions: PascalCase for classes/methods, camelCase for private fields
- File organization: One class per file
- Comment style: XML documentation comments for public APIs

## AI Agent Instructions

When working on this project:

1. **Always** use XML documentation comments for public APIs
2. **Never** modify auto-generated Designer files
3. **Prefer** async/await over .Result or .Wait()
4. **Architecture notes:** This is a framework project - changes may affect multiple dependent projects (Beammaster, PostProcess, Plugins.VisualComponents, etc.)

## File Patterns to Avoid

- `bin/`, `obj/` - Build outputs
- `*.Designer.cs` - Auto-generated WinForms/WPF files
- `packages/` - NuGet packages cache

## Special Considerations

- This project is referenced by multiple other AGT projects
- Breaking changes require updating dependent projects
- Consider backward compatibility when modifying public APIs
