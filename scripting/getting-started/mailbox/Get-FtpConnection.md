---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Get-FtpConnection

## SYNOPSIS
Obtiene una conexión de FTP/SFTP para la transferencia de archivos.

## SYNTAX

```powershell
Get-FtpConnection [[-Name] <String>]
```

## DESCRIPTION
Obtiene una conexión de SMTP para envió de correos.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Get-FtpConnection -Name 'MyName'
```

Obtiene la información de conexión que registró con el nombre MyName.

### -------------------------- EXAMPLE 2 --------------------------
```powershell
Get-FtpConnection
```

Obtiene la información de conexión de todas las entradas.

## PARAMETERS

### -Name
Nombre que se indicó al registrar la conexión al servidor FTP/SFTP.
Para obtener todas las configuraciones disponibles, omita el valor de este parámetro.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: *
Accept pipeline input: False
Accept wildcard characters: True
```

## INPUTS
None.

## OUTPUTS

System.String

System.Management.Automation.PSObject[]

## NOTES
Autor: Jarodriguezc

## RELATED LINKS

[Set-FtpConnection](Set-FtpConnection.md)

[Remove-FtpConnection](Remove-FtpConnection.md)

