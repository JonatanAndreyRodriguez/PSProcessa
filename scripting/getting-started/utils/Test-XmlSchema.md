---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Test-XmlSchema

## SYNOPSIS
Valida la información en el archivo XML contra el esquema en el archivo XSD.

## SYNTAX

```
Test-XmlSchema [-Path] <String> [-SchemaPath] <String> [[-Severity] <String>] [-Throw]
```

## DESCRIPTION
Valida que un documento XML se ajusta con un esquema XSD.
Los archivos XML y XSD se procesan utilizando la codificación UTF-8.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Test-XmlSchema -Path 'C:\MyFile.xml' -SchemaPath 'C:\MyFile.xsd' -Throw
```

Valida la información en el archivo C:\MyFile.xml contra el esquema en el archivo C:\MyFile.xsd y genera un error si se presentan errores.

## PARAMETERS

### -Path
Ruta de acceso del archivo XML.

```yaml
Type: String
Parameter Sets: (All)
Aliases: FullName

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -SchemaPath
Ruta de acceso del archivo XSD.

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

### -Severity
Representa la gravedad del evento de validación.
Valor predeterminado Error.
\[Más información\](https://msdn.microsoft.com/en-us/library/system.xml.schema.xmlseveritytype(v=vs.110).aspx)

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: Error
Accept pipeline input: False
Accept wildcard characters: False
```

### -Throw
Cuando está presente y la validación contra el esquema falla, genera una excepción de tipo XmlSchemaValidationException.

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

### Puede canalizar el valor de Path desde la función Get-ChildItem.

## OUTPUTS

### Cuando se especifica Throw y la validación falla, se genera una exception.
Cuando NO se especifica Throw  y la validación falla, se retorna una lista de strings con los errores que se presentaron.

## NOTES
Autor: Atorres

## RELATED LINKS

