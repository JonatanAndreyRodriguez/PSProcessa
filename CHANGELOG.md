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


### Versión 1.7.6423.37272
------
- \[New\] - New-SqlTransaction
- \[New\] - Get-ModuleNamespace
- \[New\] - Convert-ToCustomType
- \[Enhancement\] - Se soporta el uso de Transacciones (SqlTransaction) en la función Invoke-SqlCommand

### Versión 1.8.6464.61834
------
- \[Enhancement\] - Convert-ToCustomType soporta el uso del parámetro CallStackFrame

### Versión 1.9.6479.31473
------
- \[New\] - Get-CheckedCredential
- \[New\] - Get-CheckedSecret
- \[New\] - Get-FtpConnection
- \[New\] - Set-FtpConnection
- \[New\] - Remove-FtpConnection
- \[New\] - Test-FtpConnection
- \[New\] - Get-PGPKeyStore
- \[New\] - Set-PGPKeyStore
- \[New\] - Remove-PGPKeyStore
- \[New\] - Test-PGPKeyStore
- \[New\] - Get-SmtpConnection
- \[New\] - Set-SmtpConnection
- \[New\] - Remove-SmtpConnection
- \[New\] - Test-SmtpConnection
- \[New\] - Get-SqlConnection
- \[New\] - Set-SqlConnection
- \[New\] - Remove-SqlConnection
- \[New\] - Test-SqlConnection

### Versión 1.10.6491.42147
------
- \[Enhancement\] New-ConfigurationItem. Ahora se puede establecer un valor por defecto.
- \[Enhancement\] Convert-ToMailMessage. Ahora se puede utilizar su salida como entrada para Send-MailMessage (ver ejemplos).
- \[New\] Get-RabbitConnection
- \[New\] función Set-RabbitConnection
- \[New\] función Remove-RabbitConnection

### Versión 1.11.6507.49328
------
- \[New\] función New-PGPKeyFile que permite generar unas llaves PGP.
- \[Enhancement\] Remove-FtpConnection. Ahora se admite la eliminación másiva desde el PipeLine.
- \[Enhancement\] Remove-PGPKeyStore. Ahora se admite la eliminación másiva desde el PipeLine.
- \[Enhancement\] Remove-RabbitConnection. Ahora se admite la eliminación másiva desde el PipeLine.
- \[Enhancement\] Remove-SmtpConnection. Ahora se admite la eliminación másiva desde el PipeLine.
- \[Enhancement\] Remove-SqlConnection. Ahora se admite la eliminación másiva desde el PipeLine.
- \[Enhancement\] Format-Quote. Ahora se admite el procesamiento másivo desde el PipeLine.
- \[Enhancement\] Protect-File- Ahora se admite el parámetro PassThru.
- \[Enhancement\] Unprotect-File- Ahora se admite el parámetro PassThru.

### Versión 1.12.6543.68935
------
- \[New\] Find-FullPath para buscar al ruta de acceso de un archivo en las carpetas en %PATH%.
- \[New\] función New-TemporaryFolder para crear una carpeta temporal.
- \[New\] función New-DateRange para crear un rango de fechas.
- \[Fix\] Set-SqlConnection en el parámetro Credential.
- \[Enhancement\] Create-Install.ps1 para establecer el parámetro AliasesToExport.

###  Versión 1.13
------
- Se agrega la creación de la variable de ambiente PROCESSAPATH en Startup.ps1. Para no interferir con la carga de otros módulos, se omite el manejo de errores al registrar
- la variable de ambiente, por lo tanto, será necesario importar al menos un vez el módulo con un usuario en el grupo de Administradores.

### Versión 1.14
------
- Nueva función Set-FileSystemAccessRule para establecer reglas de acceso a recursos del sistema de archivos.
- Nueva función Get-DictionaryKey para obtener el valor de la clave especificada en un diccionario o un valor por defecto.
- Nueva función Write-Message para escribir texto formateado en la salida del Host.
- Nueva función ConvertTo-Epoc para obtener los segundos transcurridos desde la medianoche UTC del 1 de enero de 1970 de una fecha.
- Nueva función ConvertTo-Base64 para obtener una representación de cadena equivalente codificada con dígitos de base 64 de un objeto.
- Nueva función New-DateRange obtener un objeto que contiene una fecha inicial y una fecha final.
- Mejoras en Get-AppSetting: Nuevo parámetro DefaultValue

### Versión 1.15
------
- Nueva función Test-XmlSchema para validar un archivo XML contra un esquema XSD.
- Nueva función ConvertTo-Masked para enmascarar un valor.
- Correcciones en la función Get-SqlConnection
