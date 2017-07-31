---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Get-ModuleNamespace

## SYNOPSIS
Obtiene el el nombre del Namespace que se debe utilizar cuando se convierten objetos a tipos personalizados con la función Convert-ToCustomType.

## SYNTAX

```powershell
Get-ModuleNamespace [[-CallStackFrame] <Int32>]
```

## DESCRIPTION
Obtiene el el nombre del Namespace que se debe utilizar cuando se convierten objetos a tipos personalizados con la función Convert-ToCustomType.
Si desea invalidar este comportamiento, establezca el valor de la variable global ProcessaNamespace a vacío o nulo.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Get-ModuleNamespace
```

Genera un nombre de Namespace utilizando el nombre del módulo de la función que se encuentra en el posición 2 de la pilla de llamadas.

### -------------------------- EXAMPLE 2 --------------------------
```powershell
Get-ModuleNamespace -CallStackFrame 5
```

Genera un nombre de Namespace utilizando el nombre del módulo de la función que se encuentra en el posición 5 de la pilla de llamadas.

## PARAMETERS

### -CallStackFrame
Índice en la pila de llamadas de la función para la que se obtiene el módulo contenedor.
Valor predeterminado 2.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: 2
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS
Ninguno.

## OUTPUTS

System.String

## NOTES
Autor: Atorres

## RELATED LINKS

[Get-PSCallStack](https://msdn.microsoft.com/en-us/powershell/reference/5.0/microsoft.powershell.utility/get-pscallstack)

[Get-FullTypeName](Get-FullTypeName.md)

