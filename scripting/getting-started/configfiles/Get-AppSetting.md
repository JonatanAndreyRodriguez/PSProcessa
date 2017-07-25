---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Get-AppSetting

## SYNOPSIS
Obtiene el valor de una clave en la sección AppSettings de un archivo de configuración.

## SYNTAX

```
Get-AppSetting [-Path] <String> [-Key] <String>
```

## DESCRIPTION
Obtiene el valor de una clave en la sección AppSettings (Clave/Valor) de un archivo de configuración.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Get-AppSetting -Path 'C:\MyConfig.config' -Key 'MiClave'
```

### -------------------------- EXAMPLE 2 --------------------------
```
'C:\MyConfig.config' | Get-AppSetting -Key 'MiClave'
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

### -Key
Nombre de la clave de en el archivo de configuración.

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

## INPUTS

### Puede canalizar el valor de Path.

## OUTPUTS

### Cadena con el valor asociado a la clave en el archivo de configuración.

## NOTES
Autor: Atorres

## RELATED LINKS

[[Get-ConnectionString](Get-ConnectionString.md)]()

[[Get-AppSettingSection](Get-AppSettingSection.md)]()

