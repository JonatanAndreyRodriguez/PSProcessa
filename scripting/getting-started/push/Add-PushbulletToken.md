---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Add-PushbulletToken

## SYNOPSIS
Agrega la información de un token de PushBullet a un perfil.

## SYNTAX

```
Add-PushbulletToken [-ProfileName] <String> [-AccessToken] <PushbulletToken>
```

## DESCRIPTION
Agrega la información de un token de PushBullet a un perfil.
Se necesita permisos de Administrador para completar la función.

\> Se necesita permisos de Administrador para completar la función.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Add-PushbulletToken -ProfileName 'Demo' -AccessToken (New-PushbulletToken -Name 'Nuevo dispositivo' -Token 'x.BB8k4tBesQeRqbum5CrQJY6g7xwEI111')
```

## PARAMETERS

### -ProfileName
Nombre del perfil al que se agrega el token.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AccessToken
Información del token que se debe agregar al perfil. Vea [New-PushbulletToken](New-PushbulletToken.md)

```yaml
Type: PushbulletToken
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS
None

## OUTPUTS

System.Void

## NOTES
Autor: Atorres

## RELATED LINKS

[Set-PushbulletProfile](Set-PushbulletProfile.md)

[New-PushbulletToken](New-PushbulletToken.md)

