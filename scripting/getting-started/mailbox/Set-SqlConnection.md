---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Set-SqlConnection

## SYNOPSIS
Registra o actualiza una cadena de conexión con un servidor de SQL Server.

## SYNTAX

### SqlAuth (Default)
```
Set-SqlConnection -Name <String> -Server <String> -Database <String> -Credential <PSCredential> [-Force]
```

### WindowsAuth
```
Set-SqlConnection -Name <String> -Server <String> -Database <String> [-IntegratedSecurity] [-Force]
```

## DESCRIPTION
Registra o actualiza una cadena de conexión con un servidor de SQL Server.
\> Se necesita permisos de Administrador para completar la función.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Get-CheckedCredential | Set-SqlConnection -Name 'MyName' -Server '(local)' -Database 'master'
```

Guarda la información de conexión con el nombre MyName con las credenciales suministradas.

### -------------------------- EXAMPLE 2 --------------------------
```
Set-SqlConnection -Name 'MyName' -Server '(local)' -Database 'master' -IntegratedSecurity
```

Guarda la información de conexión con el nombre MyName utilizando autenticación de confianza.

## PARAMETERS

### -Name
Nombre para identificar la conexión.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Server
Nombre o  dirección de red de la instancia del servidor SQL para conectarse.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Database
Nombre de la base de datos asociada con la conexión.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Credential
Credenciales de acceso que se deben utilizar al conectarse al servidor SQL.

```yaml
Type: PSCredential
Parameter Sets: SqlAuth
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -IntegratedSecurity
Indica si se deben utilizar las credenciales de cuenta de Windows actuales.

```yaml
Type: SwitchParameter
Parameter Sets: WindowsAuth
Aliases: 

Required: True
Position: Named
Default value: False
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

## OUTPUTS

### System.Void

## NOTES
Author: Atorres

## RELATED LINKS

