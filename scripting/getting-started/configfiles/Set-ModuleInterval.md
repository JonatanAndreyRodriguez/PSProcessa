---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Set-ModuleInterval

## SYNOPSIS
Establece el tiempo que se utiliza para comprobar el número de instancias que se mantienen en memoria, en un servicio de Processa que utiliza un módulo de PowerShell.

## SYNTAX

```powershell
Set-ModuleInterval [-Path] <String> [-Value] <TimeSpan>
```

## DESCRIPTION
Por defecto se realiza la comprobación cada 60 segundos.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Set-ModuleInterval -Path 'C:\MyConfig.config' -Value (New-TimeSpan -Seconds 120)
```

### -------------------------- EXAMPLE 2 --------------------------
```powershell
'ServiceName' | Get-ServiceConfigFile | Set-ModuleInterval -Value (New-TimeSpan -Minutes 2)
```

## PARAMETERS

### -Path
Ruta de acceso del archivo de configuración.

```yaml
Type: String
Parameter Sets: (All)
Aliases: ConfigFile

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Value
Periodo de tiempo que se establece para realizar la comprobación.

```yaml
Type: TimeSpan
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

Puede canalizar el valor de Path.

## OUTPUTS

Void

## NOTES
Autor: Atorres

## RELATED LINKS

