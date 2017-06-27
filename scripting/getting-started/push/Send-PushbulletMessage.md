# Send-PushbulletMessage

Envia una notificación Push a todos los dispositivos asociados con el perfil.

## Sintaxis

```
Send-PushbulletMessage [-ProfileName] <String> [-Title] <String> [-Message] <String>
```

## Parámetros

### -ProfileName \<String\>
Nombre del perfil al que pertenecen los dispositivos.
```yaml
Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Title \<String\>
Texto que se establece como titulo de la notificación.
```yaml
Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```


### -Message \<String\>
Texto que se establece como cuerpo de la notificación.
```yaml
Required: True
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

## Ejemplos

```
Send-PushbulletMessage -ProfileName 'Perfil demo' -Title 'Mensaje de prueba' -Message 'Lorem ipsum dolor sit amet'
```
 
 
