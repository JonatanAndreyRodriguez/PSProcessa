# Buzones de configuración 

Un buzón de configuración permite guardar de forma centralizada configuraciones de información sensible estableciendo un nombre que luego se puede utilizar para obtener los valores iniciales, al mismo tiempo permite simplificar los desarrollos de configuraciones, ya que si se hace uso de estos, solo se necesitara almacenar el nombre de la configuración en lugar de la información completa de la misma.

Se tienen cuatro tipos de buzones de configuración:

### Credenciales para envió de correos
```powershell
Get-Command -Module PSProcessa -Noun *Smtp*
```

### Credenciales para conexiones con servidores FTP/SFTP
```powershell
Get-Command -Module PSProcessa -Noun *Ftp*
```

### Credenciales para conexiones con servidores de SQL Server
```powershell
Get-Command -Module PSProcessa -Noun *SqlConnection
```

### Configuraciones de llaves de cifrado/descrifrado PGP
```powershell
Get-Command -Module PSProcessa -Noun *PGP*
```

