---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Invoke-RabbitRequest

## SYNOPSIS
Envía un mensaje a una cola de RabbitMQ y espera por su respuesta.

## SYNTAX

```
Invoke-RabbitRequest [-ConnectionString] <String> [-Body] <PSObject> [-Queue] <String> [[-Depth] <Int32>]
 [[-Exchange] <String>] [[-Timeout] <TimeSpan>]
```

## DESCRIPTION
Envía un mensaje a una cola de RabbitMQ y espera por su respuesta.
El hilo se bloqueará hasta que se devuelva la respuesta.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
'host=localhost' | Invoke-RabbitRequest -Body @{DocNumber='123456';CorrelationalId='12345600'} -Queue 'SampleQueueRequest'
```

## PARAMETERS

### -ConnectionString
Cadena de conexión que se utiliza para conectar con el servidor de RabbitMQ.
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

### -Body
Objeto con los datos que se envian en el cuerpo de la solicitud. Este objeto se convertirá a formato JSON.

```yaml
Type: PSObject
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Queue
Nombre de la cola en el servidor de RabbitMQ a donde se envía la solicitud

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Depth
Especifica cuántos niveles de objetos contenidos se incluyen en la representación JSON del cuerpo de la petición. Valor predeterminado _2_.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
Default value: 2
Accept pipeline input: False
Accept wildcard characters: False
```

### -Exchange
Nombre del exchange de RabbitMQ a donde se enviá la solicitud. Valor predetermiando _easy_net_q_rpc_.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 5
Default value: Easy_net_q_rpc
Accept pipeline input: False
Accept wildcard characters: False
```

### -Timeout
Tiempo que se espera por la respuesta. Valor predeterminado _10 segundos_.

```yaml
Type: TimeSpan
Parameter Sets: (All)
Aliases: 

Required: False
Position: 6
Default value: (New-TimeSpan -Seconds 10)
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

Puede canalizar el valor de ConnectionString.

## OUTPUTS

System.Management.Automation.PSObject

## NOTES
Autor: Atorres

## RELATED LINKS

[Test-RabbitConnection](Test-RabbitConnection.md)

