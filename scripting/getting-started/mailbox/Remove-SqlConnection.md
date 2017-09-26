---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Remove-SqlConnection

## SYNOPSIS
Elimina la configuración de conexión a un servidor SQL.

## SYNTAX

```
Remove-SqlConnection [-Name] <String>
```

## DESCRIPTION
Elimina la configuración de conexión a un servidor SQL.
\> Se necesita permisos de Administrador para completar la función.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Remove-SqlConnection -Name 'MyName'
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
Autor: Atorres

## RELATED LINKS

[[Set-SqlConnection](Set-FtpConnection.md)]()

[[Get-SqlConnection](Get-FtpConnection.md)]()

