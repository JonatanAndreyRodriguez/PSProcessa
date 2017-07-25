---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Join-Hashtable

## SYNOPSIS
Combina el contenido de dos o más Hashtable.

## SYNTAX

```
Join-Hashtable [[-Arguments] <Hashtable[]>]
```

## DESCRIPTION
Combina el contenido de dos o más Hashtable.
Las claves de todos los objetos se añaden al objeto resultante. 
Los argumentos que son null se ignoran.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
$options1 = @{ pipeline = 0; }
$options2 = @{ enable32BitAppOnWin64 = $true; pipeline = 10; }
$options3 = @{ customprop1 = 'Hola'; customprop2 = 'Mundo'; }
Join-Hashtable -Arguments $options1, $options2, $options3
```

## PARAMETERS

### -Arguments
Array de Hashtable que contienen las propiedades para combinar.

```yaml
Type: Hashtable[]
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

None

## OUTPUTS

Hashtable con todas las propiedades de todos los objetos.

## NOTES
Autor: Atorres

## RELATED LINKS

