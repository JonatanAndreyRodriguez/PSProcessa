# New-PushbulletToken

Representa la información de un token de acceso para PushBullet.

## Sintaxis

```
 New-PushbulletToken [-Name] <String> [-Token] <String> [<CommonParameters>]
```

## Parámetros

### -Name \<String\>
Nombre que describe el token de acceso.

### -Token \<String\>
Token de acceso asignado por PushBullet (https://www.pushbullet.com/#settings/account)

## Ejemplos

```
New-PushbulletToken -Name 'Demo' -Token '7.12345XpS6k6O12345KeWhXGGj4Tabcde'
```
