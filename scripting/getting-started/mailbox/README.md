# Buzones de configuración 

Un buzón de configuración permite guardar de forma centralizada configuraciones de información sensible estableciendo un nombre que luego se puede utilizar para obtener los valores iniciales, al mismo tiempo permite simplificar la configuración en los desarrollos, ya que si se hace uso de estos solo se necesitará almacenar el nombre de la configuración en lugar de la información completa de la misma.

Se tienen cuatro tipos de buzones de configuración:

### Credenciales para envió de correos
```powershell
Get-Command -Module PSProcessa -Noun *Smtp*
```
* [Registrar o actualizar la información de una conexión SMTP para envió de correos](Set-SmtpConnection.md)
* [Obtener la información de una conexión SMTP para el envió de correos](Get-SmtpConnection.md)
* [Eliminar la información una conexión SMTP para el envió de correos](Remove-SmtpConnection.md)
* [Probar la información de una conexión SMTP para el envió de correos](Test-SmtpConnection.md)

-----------------

### Credenciales para conexiones con servidores FTP/SFTP
```powershell
Get-Command -Module PSProcessa -Noun *Ftp*
```
* [Registrar o actualizar la información de una conexión FTP/SFTP para la transferencia de archivos](Set-FtpConnection.md)
* [Obtener la información de una conexión FTP/SFTP para la transferencia de archivos](Get-FtpConnection.md)
* [Eliminar la información una conexión FTP/SFTP para la transferencia de archivos](Remove-FtpConnection.md)
* [Probar la información de una conexión FTP/SFTP para la transferencia de archivos](Test-FtpConnection.md)


-----------------

### Credenciales para conexiones con servidores de SQL Server
```powershell
Get-Command -Module PSProcessa -Noun *SqlConnection
```
* [Registrar o actualizar la información de una conexión SQL Server](Set-SqlConnection.md)
* [Obtener la información de una conexión SQL Server](Get-SqlConnection.md)
* [Eliminar la información una conexión SQL Server](Remove-SqlConnection.md)
* [Probar la información de una conexión SQL Server](Test-SqlConnection.md)

-----------------

### Configuraciones de llaves de cifrado/descrifrado PGP
```powershell
Get-Command -Module PSProcessa -Noun *PGP*
```
* [Registrar o actualizar la configuración de llaves de cifrado](Set-PGPKeyStore.md)
* [Obtener la configuración de llaves de cifrado](Get-PGPKeyStore.md)
* [Eliminar la configuración de llaves de cifrado](Remove-PGPKeyStore.md)
* [Probar la configuración de llaves de cifrado](Test-PGPKeyStore.md)

-----------------
