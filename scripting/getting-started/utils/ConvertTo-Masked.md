---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# ConvertTo-Masked

## SYNOPSIS
Enmascara un valor.

## SYNTAX

```
ConvertTo-Masked [-InputObject] <String[]> [[-Last] <Int32>] [[-PaddingChar] <String>]
```

## DESCRIPTION
Enmascara un valor anteponiendo el caracter en PaddingChar y mostrando los últimos caracteres especificados en Last en claro.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
'123456789' | ConvertTo-Masked
```

Muestra los últimos 4 caracteres de la expresión en claro.

### -------------------------- EXAMPLE 2 --------------------------
```
'1234567890' | ConvertTo-Masked -Last 2
```

Muestra los últimos 2 caracteres de la expresión en claro.

### -------------------------- EXAMPLE 3 --------------------------
```
'1234567890' | ConvertTo-Masked -Last 2 -PaddingChar '='
```

Muestra los últimos 2 caracteres de la expresión en claro y reemplaza los otros caracteres por el simbolo '='

## PARAMETERS

### -InputObject
Valor que se desea enmascarar.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Last
Número de caracteres a la derecha de la expresión en InputObject que se desean mostrar en claro.
Valor predeterminado 4.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: 4
Accept pipeline input: False
Accept wildcard characters: False
```

### -PaddingChar
Caracter que se utiliza como "relleno" al enmascarar.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: *
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### System.String

## NOTES
Autor: Atorres

## RELATED LINKS

