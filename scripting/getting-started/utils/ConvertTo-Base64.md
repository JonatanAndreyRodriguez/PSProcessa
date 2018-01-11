---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# ConvertTo-Base64

## SYNOPSIS
Convierte cada valor en InputObject en su representación de cadena equivalente codificada con dígitos de base 64.

## SYNTAX

```powershell
ConvertTo-Base64 -InputObject <Object> [[-Depth] <Int32>] [[-Encoding] <String>]
```

## DESCRIPTION
Cada valor en InputObject se convierte primero a formato JSON y luego a una cadena equivalente codificada con dígitos de base 64.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Get-Date | Convert-ToBase64
```
## PARAMETERS

### -InputObject
Objeto(s) para el(los) que se obtiene(n) la cadena equivalente codificada con dígitos de base 64.

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Depth
Especifica cuántos niveles de objetos contenidos se incluyen en la representación JSON del parámetro InputObject.
Valor predeterminado 3.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: 3
Accept pipeline input: False
Accept wildcard characters: False
```

### -Encoding
Codificación de caracteres que se utiliza para generar la secuencia de bytes.
Valor predeterminado UTF8.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: UTF8
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

### Puede canalizar el valor de InputObject.

## OUTPUTS

### System.String

## NOTES
Autor: Atorres

## RELATED LINKS

[ConvertFrom-Base64]()

