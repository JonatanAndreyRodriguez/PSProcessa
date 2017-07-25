---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Set-ConfigurationFile

## SYNOPSIS
Establece los valores ingresados por el usuario en un archivo de configuración *.config.

## SYNTAX

```
Set-ConfigurationFile [-Path] <String> [-ConfigurationInfo] <Object> [[-Title] <String>] [-Force]
```

## DESCRIPTION
{{Fill in the Description}}

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
$ConfigInfo = @(

New-ConfigurationItem -Type 'ConnectionString' -ConfigKey 'MyKey1' -FriendlyName 'MiNombre1' -DataType 'String' -Description 'Cadena de conexión nro 1' -Category 'Cadenas de conexión'
	New-ConfigurationItem -Type 'AppSetting' -ConfigKey 'MyKey2' -FriendlyName 'MiNombre2' -DataType 'String' -Description 'Un valor para algo' -Category 'Configuraciones generales'
	New-ConfigurationItem -Type 'EnvironmentVariable' -ConfigKey 'MiKey3' -FriendlyName 'MiNombre3' -DataType 'Int32' -Description 'Un número entre 1 y 10' -Category 'Configuraciones generales' -ValidationScript { $Args\[0\] -ge 1 -and $Args\[0\] -le 10 } -ValidationScriptMessage 'Solo se admiten valores entre 1 y 10'
)

'C:\MyFile.config' | Set-ConfigurationFile -ConfigurationInfo $ConfigInfo
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

### -ConfigurationInfo
Elementos de configuración que se establecen en el archivo.

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Title
Titulo para el cuadro de dialogo que se muestra al usuario.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: Valores de configuración
Accept pipeline input: False
Accept wildcard characters: False
```

### -Force
Cuando se establece se escribe el valor del elemento de configuración, aun cuando sea nulo o vacío.

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

Puede canalizar el valor de Path.

## OUTPUTS

Void

## NOTES
Autor: Atorres

## RELATED LINKS

