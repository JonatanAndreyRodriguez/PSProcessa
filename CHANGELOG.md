# PSProcessa ChangeLog

### Versión 1.0.6292.28933 (atorres)
------
* Liberación inicial


### Versión 1.1 (atorres)
------
- \[New\] - Remove-AppSetting
- \[New\] - Remove-ConnectionString
- \[New\] - Remove-EnvironmentVariable
- \[New\] - Set-EnvironmentVariable
- \[New\] - Merge-Property
- \[New\] - Get-PropertyList
- \[New\] - Convert-ToConnection
- \[Fix\] - Read-UserInput ahora permite establecer un valor predeterminado (parámetro DefaultValue)
- \[Fix\] - New-PropertyDialog ahora muestra un cuadro de dialogo Resizable y con titulo en la barra de tareas
- \[Fix\] - Correcciones en la función Format-Error

### Versión 1.5 (atorres)
------
- \[New\] - Test-MongoConnection
- \[New\] - Set-DefaultSetting
- \[New\] - Get-DefaultSetting
- \[New\] - Set-ConfigurationFile
- \[New\] - New-ConfigurationItem
- \[New\] - New-PushbulletToken
- \[New\] - Add-PushbulletToken
- \[New\] - Set-PushbulletProfile
- \[New\] - Get-PushbulletProfile
- \[New\] - Send-PushbulletMessage
- \[Fix\] - Invoke-SqlCommand ahora permite la configuración de TimeOut a través del comando Set-DefaultSetting

### Versión 1.6 (atorres)
------
- \[New\] - Remove-PushbulletProfile
- \[New\] - Get-Configuration
- \[Fix\] - Se modificó la función Start-TranscriptFile para que deje el archivo de transcripción en la carpeta Logs de la carpeta contendora del script que la llama (Get-Location)
- \[Fix\] - Se modificó la función New-ConfigurationProperty para que tenga en cuenta el tipo de datos de los valores actualmente configurados en un archivo .config
- \[Fix\] - Se agregaron pruebas unitarias de varias funciones que faltaban
- \[Fix\] - Se quitó la dependencia de Visual Studio Professional. Ahora se puede utilizar Visual Studio Code para mantener el proyecto
- \[Fix\] - Se movió la documentación a github.com
- \[Fix\] - Se extendió la documentación
- \[Fix\] - Ahora el proyecto utiliza la plantilla definida para módulo en Plaster
