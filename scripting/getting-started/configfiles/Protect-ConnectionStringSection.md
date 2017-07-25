---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Protect-ConnectionStringSection

## SYNOPSIS
Cifra los valores de la sección ConnectionStrings de un archivo de configuración.

## SYNTAX

```
Protect-ConnectionStringSection [-Path] <String>
```

## DESCRIPTION
Cifra la sección ConnectionStrings de un archivo de configuración.
Se necesita permisos de Administrador para completar la función.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Protect-ConnectionStringSection -Path 'C:\MyConfig.config'
```

### -------------------------- EXAMPLE 2 --------------------------
```
'C:\MyConfig.config' | Protect-ConnectionStringSection
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

## INPUTS

Puede canalizar el valor de Path.

## OUTPUTS

Void

## NOTES
Autor: Atorres

## RELATED LINKS

[Unprotect-ConnectionStringSection](Unprotect-ConnectionStringSection.md)

