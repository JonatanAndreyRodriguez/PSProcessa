---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Get-SqlConnection

## SYNOPSIS
Obtiene una cadena de conexión con un servidor de SQL Server.

## SYNTAX

```
Get-SqlConnection [[-Name] <String>]
```

## DESCRIPTION
Obtiene una cadena de conexión con un servidor de SQL Server.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Get-SqlConnection -Name 'MyName'
```

Obtiene la información de conexión que registró con el nombre MyName.

### -------------------------- EXAMPLE 2 --------------------------
```
Get-SqlConnection
```

Obtiene la información de conexión de todas las entradas.

## PARAMETERS

### -Name
Nombre que se indicó al registrar la conexión al servidor SQL.
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

## OUTPUTS

### System.String

### System.Management.Automation.PSObject[]

## NOTES
Autor: Jarodriguezc

## RELATED LINKS

[[Set-SqlConnection](Set-SqlConnection.md)]()

[[Remove-SqlConnection](Remove-SqlConnection.md)]()

