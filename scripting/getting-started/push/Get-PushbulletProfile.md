---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Get-PushbulletProfile

## SYNOPSIS
Obtiene la información de tokens asociados con un perfil de PushBullet.

## SYNTAX

```
Get-PushbulletProfile [[-ProfileName] <String>]
```

## DESCRIPTION
Obtiene la información de tokens asociados con un perfil de PushBullet o el nombre de los perfiles creados.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Get-PushbulletProfile -ProfileName 'Test'
```
Obtiene la información del perfil con nombre 'Test'

### -------------------------- EXAMPLE 2 --------------------------
```
Get-PushbulletProfile
```
Obtiene los nombres de todos los perfiles configurados

## PARAMETERS

### -ProfileName
Nombre con el que se creo el perfil.

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

### Processa.Management.Automation.PushbulletToken

### System.String

## NOTES
Autor: Atorres

## RELATED LINKS

[Set-PushbulletProfile](Set-PushbulletProfile.md)

