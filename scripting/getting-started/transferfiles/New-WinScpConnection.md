---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# New-WinScpConnection

## SYNOPSIS
Obtiene un objeto que define la información que permite una conexión con un servidor de FTP/SFTP.

## SYNTAX

```powershell
New-WinScpConnection [-ConnectionString] <String>
```

## DESCRIPTION
Obtiene un objeto que define la información que permite una conexión con un servidor de FTP/SFTP.
Este objeto se utiliza en las transferencias de archivos.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
'protocol=sftp;host=127.0.0.1;username=myuser;password=myp@ssw0rd;fingerprint=' | New-WinScpConnection
```

### -------------------------- EXAMPLE 2 --------------------------
```powershell
'protocol=sftp;host=127.0.0.1;username=myuser;password=myp@ssw0rd;timeout=300;port=5000;' | New-WinScpConnection
```

### -------------------------- EXAMPLE 3 --------------------------
```powershell
'protocol=ftp;host=127.0.0.1;username=myuser;password=myp@ssw0rd;' | New-WinScpConnection
```

## PARAMETERS

### -ConnectionString
Establece la cadena de conexión que se utiliza para conectar con el servidor de FTP/SFTP.
Tokens deben estar separados por ';' y valores por '='

| Token | Descripción | (R)equerido (O)pcional |
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
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

## INPUTS

Puede canalizar el valor de ConnectionString.

## OUTPUTS

Instancia de WinSCP.SessionOptions con los valores de configuración establecidos.

## NOTES
Autor: Atorres

## RELATED LINKS

