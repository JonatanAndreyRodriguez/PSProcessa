---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Remove-ConnectionString

## SYNOPSIS
Elimina una cadena de conexion en la sección ConnectionStrings de un archivo de configuración.

## SYNTAX

```powershell
Remove-ConnectionString [-Path] <String> [-Name] <String>
```

## DESCRIPTION
Elimina (si existe) una conexion en la sección ConnectionStrings de un archivo de configuración.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Remove-ConnectionString -Path 'C:\MyConfig.config' -Name 'SQLServer'
```

### -------------------------- EXAMPLE 2 --------------------------
```powershell
'C:\MyConfig.config' | Remove-ConnectionString -Name 'SQLServer'
```

### -------------------------- EXAMPLE 3 --------------------------
```powershell
'C:\MyConfig.config' | Remove-ConnectionString -Name 'RabbitMQ'
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
Nombre con el que se identifica la conexión en el archivo de configuración que se desea eliminar.

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

[Set-AppSetting](Set-AppSetting.md)

[Get-AppSettingSection](Get-AppSettingSection.md)

