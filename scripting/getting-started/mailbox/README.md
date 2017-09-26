# Entradas de configuración 

Una entrada de configuración permite guardar de manera centralizada valores de información sensible estableciendo un nombre que luego se puede utilizar para obtener de nuevo los datos originales. Al mismo tiempo permite simplificar la configuración en sus desarrollos, ya que si se hace uso de estas entradas solo se necesitará almacenar el nombre de la configuración en lugar de la información completa de la misma.

Descrito de otra manera piense en ellos como la analogía a un contenedor. Se crea un contenedor de alguno de los tipos soportados, se agregan datos al contenedor, se guarda con un nombre y listo. Luego, para obtener los datos almacenados en el contenedor, basta con utilizar el nombre. 


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
