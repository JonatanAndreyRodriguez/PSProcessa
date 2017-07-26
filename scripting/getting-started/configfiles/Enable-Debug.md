---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Enable-Debug

## SYNOPSIS
Habilita el modo de depuración en un servicio de Processa.

## SYNTAX

```
Enable-Debug [-Path] <String>
```

## DESCRIPTION
Habilita el modo de depuración en un servicio de Windows de Processa.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Enable-Debug -Path 'C:\MyConfig.config'
```

### -------------------------- EXAMPLE 2 --------------------------
```
'ServiceName' | Get-ServiceConfigFile  | Enable-Debug
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

## INPUTS

Puede canalizar el valor de Path.

## OUTPUTS

System.Void

## NOTES
Autor: Atorres

## RELATED LINKS

[Disable-Debug](Disable-Debug.md)

