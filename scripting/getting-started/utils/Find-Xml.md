---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Find-Xml

## SYNOPSIS
Encuentra texto en un documento XML.

## SYNTAX

```
Find-Xml [-Path] <String> [-XPath] <String>
```

## DESCRIPTION
Permite utilizar consultas XPath para buscar texto en documentos XML.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Find-Xml -Path 'C:\MyFile.xml' -XPath '/root'
```

### -------------------------- EXAMPLE 2 --------------------------
```
'C:\MyFile.xml' | Find-Xml -XPath '/root'
```

### -------------------------- EXAMPLE 3 --------------------------
```
'C:\MyFile.dtsconfig' | Find-Xml -XPath "//Configuration[@Path='\Package.Variables[User::FilePath].Properties[Value]']/ConfiguredValue"
```

### -------------------------- EXAMPLE 4 --------------------------
```
'C:\MyFile.dtsconfig' | Find-Xml -XPath '//Configuration'
```

## PARAMETERS

### -Path
Especifica la ruta de acceso del archivo XML para la búsqueda.

```yaml
Type: String
Parameter Sets: (All)
Aliases: XmlFilePath

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -XPath
Especifica la búsqueda de consulta XPath.
El lenguaje de consulta distingue mayúsculas y minúsculas.
Vea https://goo.gl/7PBqN7

```yaml
Type: String
Parameter Sets: (All)
Aliases: XPathExpression

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

Puede canalizar el valor de Path.

## OUTPUTS

System.Xml.XmlNode

## NOTES
Autor: Atorres

## RELATED LINKS

[Update-XmlTextNode](Update-XmlTextNode.md)

