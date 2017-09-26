# Buzones de configuración 

Un buzón de configuración permite guardar de forma centralizada configuraciones de información sensible estableciendo un nombre que luego se puede utilizar para obtener los valores iniciales, al mismo tiempo permite simplificar los desarrollos de configuraciones, ya que si se hace uso de estos, solo se necesitara almacenar el nombre de la configuración en lugar de la información completa de la misma.

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

-----------------

### Configuraciones de llaves de cifrado/descrifrado PGP
```powershell
Get-Command -Module PSProcessa -Noun *PGP*
```

-----------------
