---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Send-PushbulletMessage

## SYNOPSIS
Envia una notificación Push a todos los dispositivos asociados con el perfil.

## SYNTAX

```
Send-PushbulletMessage [-ProfileName] <String> [-Title] <String> [-Message] <String> [[-EndPoint] <String>]
```

## DESCRIPTION
Envia una notificación Push a todos los dispositivos asociados con el perfil.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Send-PushbulletMessage -ProfileName 'Demo' -Title 'Mensaje de prueba' -Message 'Lorem ipsum dolor sit amet'
```

## PARAMETERS

### -ProfileName
Nombre del perfil al que pertenecen los dispositivos.

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

### -Title
Texto que se establece como titulo de la notificación.

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

### -Message
Texto que se establece como cuerpo de la notificación.

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

### -EndPoint
URL del servicio de PushBullet.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
Default value: $Script:Config.PushBullet.EndPoint
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS
None

## OUTPUTS

Array de objetos con la respuesta del servicio para cada dispositivo en el perfil.

## NOTES
Autor: Atorres

## RELATED LINKS

[Set-PushbulletProfile](Set-PushbulletProfile.md)

[Add-PushbulletToken](Add-PushbulletToken.md)

