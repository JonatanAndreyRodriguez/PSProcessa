# Add-PushbulletToken

Agrega la información de un token de PushBullet a un perfil.

## Sintaxis

```
Add-PushbulletToken [-ProfileName] <String> [-AccessToken] <Object>
```

## Parámetros
### -ProfileName \<String\>
Nombre del perfil al que se agrega el token.

```yaml
Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AccessToken \<Processa.Management.Automation.PushbulletToken\>
Información del token que se debe agregar al perfil.
```yaml
Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## Ejemplos

```
Add-PushbulletToken -ProfileName 'Perfil demo' -AccessToken (New-PushbulletToken -Name 'Dispositivo de Pepe' -Token 'x.1234500000ABCDE874LIJY6g7xwEI111')
```

 
