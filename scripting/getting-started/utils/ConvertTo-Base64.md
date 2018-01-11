---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# ConvertTo-Base64

## SYNOPSIS
Convierte cada valor en InputObject en su representación de cadena equivalente codificada con dígitos de base 64.
PSCX Cmdlet: Converts byte array or specified file contents to base64 string.

## SYNTAX

```
ConvertTo-Base64 -InputObject <Object> [[-Depth] <Int32>] [[-Encoding] <String>]
```

## DESCRIPTION
Cada valor en InputObject se convierte primero a formato JSON y luego a una cadena equivalente codificada con dígitos de base 64.

Converts byte array or specified file contents to base64 string. 
By default, this cmdlet inserts line breaks every 76 characters and outputs the result in a single string.
For very large files, you may run into OutOfMemoryExceptions.
In this case, use the -Stream parameter which will generate multiple string outputs that, combined together, result in the equivalent base 64 text.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Get-Date | Convert-ToBase64
```

### -------------------------- EXAMPLE 1 --------------------------
PS C:\\\>

```
[byte[]](1..127) | ConvertTo-Base64
```

This buffers up the steam of bytes and then outputs the base64 string.

### -------------------------- EXAMPLE 2 --------------------------
PS C:\\\>

```
$arr = [byte[]](1..127); ConvertTo-Base64 -Inp $arr
```

This outputs the base64 string based on the byte array passed into the InputObject parameter.

### -------------------------- EXAMPLE 3 --------------------------
PS C:\\\>

```
$b64 = ConvertTo-Base64 Foo.dll -NoLineBreak
```

Converts the specified file (read as binary) to a base 64 string.

### -------------------------- EXAMPLE 4 --------------------------
PS C:\\\>

```
ConvertTo-Base64 $PSHome\PowerShell.exe -stream > b64.txt
```

When dealing with large files it is usually better to pass the path to ConvertTo-Base64.

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

