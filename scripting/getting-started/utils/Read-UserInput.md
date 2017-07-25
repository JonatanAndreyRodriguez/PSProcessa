---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Read-UserInput

## SYNOPSIS
Lee una línea de entrada ingresada por el usuario desde la consola.

## SYNTAX

```
Read-UserInput [-Prompt] <String> [[-Pattern] <String>] [[-ErrorMessage] <String>]
 [[-ScriptBlock] <ScriptBlock>] [[-HiddenSuffix] <String>] [[-DefaultValue] <String>] [-Hidden] [-Check]
```

## DESCRIPTION
Lee una línea de entrada ingresada por el usuario desde la consola y hace las validaciones establecidas ante de retornar un valor.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
$Params = @{
    Prompt = 'Ingrese un número entre 1 y 10'
    Pattern = '^\[0-9\]{1,2}$'
    ErrorMessage = 'Solo se admiten dígitos entre 1 y 10'
    ScriptBlock = { \[int\]$Args\[0\] -gt 0 -and \[int\]$Args\[0\] -le 10 }
    Check = $true
}

Read-UserInput @Params
```

## PARAMETERS

### -Prompt
Texto que se muestra como instrucciones al usuario.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Pattern
Patrón de expresión regular que debe coincidir con los datos ingresados por el usuario.
Por defecto se permite la entrada de cualquier valor.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: .*
Accept pipeline input: False
Accept wildcard characters: False
```

### -ErrorMessage
Texto del mensaje que se muestra al usuario cuando el formato del valor ingresado no corresponde con el esperado en Pattern o en ScriptBlock.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: $Script:Resx.ReadUserInputDefaultErrorMessage
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScriptBlock
Comando personalizado que se utiliza para validar el texto ingresado por el usuario.
Valor predeterminado $null (no se hace ninguna validación).
Al comando se envia un parámetro de tipo string ($Args\[0\]) con el valor ingresado por el usuario, luego de pasar la validación de $Pattern (si se establece una).
El bloque de código debe retornar un valor de tipo bool indicando si la validación fue satisfactoria o no.

```yaml
Type: ScriptBlock
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HiddenSuffix
{{Fill HiddenSuffix Description}}

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 5
Default value: $Script:Resx.ReadUserInputConfirmValueSuffix
Accept pipeline input: False
Accept wildcard characters: False
```

### -DefaultValue
{{Fill DefaultValue Description}}

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Hidden
Indica que se deben mostrar asteriscos (*) en lugar de los caracteres que el usuario escribe como entrada.

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

### -Check
Indica que se le pedirá al usuario que confirme (una segunda vez) el valor ingresado.

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

Puede canalizar el valor de Prompt

## OUTPUTS

Cadena de caracteres con la información ingresada por el usuario. Si se presentan errores en las validaciones System.ArgumentException.

## NOTES
Autor: Atorres

## RELATED LINKS

