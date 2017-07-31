# PSProcessa ChangeLog

### Versión 1.0.6292.28933
------
* \[New\] - Liberación inicial


### Versión 1.1.6367.26579
------
- \[New\] - Remove-AppSetting
- \[New\] - Remove-ConnectionString
- \[New\] - Remove-EnvironmentVariable
- \[New\] - Set-EnvironmentVariable
- \[New\] - Merge-Property
- \[New\] - Get-PropertyList
- \[New\] - Convert-ToConnection
- \[Enhancement\] - Read-UserInput ahora permite establecer un valor predeterminado (parámetro DefaultValue)
- \[Enhancement\] - New-PropertyDialog ahora muestra un cuadro de dialogo Resizable y con titulo en la barra de tareas
- \[Fix\] - Correcciones en la función Format-Error

### Versión 1.5.6383.30493
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
- \[Enhancement\] - Invoke-SqlCommand ahora permite la configuración de TimeOut a través del comando Set-DefaultSetting

### Versión 1.6.6416.554385409
------
- \[New\] - Remove-PushbulletProfile
- \[New\] - Get-Configuration
- \[New\] - Se agregaron pruebas unitarias de varias funciones que faltaban
- \[New\] - Se quitó la dependencia de Visual Studio Professional. Ahora se puede utilizar Visual Studio Code para mantener el proyecto
- \[New\] - Se movió la documentación a github.com
- \[New\] - Se extendió la documentación y se distribuyo en carpetas funcionales
- \[New\] - Ahora el proyecto utiliza la plantilla definida para módulo en Plaster
- \[Enhancement\] - Se modificó la función Start-TranscriptFile para que deje el archivo de transcripción en la carpeta Logs de la carpeta contendora del script que la llama (Get-Location)
- \[Fix\] - Se modificó la función New-ConfigurationProperty para que tenga en cuenta el tipo de datos de los valores actualmente configurados en un archivo .config


### Versión 1.7.6421.554801357
------
- \[New\] - New-SqlTransaction
- \[New\] - Get-ModuleNamespace
- \[New\] - Convert-ToCustomType
- \[Enhancement\] - Se soporta el uso de Transacciones (SqlTransaction) en la función Invoke-SqlCommand

