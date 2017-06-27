# Send-PushbulletMessage

Envia una notificación Push a todos los dispositivos asociados con el perfil.

## Sintaxis

```
Send-PushbulletMessage [-ProfileName] <String> [-Title] <String> [-Message] <String>
```

## Parámetros

### -ProfileName \<String\>
Nombre del perfil al que pertenecen los dispositivos.

### -Title \<String\>
Texto que se establece como titulo de la notificación.

### -Message \<String\>
Texto que se establece como cuerpo de la notificación.

## Ejemplos

```
Send-PushbulletMessage -ProfileName 'Perfil Demo' -Title 'Mensaje de prueba' -Message 'Lorem ipsum dolor sit amet'
```
 
 
