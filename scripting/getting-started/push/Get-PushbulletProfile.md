# Get-PushbulletProfile

Obtiene la información de tokens asociados con un perfil de Push o el nombre de todos los perfiles creados.

## Sintaxis

```
 Get-PushbulletProfile [[-ProfileName] <String>]
 ```
 
 ## Parámetros
 ### -ProfileName \<String\>
 Nombre con el que se creo el perfil.
 ```yaml
Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```
 
 
## Ejemplos

Dispositivos asociados al perfil con nombre 'Perfil Demo'

```
Get-PushbulletProfile -ProfileName 'Perfil Demo'
```

Nombre de todos los perfiles registrados en el PC
  
```
Get-PushbulletProfile
```
