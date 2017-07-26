---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Set-AppSetting

## SYNOPSIS
Crea o actualiza el valor de una clave en la sección AppSettings de un archivo de configuración.

## SYNTAX

```powershell
Set-AppSetting [-Path] <String> [-Key] <String> [-Value] <String>
```

## DESCRIPTION
Crea o actualiza (si existe) el valor de una clave en la sección AppSettings de un archivo de configuración.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Set-AppSetting -Path 'C:\MyConfig.config' -Key 'MiClave' -Value 'MiValor'
```

### -------------------------- EXAMPLE 2 --------------------------
```powershell
'ServiceName' | Get-ServicePath | Set-AppSetting -Key 'MiClave' -Value 'MiValor'
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
Clave que identifica la entrada para agregar o modificar.

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

### -Value
Valor que se asocia con la clave para agregar o modificar.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 3
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

