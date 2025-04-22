# Module manifest file: Start-PyVenv.psd1
# Location: $HOME\Documents\PowerShell\Modules\Start-PyVenv\Start-PyVenv.psd1
#
# Use `Test-ModuleManifest .\Start-PyVenv.psd1` to validate.

@{

RootModule = 'Start-PyVenv.psm1'

PowerShellHostVersion = '5.1'

ModuleVersion = '1.0.4'

GUID = '5651e258-a72a-4742-9788-e4da5bcb818b'

Author = 'b13kjack'

Description = 'Provides a function to activate a Python virtual environment located in the current directory.'

FunctionsToExport = @('Start-PyVenv')

CmdletsToExport = @()

VariablesToExport = @()

AliasesToExport = @('pyvenv', 'penv')

}

