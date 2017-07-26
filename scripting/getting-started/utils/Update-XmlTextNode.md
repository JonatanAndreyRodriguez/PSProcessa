---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Update-XmlTextNode

## SYNOPSIS
Establece valores en un documento XML en un nodo de tipo TextNode.

## SYNTAX

```powershell
Update-XmlTextNode [-Path] <String> [-XPath] <String> [-Value] <String>
```

## DESCRIPTION
Permite utilizar consultas XPath para establecer valores en documentos XML en nodos de tipo TextNode.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Update-XmlTextNode -Path 'C:\MyFile.xml' -XPath '/root'
```

### -------------------------- EXAMPLE 2 --------------------------
```powershell
'C:\MyFile.xml' | Update-XmlTextNode -XPath '/root'
```

### -------------------------- EXAMPLE 3 --------------------------
```powershell
'C:\MyFile.dtsconfig' | Update-XmlTextNode -XPath "//Configuration[@Path='\Package.Variables[User::FilePath].Properties[Value]']/ConfiguredValue" -Value 'NewValue'
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
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Value
Especifica el valor que se establece con los nodos que coincidan con la expresión XPath.

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

## INPUTS

Puede canalizar el valor de Path.

## OUTPUTS

Void

## NOTES
Autor: Atorres

## RELATED LINKS

[Find-Xml](Find-Xml.md)


