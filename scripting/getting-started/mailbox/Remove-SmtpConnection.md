---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Remove-SmtpConnection

## SYNOPSIS
Elimina la configuración de conexión a un servidor SMTP.

## SYNTAX

```powershell
Remove-SmtpConnection [-Name] <String>
```

## DESCRIPTION
Elimina la configuración de conexión a un servidor SMTP.
> Se necesita permisos de Administrador para completar la función.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Remove-SmtpConnection -Name 'MyName'
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

None.

## OUTPUTS
Void.

## NOTES
Autor: Jarodriguezc

## RELATED LINKS

[Set-SmtpConnection](Set-SmtpConnection.md)

[Get-SmtpConnection](Get-SmtpConnection.md)

