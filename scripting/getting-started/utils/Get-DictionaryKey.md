---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Get-DictionaryKey

## SYNOPSIS
Obtiene el valor de la clave especificada en el diccionario.

## SYNTAX

```powershell
Get-DictionaryKey [-InputObject] <IDictionary> [-Key] <String> [[-DefaultValue] <PSObject>]
```

## DESCRIPTION
Obtiene el valor de la clave especificada en el diccionario, si no la encuentra, retorna un valor predeterminado.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
$PSBoundParameters | Get-DictionaryKey -Key 'MyKey' -DefaultValue 'MyValue'
```

## PARAMETERS

### -InputObject
{{Fill InputObject Description}}

```yaml
Type: IDictionary
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Key
{{Fill Key Description}}

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DefaultValue
{{Fill DefaultValue Description}}

```yaml
Type: PSObject
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

### Puede canalizar el valor de InputObject.

## OUTPUTS

### Valor del elemento en el diccionario o DefaultValue (si el diccionario no tiene un elemento cn la clave especificada).

## NOTES
Autor: Atorres

## RELATED LINKS

