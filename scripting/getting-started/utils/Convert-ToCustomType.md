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
```powershell
Convert-ToCustomType -InputObject <PSObject> -TypeName <String> [-Exclude <String[]>] [-NameStyle <String>]
 [-FixedName <IDictionary>] [-AppendProperty <IDictionary>]
```

### FromResolver
```powershell
Convert-ToCustomType -InputObject <PSObject> -TypeName <String> [-Exclude <String[]>] -NameScript <ScriptBlock>
 [-FixedName <IDictionary>] [-AppendProperty <IDictionary>]
```

## DESCRIPTION
"Copia" las propiedades del objeto en InputObject a un nuevo objeto.
Si InputObject es de tipo IDictionary, entonces utiliza las parejas Key/Value como el origen de las propiedades.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
@{
isPresent = $false
    name = 'xxxx'
    id = 12345
    lastDate = Get-Date
    categoryId = 5
    monitored = $true
} | Convert-ToCustomType -TypeName 'MyTestName'
```


### -------------------------- EXAMPLE 2 --------------------------
```powershell
@{
is_present = $false
    name = 'xxxx'
    id = 12345
    last_date = Get-Date
    category_id = 5
    monitor = $true
} | Convert-ToCustomType -TypeName 'MyTestName'
```


### -------------------------- EXAMPLE 3 --------------------------
```powershell
@{
is_present = $false
    name = 'xxxx'
    id = 12345
    last_date = Get-Date
    category_id = 5
    monitor = $true
} | Convert-ToCustomType -TypeName 'MyTestName' -FixedName @{'monitor'='MyMonitorName'}
```

### -------------------------- EXAMPLE 4 --------------------------
```powershell
@{
isPresent = $false
    name = 'xxxx'
    id = 12345
    lastDate = Get-Date
    categoryId = 5
    monitored = $true
} | Convert-ToCustomType -TypeName 'MyTestName' -NameStyle ShiftKey
```

### -------------------------- EXAMPLE 5 --------------------------
```powershell
@{
isPresent = $false
    name = 'xxxx'
    id = 12345
    lastDate = Get-Date
    categoryId = 5
    monitored = $true
} | Convert-ToCustomType -TypeName 'MyTestName' -NameScript {$Input.ToUpper()}
```

### -------------------------- EXAMPLE 6 --------------------------
```powershell
@{
isPresent = $false
    name = 'xxxx'
    id = 12345
    lastDate = Get-Date
    categoryId = 5
    monitored = $true
} | Convert-ToCustomType -TypeName 'MyTestName' -AppendProperty @{prop1=$True;prop2=0}
```

### -------------------------- EXAMPLE 7 --------------------------
```powershell
Invoke-SqlCommand -ConnectionString $ConnectionString -CommandText 'select * from sys.tables' |
    Convert-ToCustomType -TypeName 'MyTestName' -NameStyle TitleCase
```    

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
A este nombre se le antepone el valor de la variable global $ProcessaNamespace.

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

### -Exclude
Lista con los nombres de las propiedades que se deben excluir del objeto resultante.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NameScript
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

### -NameStyle
Define como se generan los nombres de las propiedades del objeto resultante.
Valor predeterminado Source.

Valor | Descripción | Entrada | Salida
----- | ----------- | ------- | ------
TitleCase | Quita el caracter underline y convirte el resultado a TitleCase | my_name | MyName
ShiftKey | Convierte a mayúscula inicial | myName | MyName
Source | Utiliza el mismo nombre que la propiedad de origen | MyName | MyName

```yaml
Type: String
Parameter Sets: FromStyle
Aliases: 

Required: False
Position: Named
Default value: Source
Accept pipeline input: False
Accept wildcard characters: False
```

### -FixedName
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

### -AppendProperty
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

Puede canalizar el valor de InputObject.

## OUTPUTS

System.Management.Automation.PSObject

## NOTES
Autor: Atorres

## RELATED LINKS
[Get-ModuleNamespace](Get-ModuleNamespace.md)

[Get-FullTypeName](Get-FullTypeName.md)
