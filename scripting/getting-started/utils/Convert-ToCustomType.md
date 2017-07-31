---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Convert-ToCustomType

## SYNOPSIS
Convierte un objeto a partir de la información de otro objeto.

## SYNTAX

### FromStyle (Default)
```
Convert-ToCustomType -InputObject <PSObject> -TypeName <String> [-ResolverNameStyle <String>]
 [-FixedProperty <IDictionary>] [-AdditionalProperty <IDictionary>]
```

### FromResolver
```
Convert-ToCustomType -InputObject <PSObject> -TypeName <String> -ResolverNameScript <ScriptBlock>
 [-FixedProperty <IDictionary>] [-AdditionalProperty <IDictionary>]
```

## DESCRIPTION
"Copia" las propiedades del objeto en InputObject a un nuevo objeto.
Si InputObject es de tipo IDictionary, entonces utiliza las parejas Key/Value como el origen de las propiedades.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
@{
```

isPresent = $false
    name = 'xxxx'
    id = 12345
    lastDate = Get-Date
    categoryId = 5
    monitored = $true
} | Convert-ToCustomType -TypeName 'MyTestName'

### -------------------------- EXAMPLE 2 --------------------------
```
@{
```

is_present = $false
    name = 'xxxx'
    id = 12345
    last_date = Get-Date
    category_id = 5
    monitor = $true
} | Convert-ToCustomType -TypeName 'MyTestName'

### -------------------------- EXAMPLE 3 --------------------------
```
@{
```

is_present = $false
    name = 'xxxx'
    id = 12345
    last_date = Get-Date
    category_id = 5
    monitor = $true
} | Convert-ToCustomType -TypeName 'MyTestName' -FixedProperty @{'monitor'='MyMonitorName'}

### -------------------------- EXAMPLE 4 --------------------------
```
@{
```

isPresent = $false
    name = 'xxxx'
    id = 12345
    lastDate = Get-Date
    categoryId = 5
    monitored = $true
} | Convert-ToCustomType -TypeName 'MyTestName' -ResolverNameStyle ShiftKey

### -------------------------- EXAMPLE 5 --------------------------
```
@{
```

isPresent = $false
    name = 'xxxx'
    id = 12345
    lastDate = Get-Date
    categoryId = 5
    monitored = $true
} | Convert-ToCustomType -TypeName 'MyTestName' -ResolverNameScript {$Input.ToUpper()}

### -------------------------- EXAMPLE 6 --------------------------
```
@{
```

isPresent = $false
    name = 'xxxx'
    id = 12345
    lastDate = Get-Date
    categoryId = 5
    monitored = $true
} | Convert-ToCustomType -TypeName 'MyTestName' -AdditionalProperty @{prop1=$True;prop2=0}

### -------------------------- EXAMPLE 7 --------------------------
```
Invoke-SqlCommand -ConnectionString $ConnectionString -CommandText 'select * from sys.tables' |
```

Convert-ToCustomType -TypeName 'MyTestName' -ResolverNameStyle TitleCase

## PARAMETERS

### -InputObject
Objeto del que se extra la información de las propiedades que deben ser "copiadas".

```yaml
Type: PSObject
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -TypeName
Nombre que se utiliza para describir el tipo que se está creando.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResolverNameScript
Define como se generan los nombres de las propiedades del objeto resultante.
La variable automática $Input será enviada al script para que se genere el nombre de la propiedad.
Por ejemplo: Para retornar los nombres en mayúsculas utilice $Input.ToUpper()

```yaml
Type: ScriptBlock
Parameter Sets: FromResolver
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResolverNameStyle
Define como se generan los nombres de las propiedades del objeto resultante.

Valor | Descripción | Entrada | Salida
----- | ----------- | ------- | ------
TitleCase | Quita el caracter underline y convirte el resultado a TitleCase | my_name | MyName
ShiftKey | Convierte a mayúscula inicial | myName | MyName

```yaml
Type: String
Parameter Sets: FromStyle
Aliases: 

Required: False
Position: Named
Default value: TitleCase
Accept pipeline input: False
Accept wildcard characters: False
```

### -FixedProperty
Hashtable con las propiedades a las que se deben asignar nombres fijos.

```yaml
Type: IDictionary
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AdditionalProperty
Hashtable con las propiedades adicionales que se deben agregar al objeto resultante.

```yaml
Type: IDictionary
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

### Puede canalizar el valor de InputObject.

## OUTPUTS

### System.Management.Automation.PSObject

## NOTES
Autor: Atorres

## RELATED LINKS

