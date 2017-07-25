---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Remove-PushbulletProfile

## SYNOPSIS
Elimina la información un perfil de PushBullet.

## SYNTAX

```
Remove-PushbulletProfile [[-ProfileName] <String>]
```

## DESCRIPTION
Elimina la información un perfil de PushBullet y todos los dispositivos asociados.
Se necesita permisos de Administrador para completar la función.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Remove-PushbulletProfile -ProfileName 'Test'
```

### -------------------------- EXAMPLE 2 --------------------------
```
[Get-PushbulletProfile](Get-PushbulletProfile.md)
```

## PARAMETERS

### -ProfileName
Nombre del perfil a eliminar.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### System.Void

## NOTES
Autor: Atorres

## RELATED LINKS

[[Set-PushbulletProfile](Set-PushbulletProfile.md)]()

