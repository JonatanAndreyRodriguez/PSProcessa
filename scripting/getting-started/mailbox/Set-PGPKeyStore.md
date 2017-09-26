---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Set-PGPKeyStore

## SYNOPSIS
Registra o actualiza la información de llaves de cifrado PGP.

## SYNTAX

```
Set-PGPKeyStore [-Phrase] <SecureString> [-Name] <String> [-PublicKeyPath] <String> [-PrivateKeyPath] <String>
 [-Force]
```

## DESCRIPTION
Registra o actualiza la información de llaves de cifrado PGP.
\> Se necesita permisos de Administrador para completar la función.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Get-CheckedSecret | Set-PGPKeyStore -Name 'MyName' -PublicKeyPath 'C:\Key_pkr.pgp' -PrivateKeyPath 'C:\Key_skr.pgp'
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
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Name
Parameter description

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

### -PublicKeyPath
Ruta de acceso del archivo con la llave de cifrado pública.

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

### -PrivateKeyPath
Ruta de acceso del archivo con la llave de cifrado privada.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 4
Default value: None
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

## OUTPUTS

### System.Void

## NOTES
Author: Atorres

## RELATED LINKS

