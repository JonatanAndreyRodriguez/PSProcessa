---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Get-EnvironmentVariable

## SYNOPSIS
Obtiene el valor de una variable de ambiente.

## SYNTAX

```powershell
Get-EnvironmentVariable [-Name] <String>
```

## DESCRIPTION
Obtiene el valor de una variable de ambiente.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Get-EnvironmentVariable -Name 'OS'
```

## PARAMETERS

### -Name
Cadena con el nombre de la variable de ambiente.

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

Puede canalizar el valor de Name.

## OUTPUTS

Cadena con el valor de la variable de ambiente.

## NOTES
Autor: Atorres

## RELATED LINKS

[Set-EnvironmentVariable](Set-EnvironmentVariable.md)

