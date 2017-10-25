---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# New-PGPKeyFile

## SYNOPSIS
Generar un par de archivos de claves PGP.

## SYNTAX

```powershell
New-PGPKeyFile [-Phrase] <SecureString> [-OutPath] <String> [[-FileName] <String>] [[-Email] <String>]
 [[-JavaPath] <String>] [-Force]
```

## DESCRIPTION
Genera un archivo .pkr (clave pública) y un archivo .skr (clave privada) en la ubicación establecida.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
$Pwd = ConvertTo-SecureString -String 'P@ssW0rD!' -AsPlainText -Force
$Pwd | New-PGPKeyFile -OutPath 'C:\MyFolder'
```

### -------------------------- EXAMPLE 2 --------------------------
```powershell
Get-CheckedSecret | New-PGPKeyFile -OutPath 'C:\MyFolder'
```

## PARAMETERS

### -Phrase
Palabra secreta que se utiliza para generar el archivo con la clave privada.

```yaml
Type: SecureString
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -OutPath
Ruta de acceso de la carpeta donde se generan los archivos de claves.

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

### -FileName
Nombre que se utiliza para los archivos de claves.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: PGPKeyFile
Accept pipeline input: False
Accept wildcard characters: False
```

### -Email
Correo del usuario que genera los archivos de claves.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
Default value: ('{0}@processa.com' -f $env:USERNAME)
Accept pipeline input: False
Accept wildcard characters: False
```

### -JavaPath
Ruta de acceso del archivo ejecutable Java.exe

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 5
Default value: Java.exe
Accept pipeline input: False
Accept wildcard characters: False
```

### -Force
{{Fill Force Description}}

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

Puede canalizar el valor de Phrase desde la función Get-CheckedSecret.

## OUTPUTS

Processa.Management.Automation.PSProcessa.PGPKeyPair

## NOTES
Autor: Atorres

## RELATED LINKS

Get-CheckedSecret
