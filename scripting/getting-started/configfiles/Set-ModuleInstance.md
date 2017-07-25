---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Set-ModuleInstance

## SYNOPSIS
Establece el número de instancias que se crean, al iniciar un servicio de Processa que utiliza un módulo de PowerShell.

## SYNTAX

```
Set-ModuleInstance [-Path] <String> [-Value] <Int32>
```

## DESCRIPTION
Por defecto se crean 10 instancias del módulo de PowerShell que genera las respuestas del servicio.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Set-ModuleInstance -Path 'C:\MyConfig.config' -Value 15
```

### -------------------------- EXAMPLE 2 --------------------------
```
'ServiceName' | Get-ServicePath | Set-ModuleInstance -Value 15
```

## PARAMETERS

### -Path
Ruta de acceso del archivo de configuración.

```yaml
Type: String
Parameter Sets: (All)
Aliases: ConfigFile

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Value
Número de instancias a crear.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

### Puede canalizar el valor de Path.

## OUTPUTS

### Void

## NOTES
Autor: Atorres

## RELATED LINKS

