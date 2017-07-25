---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Rename-FileServer

## SYNOPSIS
Cambia el nombre de uno o varios archivos en el directorio remoto.

## SYNTAX

### FromString (Default)
```
Rename-FileServer -ConnectionString <String> [-SourcePath <String>] [-TargetPath <String>] [-Mask <String>]
 -Search <String> -Replace <String> [-WhatIf] [-Confirm]
```

### FromSession
```
Rename-FileServer -WinScpConnection <SessionOptions> [-SourcePath <String>] [-TargetPath <String>]
 [-Mask <String>] -Search <String> -Replace <String> [-WhatIf] [-Confirm]
```

## DESCRIPTION
Cambia el nombre de uno o varios archivos en el directorio remoto de un servidor de FTP/SFTP.
La expresión de búsqueda distingue May/Min.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
'protocol=ftp;host=127.0.0.1;username=myuser;password=myp@ssw0rd' | Rename-FileServer -SourcePath '/MyFolder' -Mask '*MyFile*.txt' -Search '.txt' -Replace '.txt.ok'
```
Busca todos los archivos cuyo nombre inicie con la palabra MyFile de tipo txt, y cambia la extensión de .txt a .txt.ok

### -------------------------- EXAMPLE 2 --------------------------
```
'protocol=ftp;host=127.0.0.1;username=myuser;password=myp@ssw0rd' | Rename-FileServer -SourcePath '/MyFolder' -Mask '*MyFile*.txt' -Search '.txt' -Replace '.txt.ok' -WhatIf
```
Muestra en pantalla que archivos coinciden con la búsqueda pero no los renombra.

## PARAMETERS

### -WinScpConnection
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
Cadena de conexión como se describe en el comando [New-WinScpConnection](New-WinScpConnection.md).

```yaml
Type: String
Parameter Sets: FromString
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -SourcePath
Ruta de acceso de la carpeta donde se encuentran los archivos que se van a renombrar.
Valor predeterminado '/'

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: /
Accept pipeline input: False
Accept wildcard characters: False
```

### -TargetPath
Ruta de acceso de la carpeta a donde se mueven los archivos luego de ser renombrados.
Valor predeterminado igual que SourcePath (no se mueven, solo se renombran).

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Mask
Mascara (?) o comodín (*) para seleccionar los archivos que se van a renombrar.
Valor predeterminado '*.*'

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: *.*
Accept pipeline input: False
Accept wildcard characters: False
```

### -Search
Texto que se buscar para reemplazar en el nombre del archivo.
Ej: .txt

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

### -Replace
Texto que se va a remplzar.
Ej: .txt.log

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

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

Puede canalizar el valor de WinScpConnection.

## OUTPUTS

Array con la lista de los archivos que se renombraron.

## NOTES
Autor: Atorres

## RELATED LINKS

[New-WinScpConnection](New-WinScpConnection.md)


