# Module file: Start-PyVenv.psm1
# Location: $HOME\Documents\PowerShell\Modules\Start-PyVenv\Start-PyVenv.psm1

function Start-PyVenv {
    <#
    .SYNOPSIS
    Activates a Python virtual environment (default: .venv) in the current directory.
    .DESCRIPTION
    Checks the current directory for a specified virtual environment folder (e.g., .venv)
    and activates it using dot-sourcing if found. Runs in the caller's scope due to dot-sourcing.
    .PARAMETER VenvName
    The name of the virtual environment directory to look for. Defaults to '.venv'.
    .EXAMPLE
    Start-PyVenv
    # Looks for '.venv' in the current directory and activates it.
    .EXAMPLE
    Start-PyVenv -VenvName "my_custom_env"
    # Looks for 'my_custom_env' in the current directory and activates it.
    .NOTES
    This function is part of the Start-PyVenv module.
    #>
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$false)]
        [string]$VenvName = ".venv"
    )

    $CurrentFolder = $PWD.Path

    $ActivateScriptPath = Join-Path -Path $CurrentFolder -ChildPath "$VenvName\Scripts\Activate.ps1"

    if (-not (Test-Path -Path $ActivateScriptPath -PathType Leaf)) {
        Write-Error "Activation script not found at: $ActivateScriptPath"
        Write-Error "Ensure a virtual environment named '$VenvName' exists in the current directory '$CurrentFolder'."
        return
    }

    Write-Host "Activating venv: $ActivateScriptPath" -ForegroundColor Cyan
    . $ActivateScriptPath

    Write-Host "Local venv '$VenvName' activated in '$CurrentFolder'." -ForegroundColor Green
}

Set-Alias -Name pyvenv -Value Start-PyVenv -Description "Alias for Start-PyVenv"
Set-Alias -Name penv -Value Start-PyVenv -Description "Alias for Start-PyVenv"
Export-ModuleMember -Function Start-PyVenv -Alias 'pyvenv', 'penv'
