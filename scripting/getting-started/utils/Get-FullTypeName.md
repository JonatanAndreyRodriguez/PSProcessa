---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Get-FullTypeName

## SYNOPSIS
Obtiene el nombre completo de un tipo (incluido el Namespace) a partir de la información del módulo que se está ejecutando.

## SYNTAX

```powershell
Get-FullTypeName [-TypeName] <String>
```

## DESCRIPTION
Obtiene el nombre completo de un tipo (incluido el Namespace) a partir de la información del módulo que se está ejecutando.
El nombre del Namespace se obtiene con la función Get-ModuleNamespace.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Get-FullTypeName -TypeName 'MyCustomTypeName'
```

## PARAMETERS

### -TypeName
Nombre del tipo que se desea generar.

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

## INPUTS

Ninguno

## OUTPUTS

System.String

## NOTES
Autor: Atorres

## RELATED LINKS

[Get-ModuleNamespace](Get-ModuleNamespace.md)

