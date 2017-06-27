# Add-PushbulletToken

Agrega la información de un token de PushBullet a un perfil.

## Sintaxis

```
Add-PushbulletToken [-ProfileName] <String> [-AccessToken] <Object>
```

## Parámetros
### -ProfileName \<String\>
Nombre del perfil al que se agrega el token.

### -AccessToken \<Object\>
Información del token que se debe agregar al perfil.

##Ejemplos

```
Add-PushbulletToken -ProfileName 'Perfil Demo' -AccessToken (New-PushbulletToken -Name 'Dispositivo de Pepe' -Token 'x.1234500000ABCDE874LIJY6g7xwEI111')
```

 
