---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# New-ConfigurationItem

## SYNOPSIS
Crea un objeto que representa un elemento de configuración en un archivo *.config.

## SYNTAX

```
New-ConfigurationItem [-Type] <String> [-ConfigKey] <String> [-FriendlyName] <String> [-DataType] <String>
 [-Description] <String> [[-ValidationPattern] <String>] [[-ValidationPatternMessage] <String>]
 [[-Category] <String>] [[-Format] <String>] [[-Required] <Boolean>] [[-ValidationScript] <ScriptBlock>]
 [[-ValidationScriptMessage] <String>]
```

## DESCRIPTION
Crea un objeto que representa un elemento de configuración en un archivo *.config.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
New-ConfigurationItem -Type 'ConnectionString' -ConfigKey 'mongodb:dbName' -FriendlyName 'BDMongo' -DataType 'String' -Description 'Cadena de conexión con la base de datos de MongoDB' -Category 'Cadenas de conexión'
```

### -------------------------- EXAMPLE 2 --------------------------
```
New-ConfigurationItem -Type 'AppSetting' -ConfigKey 'startDate' -FriendlyName 'FechaInicioPeriodo' -DataType 'Date' -Description 'Fecha de inicio de algo' -Category 'Configuraciones generales' -Format '{0:yyyy-MM-dd}'
```

### -------------------------- EXAMPLE 3 --------------------------
```
New-ConfigurationItem -Type 'EnvironmentVariable' -ConfigKey 'OS' -FriendlyName 'SistemaOperativo' -DataType 'String' -Description 'Nombre del sistema operativo' -Category 'Configuraciones generales' -Required $false
```

### -------------------------- EXAMPLE 4 --------------------------
```
New-ConfigurationItem -Type 'EnvironmentVariable' -ConfigKey 'days' -FriendlyName 'NumeroDias' -DataType 'Int32' -Description 'Prueba variable de ambiente no existente' -Category 'Configuraciones generales' -ValidationPattern '^\d*$' -ValidationPatternMessage 'Solo se admiten números' -ValidationScript { $Args[0] -gt 0 -and $Args[0] -le 10 } -ValidationScriptMessage 'Solo se admiten valores entre 1 y 10'
```

## PARAMETERS

### -Type
Tipo del elemento de configuración.
Se admiten los valores ConnectionString, AppSetting y EnvironmentVariable.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConfigKey
Clave del elemento de configuración en el archivo *.config

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

### -FriendlyName
Nombre que se presenta al usuario para el elemento de configuración.

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

### -DataType
Tipo de dato que se asigna al elemento de configuración.
Se admiten los valores String, Int32, Bool y Date.
Valor predeterminado String.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
Texto que se presenta como ayuda al usuario en la pantalla donde se le solicita que estableza un valor para el elemento de configuración.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ValidationPattern
Formato de expresión regular contra el que se valida el texto ingresado por el usuario para el elemento de configuración.
Valor predeterminado .* (se admite cualquier valor).

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 6
Default value: .*
Accept pipeline input: False
Accept wildcard characters: False
```

### -ValidationPatternMessage
Mensaje que se muestra al usuario cuando la validación de 'ValidationPattern' para el elemento de configuración no es exitosa.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Category
Nombre de la categória en la que se muestra el elemento de configuración.
Valor predeterminado Misc.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 8
Default value: Misc
Accept pipeline input: False
Accept wildcard characters: False
```

### -Format
Cadena de formato compuesto (https://goo.gl/Ruozzs) que se utiliza para formatear el valor del elemento de configuración cuando se persite en el archivo *.config.
Valor predeterminado {0}.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 9
Default value: {0}
Accept pipeline input: False
Accept wildcard characters: False
```

### -Required
Establece si se requiere que el usuario asigne un valor al elemento de configuración.
Valor predeterminado $true.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: 

Required: False
Position: 10
Default value: True
Accept pipeline input: False
Accept wildcard characters: False
```

### -ValidationScript
Comando personalizado que se utiliza para validar el texto ingresado por el usuario para el elemento de configuración.
Valor predeterminado $null (no se hace ninguna validación).
Al comando se envia un parámetro ($Args\[0\]) con el valor ingresado por el usuario (tipo en DataType), luego de pasar la validación de $ValidationPattern (si se establece una).
El bloque de código debe retornar un valor de tipo bool indicando si la validación fue satisfactoria o no.

```yaml
Type: ScriptBlock
Parameter Sets: (All)
Aliases: 

Required: False
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ValidationScriptMessage
Mensaje que se muestra al usuario cuando la validación de 'ValidationScript' para el elemento de configuración no es exitosa.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 12
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS
None

## OUTPUTS

Processa.Management.Automation.ConfigurationItem

## NOTES
Autor: Atorres

## RELATED LINKS

