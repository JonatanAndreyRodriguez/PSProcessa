---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Remove-AppSetting

## SYNOPSIS
Elimina  una entrada en la sección AppSettings de un archivo de configuración.

## SYNTAX

```
Remove-AppSetting [-Path] <String> [-Key] <String>
```

## DESCRIPTION
Elimina (si existe) una entrada en la sección AppSettings de un archivo de configuración.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Remove-AppSetting -Path 'C:\MyConfig.config' -Key 'MiClave'
```

### -------------------------- EXAMPLE 2 --------------------------
```
'ServiceName' | Get-ServiceConfigFile | Remove-AppSetting -Key 'MiClave'
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
Clave que identifica la entrada para eliminar.

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

Puede canalizar el valor de Path.

## OUTPUTS

Void

## NOTES
Autor: Atorres

## RELATED LINKS

[Set-ConnectionString](Set-ConnectionString.md)

[Get-ConnectionStringSection](Get-ConnectionStringSection.md)

[Get-ConnectionString](Get-ConnectionString.md)

