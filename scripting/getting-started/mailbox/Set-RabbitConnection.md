---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Set-RabbitConnection

## SYNOPSIS
Registra o actualiza una conexión con un servidor de RabbitMQ.

## SYNTAX

```powershell
Set-RabbitConnection [-ConnectionString] <String> [-Name] <String> [-Force]
```

## DESCRIPTION
Registra o actualiza una conexión con un servidor de RabbitMQ.
> Se necesita permisos de Administrador para completar la función.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Set-RabbitConnection -Name 'MyName' -ConnectionString 'host=myServer;virtualHost=myVirtualHost;username=jhon;password=topsecret'
```

Guarda la información de conexión con el nombre MyName con las credenciales suministradas.

## PARAMETERS

### -ConnectionString
Establece la cadena de conexión que se utiliza para conectar con el servidor de RabbitMQ.
Ver https://goo.gl/avBzsU

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Name
Nombre para identificar la conexión.

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

### -Force
Cuando está presente, omite la validación de conexión, es decir, guarda el valor sin comprobar la conexión.
También sobrescribe cualquier valor guardado anteriormente con el mismo nombre.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS
None.

## OUTPUTS

System.Void

## NOTES
Autor: Atorres

## RELATED LINKS

[Get-RabbitConnection](Get-RabbitConnection.md)

[Remove-RabbitConnection](Remove-RabbitConnection.md)

