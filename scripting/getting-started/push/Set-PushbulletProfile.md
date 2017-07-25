---
external help file: PSProcessa-help.xml
online version: https://trello.com/c/PE85plji
schema: 2.0.0
---

# Set-PushbulletProfile

## SYNOPSIS
Crea o actualiza la información de un perfil de tokens de acceso a PushBullet.

## SYNTAX

```
Set-PushbulletProfile [-ProfileName] <String> [-AccessToken] <Object>
```

## DESCRIPTION
Crea o actualiza la información de un perfil de tokens de acceso a PushBullet.
Se necesita permisos de Administrador para completar la función.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
$Tokens = @(
New-PushbulletToken -Name 'Operaciones' -Token 'o.h7K5yXpS6k6OR710PKeWhXGGj4T15LGe'
	New-PushbulletToken -Name 'IT' -Token 'o.XX8k4tBesQeRqbum5CrQJY6g7xwEITRo'
)
Set-PushbulletProfile -ProfileName 'Perfil de prueba' -AccessToken $Tokens
```

## PARAMETERS

### -ProfileName
Nombre asignado al perfil.

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
Tokens de acceso de PushBullet asociados con el perfil.

```yaml
Type: Object
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

