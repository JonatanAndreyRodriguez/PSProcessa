---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Remove-EnvironmentVariable

## SYNOPSIS
Permite eliminar una variable de entorno.

## SYNTAX

```
Remove-EnvironmentVariable [-Name] <String>
```

## DESCRIPTION
Si la variable de entorno existe, se elimina.
Si variable no existe, no se produce ningún error.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Remove-EnvironmentVariable -Name 'MyVariable'
```

## PARAMETERS

### -Name
Nombre de la variable de entorno.

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

### Puede canalizar el valor de Name.

## OUTPUTS

### System.Void

## NOTES
Autor: Atorres

## RELATED LINKS

[[Set-EnvironmentVariable](Set-EnvironmentVariable.md)]()

