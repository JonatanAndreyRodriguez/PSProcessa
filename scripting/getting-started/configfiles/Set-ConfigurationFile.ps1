#Requires -Version 5

function Set-ConfigurationFile {
    <#
.SYNOPSIS
Establece los valores ingresados por el usuario en un archivo de configuración *.config.
.EXAMPLE
$ConfigInfo = @(
	New-ConfigurationItem -Type 'ConnectionString' -ConfigKey 'MyKey1' -FriendlyName 'MiNombre1' -DataType 'String' -Description 'Cadena de conexión nro 1' -Category 'Cadenas de conexión'
	New-ConfigurationItem -Type 'AppSetting' -ConfigKey 'MyKey2' -FriendlyName 'MiNombre2' -DataType 'String' -Description 'Un valor para algo' -Category 'Configuraciones generales'
	New-ConfigurationItem -Type 'EnvironmentVariable' -ConfigKey 'MiKey3' -FriendlyName 'MiNombre3' -DataType 'Int32' -Description 'Un número entre 1 y 10' -Category 'Configuraciones generales' -ValidationScript { $Args[0] -ge 1 -and $Args[0] -le 10 } -ValidationScriptMessage 'Solo se admiten valores entre 1 y 10'
)

'C:\MyFile.config' | Set-ConfigurationFile -ConfigurationInfo $ConfigInfo

.INPUTS
Puede canalizar el valor de Path.
.OUTPUTS
Void.

.PARAMETER Path
Ruta de acceso del archivo de configuración.

.PARAMETER ConfigurationInfo
Elementos de configuración que se establecen en el archivo.

.PARAMETER Title
Titulo para el cuadro de dialogo que se muestra al usuario.

.PARAMETER Force
Cuando se establece se escribe el valor del elemento de configuración, aun cuando sea nulo o vacío.

.NOTES
Autor: Atorres

#>
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSUseShouldProcessForStateChangingFunctions", "")]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingWriteHost", "")]
    [CmdletBinding()]
    [Alias()]
    [OutputType([System.Void])]
    Param
    (
        [Parameter(Mandatory, ValueFromPipeline)]
        [ValidateScript( { Test-Path -Path $_ -PathType 'Leaf' })]
        [Alias('ConfigFile')]
        [string]
        $Path,

        [Parameter(Mandatory)]
        [ValidateNotNull()]
        [PSTypeName('Processa.Management.Automation.ConfigurationItem')]
        $ConfigurationInfo,

        [Parameter()]
        [string]
        $Title = 'Valores de configuración',

        [Parameter()]
        [switch]
        $Force
    )

    Confirm-Administrator

    try {

        $CustomProperties = @()

        foreach ($ConfigurationItem in $ConfigurationInfo) {
            # Se presenta el valor configurado actualmente en el archivo o null si no hay un valor configurado.
            $CurrentValue = $ConfigurationItem | Get-ConfigurationValue -Path $Path
            $CustomProperties += $ConfigurationItem | New-ConfigurationProperty -DefaultValue $CurrentValue
        }

        $UIValue = New-PropertyDialog -Property $CustomProperties -Title $Title -Show

        if ($UIValue) {
            # Probar todos los valores antes de guardarlos. Si alguna verificación falla se genera una excepción y se interrumple el foreach.
            foreach ($ConfigurationItem in $ConfigurationInfo) {
                $ConfigurationItem | ConvertTo-ConfigurationValue -UIValue $UIValue
            }
            foreach ($ConfigurationItem in $ConfigurationInfo) {
                $ConfigurationItem | Set-ConfigurationValue -Path $Path -Force:($PSBoundParameters['Force'] -eq $true)
            }

            $True | Write-Output
            if ($Host.Name -eq 'ConsoleHost') {
                ($Script:Resx.SetConfigurationFileMessageFormat -f $Path) | Write-Host -ForegroundColor Green
            }
        }
    }
    catch {
        $ErrorMessage = ($Script:Resx.SetConfigurationFileErrorMessageFormat) -f $_.Exception.Message
        throw (New-Object -TypeName System.Exception -ArgumentList $ErrorMessage)
        Format-Error -Wrap | Write-Host -ForegroundColor Red
    }
}
