---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Test-RabbitConnection

## SYNOPSIS
Verifica que se pueda establecer la comunicación con un servidor de RabbitMQ.

## SYNTAX

```powershell
Test-RabbitConnection [-ConnectionString] <String>
```

## DESCRIPTION
Verifica que se pueda establecer la comunicación con un servidor de RabbitMq con los valores de conexión proporcionados.
Cierra la conexión al finalizar la prueba.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
'host=myServer;virtualHost=myVirtualHost;username=jhon;password=topsecret' | Test-RabbitConnection
```

## PARAMETERS

### -ConnectionString
Establece la cadena de conexión que se utiliza para conectar con el servidor de RabbitMQ.
Ver https://goo.gl/avBzsU

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

Ninguno si se logra establecer la conexión; de lo contrario genera una excepción.

## NOTES
Autor: Atorres

## RELATED LINKS
[RabbitMQ ConnectionString Format](https://github.com/EasyNetQ/EasyNetQ/wiki/Connecting-to-RabbitMQ)
