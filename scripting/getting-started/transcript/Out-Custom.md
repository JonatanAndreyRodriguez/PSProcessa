---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Out-Custom

## SYNOPSIS
Envía la salida al formateador predeterminado anexando información de la hora de ejecución.

## SYNTAX

```powershell
Out-Custom [[-InputObject] <String>] [[-Type] <String>] [[-FormatTime] <String>] [[-NewLine] <Boolean>]
```

## DESCRIPTION
Envía la salida al formateador predeterminado anexando información de la hora de ejecución y el tipo de información.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
'Hola Mundo'| Out-Custom
```

### -------------------------- EXAMPLE 2 --------------------------
```powershell
'Hola Mundo'| Out-Custom -NewLine $false
```

#### OUTPUT 
```
20:04:07 pm => INFO: Hola Mundo

```


### -------------------------- EXAMPLE 3 --------------------------
```powershell
Get-Variable | Out-String | Out-Custom -Type Info
```

## PARAMETERS

### -InputObject
Objeto que se quiere enviar al formateador predeterminado.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Type
Tipo de mensaje que se envia.
Valor predeterminado 'Info'

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: Info
Accept pipeline input: False
Accept wildcard characters: False
```

### -FormatTime
Formato que se debe aplicar a la hora antes de enviarla al formateador predeterminado.
Valor predeterminado 'HH:mm:ss tt'

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: HH:mm:ss tt
Accept pipeline input: False
Accept wildcard characters: False
```

### -NewLine
Cuando se estabece, se agrega un retorno de carro entre la hora y el objeto en InputObject.
Valor predeterminado $true.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
Default value: True
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS
Puede canalizar el valor de InputObject.

## OUTPUTS

System.Void

## NOTES
Autor: Atorres

## RELATED LINKS

