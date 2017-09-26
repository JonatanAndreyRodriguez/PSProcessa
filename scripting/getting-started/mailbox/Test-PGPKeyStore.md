---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Test-PGPKeyStore

## SYNOPSIS
Verifica que se pueda cifrar un archivo con la información de conexión suministrada.

## SYNTAX

```powershell
Test-PGPKeyStore [-Phrase] <SecureString> [-PublicKeyPath] <String> [-PrivateKeyPath] <String>
```

## DESCRIPTION
Crea un archivo temporal y verifica que se pueda cifrar con la información de conexión suministrada.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Get-CheckedSecret | Test-PGPKeyStore -PublicKeyPath 'C:\Key_pkr.pgp' -PrivateKeyPath 'C:\Key_skr.pgp'
```

## PARAMETERS

### -Phrase
Contraseña necesaria para acceder a la clave privada.

```yaml
Type: SecureString
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PublicKeyPath
Ruta de acceso del archivo con la llave de cifrado pública.

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

### -PrivateKeyPath
Ruta de acceso del archivo con la llave de cifrado privada.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

Puede canalizar el valor de  ConnectionString.

## OUTPUTS

Ninguno si se logra cifrar el archivo; de lo contrario genera una excepción.

## NOTES
Autor: Atorres

## RELATED LINKS

