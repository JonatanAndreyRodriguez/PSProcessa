# Set-PushbulletProfile

Crea o actualiza la información de un perfil de tokens de acceso a PushBullet.

## Sintaxis

```
Set-PushbulletProfile [-ProfileName] <String> [-AccessToken]
```

## Parámetros

### -ProfileName <String>

Nombre asignado al perfil.

### -AccessToken <Object>


Tokens de acceso de PushBullet asociados con el perfil.

## Ejemplos
```
$Tokens = @(
  New-PushbulletToken -Name 'Dispositivo 1' -Token '1.12345XpS6k6OR710PKeWhXGGj4TABCDE'
  New-PushbulletToken -Name 'Dispositivo 2' -Token '1.56789tBesQeRqbum5CrQJY6g7xwWVXYZ'
)

Set-PushbulletProfile -ProfileName 'Perfil demo' -AccessToken $Tokens
```
