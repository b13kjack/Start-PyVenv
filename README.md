# Start-PyVenv PowerShell Module

![PowerShell Gallery Version](https://img.shields.io/powershellgallery/v/Start-PyVenv?style=flat-square)

A lightweight PowerShell module for managing Python virtual environments (.venv) in your workflow.

## Features

- Automatic virtual environment activation in project directories
- Simplified venv management through PowerShell aliases
- Verbose debugging support
- Path validation and error handling

## Installation

### PowerShell Gallery Installation

```powershell
# Inside Terminal run
Install-Module -Name Start-PyVenv

# Then import module with
Import-Module Start-PyVenv -Verbose
```

### Manual Installation

```powershell
# Create module directory (if not exists)
$modulePath = Join-Path $env:USERPROFILE "Documents\PowerShell\Modules\Start-PyVenv"
New-Item -ItemType Directory -Path $modulePath -Force

# Copy module files manually or run below command from download folder
Copy-Item -Path .\Start-PyVenv.psd1, .\Start-PyVenv.psm1 -Destination $modulePath


Import-Module Start-PyVenv -Verbose
```

### Verify Installation

```powershell
Get-Module -Name Start-PyVenv -ListAvailable
```

## Usage

### Basic Virtual Environment Activation

```powershell
# Navigate to project directory
cd C:\path\to\python\project

# Import module if you haven't before 
Import-Module Start-PyVenv -Verbose

# Activate virtual environment
Start-PyVenv

# You can also use either of aliases:
penv
pyvenv
```

## Examples

### 1. Standard Project Setup

```powershell
# Create new Python project
mkdir my_project
cd my_project
python -m venv .venv

# Activate environment
penv
```

## Compatibility

- PowerShell 5.1+
- PowerShell Core 7+
- Python 3.6+

## License

MIT License - See [LICENSE](LICENSE) for details
