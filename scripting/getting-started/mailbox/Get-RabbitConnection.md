---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Get-RabbitConnection

## SYNOPSIS
Obtiene los datos de conexión con un servidor de RabbitMQ.

## SYNTAX

```
Get-RabbitConnection [[-Name] <String>]
```

## DESCRIPTION
Obtiene los datos de conexión con un servidor de RabbitMQ.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Get-RabbitConnection -Name 'MyName'
```

Obtiene la información de conexión que registró con el nombre MyName.

### -------------------------- EXAMPLE 2 --------------------------
```
Get-RabbitConnection
```

Obtiene la información de conexión de todas las entradas.

## PARAMETERS

### -Name
Nombre que se indicó al registrar la conexión al servidor de RabbitMQ.
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
Autor: Atorres

## RELATED LINKS

[[Set-RabbitConnection](Set-RabbitConnection.md)]()

[[Remove-RabbitConnection](Remove-RabbitConnection.md)]()

