---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Set-EnvironmentVariable

## SYNOPSIS
Permite establecer el valor de una variable de entorno.

## SYNTAX

```powershell
Set-EnvironmentVariable [-Name] <String> [-Value] <String> [[-Scope] <String>]
```

## DESCRIPTION
Si la variable de entorno no existe, se crea y se asigna el contenido. Si existe, su valor se modifica.

> NOTA: Esta función no tiene ningún efecto en las variables de entorno de otros procesos.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Set-EnvironmentVariable -Name 'MyVariable' -Value 'MyValue' -Scope 'Machine'
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

### -Value
Valor para asignar a la variable.

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

### -Scope
Alcance de la variable de entorno.
Valores admitidos: 'Machine', 'User'. Valor predeterminado: _Machine_.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: Machine
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS
None

## OUTPUTS

System.Void

## NOTES
Autor: Atorres

## RELATED LINKS

[Get-EnvironmentVariable](Get-EnvironmentVariable.md)

