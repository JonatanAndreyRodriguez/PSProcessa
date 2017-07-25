---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Unprotect-AppSettingSection

## SYNOPSIS
Descifra los valores de la sección AppSettings de un archivo de configuración.

## SYNTAX

```
Unprotect-AppSettingSection [-Path] <String>
```

## DESCRIPTION
Descifra la sección AppSetting de un archivo de configuración

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Unprotect-AppSettingSection -Path 'C:\MyConfig.config'
```

### -------------------------- EXAMPLE 2 --------------------------
```
'C:\MyConfig.config' | Unprotect-AppSettingSection
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

Void

## NOTES

## RELATED LINKS

[Protect-ConnectionStringSection](Protect-ConnectionStringSection.md)


