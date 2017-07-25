---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Get-ServiceConfigFile

## SYNOPSIS
Obtiene la ruta de acceso del archivo de configuración de un servicio de Windows.

## SYNTAX

```
Get-ServiceConfigFile [-ServiceName] <String>
```

## DESCRIPTION
Obtiene el archivo de configuración asociado a los servicios de Windows desarrollados por Processa.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Get-ServiceConfigFile -ServiceName 'NombreServicio'
```

### -------------------------- EXAMPLE 2 --------------------------
```
'NombreServicio' | Get-ServiceConfigFile
```

### -------------------------- EXAMPLE 3 --------------------------
```
Get-Service -Name '*Processa*' | Get-ServiceConfigFile
```

## PARAMETERS

### -ServiceName
Nombre del servicio de Windows.

```yaml
Type: String
Parameter Sets: (All)
Aliases: Name

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

## INPUTS

Puede canalizar el valor de ServiceName

## OUTPUTS

String con la ruta de acceso del archivo de configuración o NULL si el servicio o el archivo no existieran.

## NOTES
Autor: Atorres

## RELATED LINKS

[Get-Service](https://msdn.microsoft.com/en-us/powershell/reference/5.0/microsoft.powershell.management/get-service)

