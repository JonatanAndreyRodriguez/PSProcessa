---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Remove-FtpConnection

## SYNOPSIS
Elimina la configuración de conexión a un servidor FTP/SFTP.

## SYNTAX

```
Remove-FtpConnection [-Name] <String>
```

## DESCRIPTION
Elimina la configuración de conexión a un servidor FTP/SFTP.
\> Se necesita permisos de Administrador para completar la función.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Remove-FtpConnection -Name 'MyName'
```

## PARAMETERS

### -Name
Nombre para identificar la conexión que se debe eliminar.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

### None

## OUTPUTS

## NOTES
Autor: Jarodriguezc

## RELATED LINKS

[[Set-FtpConnection](Set-FtpConnection.md)]()

[[Get-FtpConnection](Get-FtpConnection.md)]()

