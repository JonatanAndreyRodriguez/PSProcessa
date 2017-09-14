---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Send-PushbulletMessage

## SYNOPSIS
Envia una notificación Push a todos los dispositivos asociados con el perfil.

## SYNTAX

```powershell
Send-PushbulletMessage [-ProfileName] <String> [-Title] <String> [-Message] <String> [[-EndPoint] <String>]
```

## DESCRIPTION
Envia una notificación Push a todos los dispositivos asociados con el perfil.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Send-PushbulletMessage -ProfileName 'Demo' -Title 'Mensaje de prueba' -Message 'Lorem ipsum dolor sit amet'
```
Envia notificaciones a todos los dispositivos en el perfil con nombre Demo.

### -------------------------- EXAMPLE 2 --------------------------
```powershell
$Result = Send-PushbulletMessage -ProfileName 'Demo' -Title 'Mensaje de prueba' -Message 'Lorem ipsum dolor sit amet'
$Result | Where-Object -Property Status -eq ([System.Net.HttpStatusCode]::BadRequest)
```
Obtiene la información de las notificaciones que terminaron con errores en el envío.

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
URL del servicio de PushBullet. Si no se establece una, se utiliza la configurada en el archivo PSProcessa.config.

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


