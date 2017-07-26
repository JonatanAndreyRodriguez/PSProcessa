---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Disable-Debug

## SYNOPSIS
Deshabilita el modo de depuración en un servicio de Processa.

## SYNTAX

```powershell
Disable-Debug [-Path] <String>
```

## DESCRIPTION
Deshabilita el modo de depuración en un servicio de Windows de Processa.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Disable-Debug -Path 'C:\MyConfig.config'
```

### -------------------------- EXAMPLE 2 --------------------------
```powershell
'ServiceName' | Get-ServiceConfigFile | Disable-Debug
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

[Enable-Debug](Enable-Debug.md)

