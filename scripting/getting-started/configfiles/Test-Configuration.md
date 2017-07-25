---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Test-Configuration

## SYNOPSIS
Verifica la información de los datos de configuración del módulo.

## SYNTAX

```
Test-Configuration [-SaveFlag]
```

## DESCRIPTION
Verifica la información de los datos de configuración del módulo de acuerdo a las comprobaciones que haya agregado el desarrollador.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Test-Configuration
```

Verifica la configuración del módulo (conexiones y demás elementos definidos por el desarrollador).

### -------------------------- EXAMPLE 2 --------------------------
```
Test-Configuration -SaveFlag
```

Verifica la configuración del módulo (conexiones y demás elementos definidos por el desarrollador).
Si alguna verificación falla, establece el valor de *No configurado* en el archivo PSGemini.config

### -------------------------- EXAMPLE 3 --------------------------
```
Test-Configuration -Verbose
```

Verifica la configuración del módulo (conexiones y demás elementos definidos por el desarrollador) mostrando los mensajes de resultado de cada validación.


## PARAMETERS

### -SaveFlag
Cuando se establece y las validaciones fallan, actualiza el valor de *No configurado* en el archivo PSGemini.config

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

None

## OUTPUTS

System.Void

## NOTES
Autor: Atorrest

## RELATED LINKS

[Set-Configuration](Set-Configuration.md)

[Get-Configuration](Get-Configuration.md)

