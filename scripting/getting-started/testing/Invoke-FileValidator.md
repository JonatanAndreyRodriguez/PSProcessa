---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Invoke-FileValidator

## SYNOPSIS
Valida la estructura de un archivo de acuerdo a un archivo XML que describe el formato esperado.

## SYNTAX

```
Invoke-FileValidator [-Path] <String> [-XmlPath] <String> [[-LogPath] <String>]
```

## DESCRIPTION
Valida la estructura de un archivo de acuerdo a las definiciones en archivo de reglas en formato XML.
Usa la libreria Processa.FileValidator.dll

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Invoke-FileValidator -Path 'C:\Carpeta\Archivo.txt' -XmlPath 'C:\Carpeta\ArchivoValidacion.xml' -LogPath 'C:\Carpeta\ArchivoLog.log'
```

### -------------------------- EXAMPLE 2 --------------------------
```
Invoke-FileValidator -Path 'C:\Carpeta\Archivo.txt' -XmlPath 'C:\Carpeta\ArchivoValidacion.xml'
```

## PARAMETERS

### -Path
Ruta completa en donde se encuentra el archivo para el que se debe validar su estructura.

```yaml
Type: String
Parameter Sets: (All)
Aliases: FilePath

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -XmlPath
Ruta completa en donde se encuentra el archivo Xml que contiene las reglas de validación de cada campo.

```yaml
Type: String
Parameter Sets: (All)
Aliases: XmlFilePath

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LogPath
Ruta completa en donde se dejará el archivo log con los resultados de la validación.

```yaml
Type: String
Parameter Sets: (All)
Aliases: LogFilePath

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

None

## OUTPUTS

Valor Boolean que indica si el archivo paso la validacion de estructura, de acuerdo con la reglas especificadas en el archivo XML.

## NOTES
Autor: JRiaño

## RELATED LINKS

