Un perfil push es la especificación de una interfaz de alto nivel para el envío de mensajes push a dispositivos. 

Los perfiles son descripciones de grupos de dispositivos formalizados para favorecer su uso unificado. La forma de utilizar las capacidades de Push se basa en la asociación de una pareja (token de dispositivo + nombre) a un perfil.

Como mínimo, una especificación de perfil debe tener:

* Un nombre que lo identifica.
* Uno o más tokens de Push asociados.

```
Get-Command -Module PSProcessa -Noun *Push*
```

> [NOTA]
> La configuración de los perfiles se guarda en cada PC

## Para enviar un mensaje

1. [Crear la información de un dispositivo](New-PushbulletToken.md)
2. [Crear un perfil y asociar el/los dispositivo(s)](Set-PushbulletProfile.md)
3. [Enviar un mensaje a un perfil](Send-PushbulletMessage.md)


##### Opcional
4. [Agregar un dispositivo a un perfil](Add-PushbulletToken.md)
