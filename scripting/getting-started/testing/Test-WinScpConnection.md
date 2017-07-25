---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Test-WinScpConnection

## SYNOPSIS
Verifica que se pueda establecer la comunicación con un servidor de FTP/SFTP.

## SYNTAX

### FromString (Default)
```
Test-WinScpConnection -ConnectionString <String>
```

### FromSession
```
Test-WinScpConnection -WinScpConnection <SessionOptions>
```

## DESCRIPTION
Verifica que se pueda establecer la comunicación con un servidor de FTP/SFTP con los valores de conexión proporcionados.
Cierra la conexión al finalizar la prueba.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
'protocol=ftp;host=127.0.0.1;username=myuser;password=myp@ssw0rd' | Test-WinScpConnection
```

### -------------------------- EXAMPLE 2 --------------------------
```
$WinScpConnection = New-WinScpConnection -ConnectionString 'protocol=ftp;host=127.0.0.1;username=myuser;password=myp@ssw0rd'
$WinScpConnection | Test-WinScpConnection
```

## PARAMETERS

### -WinScpConnection
Objeto que define la información que permite la conexión con el servidor de FTP/SFTP.
Ver New-WinScpConnection.

```yaml
Type: SessionOptions
Parameter Sets: FromSession
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ConnectionString
Cadena de conexión como se describe en el comando New-WinScpConnection.
Valores admitidos en la cadena de conexión (no se distinguen may/min)

| Nombre | Descripción | (R)equerido (O)pcional |
| :--------: |:-------------| :---:|
| protocol | ftp o sftp | (R) |
| host | IP o nombre del servidor de FTP/SFTP | (R) |
| username | Usuario para la autenticación | (R) |
| password | Clave del usuario para la autenticación | (R) |
| fingerprint | Huella digital de la clave del host del servidor SSH | Requerido para sftp |
| timeout | Tiempo de respuesta del servidor, por defecto 30 segundos | (O) |
| port | Número del puerto que se deb utilizar para conectar con el servidor, por defecto 0 para utilizar el puerto predeterminado para el protocolo | (O) |

```yaml
Type: String
Parameter Sets: FromString
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

## INPUTS

Puede canalizar los valores de  ConnectionString o WinScpConnection.

## OUTPUTS

Ninguno si se logra establecer la conexión; de lo contrario genera una excepción.

## NOTES
Autor: Atorres

## RELATED LINKS



