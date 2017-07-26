---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Get-ConnectionString

## SYNOPSIS
Obtiene el valor de una cadena de conexión en la sección ConnectionString de un archivo de configuración.

## SYNTAX

```powershell
Get-ConnectionString [-Path] <String> [-Name] <String>
```

## DESCRIPTION
Obtiene el valor de una conexión a base de datos de un archivo de configuración a partir de la llave y ruta del archivo de configuración

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Get-ConnectionString -Path 'C:\MyConfig.config' -Name 'LocalSqlServer'
```

### -------------------------- EXAMPLE 2 --------------------------
```powershell
'C:\MyConfig.config' | Get-ConnectionString -Name 'LocalSqlServer'
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

### -Name
Cadena con el nombre de la conexión en el archivo de configuración.

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
System.String

## NOTES
Autor: Atorres

## RELATED LINKS

[Get-AppSetting](Get-AppSetting.md)

[Get-ConnectionStringSection](Get-ConnectionStringSection.md)

