---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Find-FullPath

## SYNOPSIS
Busca la ruta completa de un archivo a partir de su nombre.

## SYNTAX

### Default (Default)
```
Find-FullPath -FileName <String>
```

### Newest
```
Find-FullPath -FileName <String> [-Newest]
```

### Oldest
```
Find-FullPath -FileName <String> [-Oldest]
```

## DESCRIPTION
Busca el archivo en cada carpeta de la variable %PATH% del sistema operativo.
Si no se encuentra al menos un archivo se genera una excepción FileNotFoundException.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Find-FullPath -FileName 'cmd.exe'
```

Encuentra la ruta de acceso completa del archivo cmd.exe

## PARAMETERS

### -FileName
Nombre del archivo que se está buscando.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Newest
Cuando se establece y el archivo se encuentra en varias carpetas, retorna el archivo más nuevo.

```yaml
Type: SwitchParameter
Parameter Sets: Newest
Aliases: 

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Oldest
Cuando se establece y el archivo se encuentra en varias carpetas, retorna el archivo más antiguo.

```yaml
Type: SwitchParameter
Parameter Sets: Oldest
Aliases: 

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

### Puede canalizar el valor de FileName.

## OUTPUTS

### System.IO.FileInfo

## NOTES

## RELATED LINKS

