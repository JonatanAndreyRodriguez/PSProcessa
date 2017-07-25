---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Copy-FileFromServer

## SYNOPSIS
Copia uno o más archivos del directorio remoto al directorio local.

## SYNTAX

### FromSession (Default)
```
Copy-FileFromServer -InputObject <SessionOptions> -RemotePath <String> -LocalPath <String>
 [-TransferMode <TransferMode>] [-TotalAttempt <Int32>] [-AttemptWindow <Int32>] [-RemoveAfterCopy]
```

### FromConnectionString
```
Copy-FileFromServer -ConnectionString <String> -RemotePath <String> -LocalPath <String>
 [-TransferMode <TransferMode>] [-TotalAttempt <Int32>] [-AttemptWindow <Int32>] [-RemoveAfterCopy]
```

## DESCRIPTION
Copia uno o más archivos del directorio remoto al directorio local desde un servidor de FTP/SFTP.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
'protocol=ftp;host=127.0.0.1;username=myuser;password=myp@ssw0rd;' | Copy-FileFromServer -LocalPath 'C:\Temp' -RemotePath '/*.txt'
```

### -------------------------- EXAMPLE 2 --------------------------
```
'protocol=sftp;host=127.0.0.1;username=myuser;password=myp@ssw0rd;' | Copy-FileFromServer -LocalPath 'C:\Temp' -RemotePath '/*.txt' -TransferMode 'Ascii' -RemoveAfterCopy
```

## PARAMETERS

### -InputObject
Un objeto WinSCP.SessionOptions. Vea [New-WinScpConnection](New-WinScpConnection.md)

```yaml
Type: SessionOptions
Parameter Sets: FromSession
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ConnectionString
String que define la información que permite una conexión con un servidor de FTP/SFTP.
Este objeto se utiliza en las transferencias de archivos.
Valores admitidos en la cadena de conexión (no se distinguen may/min)

| Nombre | Descripción | (R)equerido (O)pcional |
| :--------: |:-------------| :---:|
| protocol | ftp o sftp | (R) |
| host | IP o nombre del servidor de FTP/SFTP | (R) |
| username | Usuario para la autenticación | (R) |
| password | Clave del usuario para la autenticación | (R) |
| fingerprint | Huella digital de la clave del host del servidor SSH | Requerido para sftp |
| timeout | Tiempo de respuesta del servidor, por defecto 30 segundos | (O) |
| port | Número del puerto que se deb utilizar para conectar con el servidor, por defecto 0 para utilizar el puerto predeterminado para el protocolo | (O) |

```yaml
Type: String
Parameter Sets: FromConnectionString
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -RemotePath
Ruta de acceso al directorio remoto seguido de una barra diagonal y la mascara (?) o comodín (*) para seleccionar archivos o subdirectorios para copiar.
Para copiar todos los archivos de un directorio, use el comodin *.

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

### -LocalPath
Ruta de acceso de la carpeta local donde se copian los archivos.
Al copiar varios archivos, el nombre del archivo será reemplazado con la máscara o comodin de la operación.
Si la ruta termina con barra invertida (\\) se omitirá la mascara o comodin.

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

### -TransferMode
Los valores posibles son Binary, Ascii y Automatic.
Valor predeterminado es Automatic (basado en la extensión del archivo).

```yaml
Type: TransferMode
Parameter Sets: (All)
Aliases: 
Accepted values: Binary, Ascii, Automatic

Required: False
Position: Named
Default value: Automatic
Accept pipeline input: False
Accept wildcard characters: False
```

### -TotalAttempt
Número de veces que se intenta copiar un archivo (si la transferencia se interrumpe por fallos de red/servidor).
Valor predeterminado 3 intentos.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 3
Accept pipeline input: False
Accept wildcard characters: False
```

### -AttemptWindow
Tiempo en segundos para volver a intentar copiar un archivo.
Valor predeterminado 10 segundos.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 10
Accept pipeline input: False
Accept wildcard characters: False
```

### -RemoveAfterCopy
Cuando se establece, se eliminan el (los) archivo(s) remoto(s) después de la transferencia.

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

Puede canalizar el valor de InputObject o de ConnectionString.

## OUTPUTS

Processa.Management.Automation.TransferedFile

## NOTES
Autor: Atorres

## RELATED LINKS

[New-WinScpConnection](New-WinScpConnection.md)

[Get-ChildItem](https://msdn.microsoft.com/en-us/powershell/reference/5.1/microsoft.powershell.management/get-childitem)

[Copy-FileToServer](Copy-FileToServer.md)

