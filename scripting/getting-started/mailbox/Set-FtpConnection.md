---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Set-FtpConnection

## SYNOPSIS
Registra o actualiza una conexión FTP/SFTP para la transferencia de archivos.

## SYNTAX

### FTP (Default)
```powershell
Set-FtpConnection -Credential <PSCredential> -Name <String> -Host <String> [-Port <Int32>] [-TimeOut <Int32>]
 [-Force]
```

### SFTP
```powershell
Set-FtpConnection -Credential <PSCredential> -Name <String> -Host <String> -FingerPrint <String>
 [-Port <Int32>] [-TimeOut <Int32>] [-Force]
```

## DESCRIPTION
Registra o actualiza una conexión FTP/SFTP para la transferencia de archivos.
\> Se necesita permisos de Administrador para completar la función.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Get-Credential |  Set-FtpConnection -Name 'MyName' -Host 'localhost'
```

Pregunta por la credenciales y guarda la información de conexión con el nombre MyName.

### -------------------------- EXAMPLE 2 --------------------------
```powershell
Get-CheckedCredential | Set-FtpConnection -Name 'MyName' -Host '127.0.0.1'
```

Guarda la información de conexión con el nombre MyName con las credenciales suministradas.

## PARAMETERS

### -Credential
Credenciales que se utilizarán para identificarse con el servidor de FTP/SFTP.

```yaml
Type: PSCredential
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
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
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Host
Dirección IP o nombre del Servidor al cual se establecerá la conexión para la transferencia de archivos.

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

### -FingerPrint
{{Fill FingerPrint Description}}

```yaml
Type: String
Parameter Sets: SFTP
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Port
Puerto por el cual establecerá conexión al servidor.
Valor predeterminado 0 (utilizar el puerto predeterminado del protocolo).

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -TimeOut
Tiempo de espera por una respuesta del servidor (en segundos).
Valor predeterminado 30 segundos.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 30
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
Autor: Jarodriguezc

## RELATED LINKS

[Get-FtpConnection](Get-FtpConnection.md)

[Remove-FtpConnection](Remove-FtpConnection.md)

