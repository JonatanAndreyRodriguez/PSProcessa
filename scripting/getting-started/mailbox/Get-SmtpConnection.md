---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Get-SmtpConnection

## SYNOPSIS
Obtiene una conexión de SMTP para el envió de correos.

## SYNTAX

```powershell
Get-SmtpConnection [[-Name] <String>]
```

## DESCRIPTION
Obtiene una conexión de SMTP el para envió de correos.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Get-SmtpConnection -Name 'MyName'
```

Obtiene la información de conexión que registró con el nombre MyName.

### -------------------------- EXAMPLE 2 --------------------------
```powershell
Get-SmtpConnection
```

Obtiene la información de conexión de todas las entradas.

## PARAMETERS

### -Name
Nombre que se indicó al registrar la conexión al servidor SMTP.
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

[Set-SmtpConnection](Set-SmtpConnection.md)

[Remove-SmtpConnection](Remove-SmtpConnection.md)

