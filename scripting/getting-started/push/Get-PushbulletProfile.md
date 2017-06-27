# Get-PushbulletProfile

Obtiene la información de tokens asociados con un perfil de Push.

## Sintaxis

```
 Get-PushbulletProfile [[-ProfileName] <String>]
 ```
 
 ## Parámetros
 ### -ProfileName \<String\>
 Nombre con el que se creo el perfil.
 
 
## Ejemplos

Dispositivos asociados al perfil con nombre 'Perfil Demo'

```
Get-PushbulletProfile -ProfileName 'Perfil Demo'
```

Nombre de todos los perfiles registrados en el PC
  
```
Get-PushbulletProfile
```
