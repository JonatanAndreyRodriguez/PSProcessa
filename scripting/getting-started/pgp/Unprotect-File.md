---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Unprotect-File

## SYNOPSIS
Descifra un archivo con extensión .pgp

## SYNTAX

### NoSignature
```powershell
Unprotect-File -PrivateKeyFileName <String> -FileName <String> -Password <String> [-JavaPath <String>]
```

### Signature
```powershell
Unprotect-File -PrivateKeyFileName <String> -PublicKeyFileName <String> -FileName <String> -Password <String>
 [-JavaPath <String>]
```

## DESCRIPTION
Descifra un archivo por medio de la utilidad OpenPGP y lo deja con su extensión original.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Unprotect-File -PrivateKeyFileName 'C:\TestPrivateKey.asc' -PublicKeyFileName 'C:\TestPublicKey.asc' -FileName 'C:\ArchivoPrueba.txt' -Password 'PGPPassword'
```

### -------------------------- EXAMPLE 2 --------------------------
```powershell
Unprotect-File -PrivateKeyFileName 'C:\TestPrivateKey.asc' -FileName 'C:\ArchivoPrueba.txt' -Password 'PGPPassword'
```

### -------------------------- EXAMPLE 3 --------------------------
```powershell
Unprotect-File -PrivateKeyFileName 'C:\TestPrivateKey.asc' -PublicKeyFileName 'C:\TestPublicKey.asc' -FileName 'C:\ArchivoPrueba.txt' -Password 'PGPPassword' -JavaPath 'C:\ProgramData\Oracle\Java\javapath\java.exe'
```

## PARAMETERS

### -PrivateKeyFileName
Ruta de la llave secreta que se usara para cifrar los archivos.

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

### -PublicKeyFileName
Ruta de la llave pública que se usara para cifrar los archivos.

```yaml
Type: String
Parameter Sets: Signature
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FileName
Ruta completa del archivo que se va a cifrar.

```yaml
Type: String
Parameter Sets: (All)
Aliases: FullName

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Password
Contraseña que se usa cifrar con firma.

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

### -JavaPath
Ruta del archivo "java.exe"	 que ejecutara el jar 'OpenPGP'.
Valor predeterminado 'java.exe'.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: Java.exe
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

Puede canalizar el valor de FileName.

## OUTPUTS

Void

## NOTES
Autor: Atorres

## RELATED LINKS

[Protect-File](Protect-File.md)



