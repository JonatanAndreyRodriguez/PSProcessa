---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Start-TranscriptFile

## SYNOPSIS
Crea un registro de la sesión de Windows PowerShell en un archivo de texto en la carpeta logs.

## SYNTAX

```powershell
Start-TranscriptFile [[-VariableName] <String>] [[-FileName] <String>] [[-Append] <Boolean>]
 [-IncludeInvocationHeader]
```

## DESCRIPTION
{{Fill in the Description}}

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Start-TranscriptFile
```

Inicia el registro de la sesión utilizando los valores predeterminados.
En este caso la ruta de acceso al archivo de transcripción se encuentra en la variable global TranscriptFilePath.

### -------------------------- EXAMPLE 2 --------------------------
```powershell
Start-TranscriptFile -VariableName 'MyCustomGlobalVariableName'
$MyCustomGlobalVariableName | Out-Default
start notepad $MyCustomGlobalVariableName
```

Inicia el registro de la sesión y coloca la ruta del archivo en la variable global MyCustomGlobalVariableName.
Luego abre el archivo con el Bloc de Notas.

## PARAMETERS

### -VariableName
Nombre de la variable global que se crea para almacenar el nombre del archivo creado.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: TranscriptFilePath
Accept pipeline input: False
Accept wildcard characters: False
```

### -FileName
Nombre del archivo de texto.
A este nombre se le agregará la fecha actual en formato yyyy-MM-dd.
Valor predeterminado _$null_
Si el valor es $null, se creará un nombre de archivo de forma automática.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Append
Cuando es $True, el registro de la sesión se anexa al archivo (si ya existiera).
Valor predeterminado _$true_.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: True
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeInvocationHeader
Indica que se registre la marca de tiempo cuando se ejecutan los comandos.

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
None

## OUTPUTS
None

## NOTES
Autor: Atorres

## RELATED LINKS

[Stop-TranscriptFile](Stop-TranscriptFile.md)

