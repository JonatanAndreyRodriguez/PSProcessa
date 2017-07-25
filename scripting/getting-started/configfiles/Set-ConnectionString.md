---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Set-ConnectionString

## SYNOPSIS
Crea o actualiza una cadena de conexion en la sección ConnectionStrings de un archivo de configuración.

## SYNTAX

```
Set-ConnectionString [-Path] <String> [-Name] <String> [-ConnectionString] <String> [-Force]
```

## DESCRIPTION
Crea o actualiza (si existe) una conexion en la sección ConnectionStrings de un archivo de configuración.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Set-ConnectionString -Path 'C:\MyConfig.config' -Name 'SQLServer' -ConnectionString 'Server=remote;Database=db;Trusted_Connection=True;'
```

### -------------------------- EXAMPLE 2 --------------------------
```
'C:\MyConfig.config' | Set-ConnectionString -Name 'SQLServer' -ConnectionString 'Server=local;Database=db;User Id=u;Password=p;' -Force
```

### -------------------------- EXAMPLE 3 --------------------------
```
'C:\MyConfig.config' | Set-ConnectionString -Name 'RabbitMQ' -ConnectionString 'host=local;virtualHost=vh;username=u;password=p'
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
Nombre con el que se identifica la conexión en el archivo de configuración.

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

### -ConnectionString
Cadena de conexión asociada con el nombre.

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

### -Force
Cuando está presente, omite la validación de conexión, es decir, guarda el valor sin comprobar la conexión.

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

### Puede canalizar el valor de Path.

## OUTPUTS

### Void

## NOTES
Autor: Atorres

## RELATED LINKS

[[Set-AppSetting](Set-AppSetting.md)]()

