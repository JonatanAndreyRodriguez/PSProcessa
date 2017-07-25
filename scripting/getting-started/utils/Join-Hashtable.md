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
$Options1 = @{ pipeline = 0; }
$Options2 = @{ enable32BitAppOnWin64 = $true; pipeline = 10; }
$Options3 = @{ customprop1 = 'Hola'; customprop2 = 'Mundo'; }
Join-Hashtable -Arguments $Options1, $Options2, $Options3
```
Combina los valores en  $Options1, $Options2 y $Options3 en un solo objeto

#### OUTPUT
```
Name                           Value                                                                                                     ----                           -----                                                                                                     

pipeline                       10
enable32BitAppOnWin64          True
customprop2                    Mundo
customprop1                    Hola
```                   


### -------------------------- EXAMPLE 2 --------------------------
```
$DefaultValues = @{ Proxy = '192.168.0.1' }
$UserValues = @{ Proxy = '127.0.0.1' }
Join-Hashtable -Arguments $DefaultValues,$UserValues
```
Combina los valores predeterminados de un "sistema", con los "ingresados por el usuario".

#### OUTPUT
```
Name                           Value                                                                                                                       
----                           -----                                                                                                                       
Proxy                          127.0.0.1                                                                                                                   
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

