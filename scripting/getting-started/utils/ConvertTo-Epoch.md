---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# ConvertTo-Epoch

## SYNOPSIS
Convierte la fecha en DateTime a la cantidad de segundos transcurridos desde la medianoche UTC del 1 de enero de 1970.

## SYNTAX

```powershell
ConvertTo-Epoch [[-DateTime] <DateTime>]
```

## DESCRIPTION
El tiempo Unix es un sistema para la descripción de instantes de tiempo: se define como la cantidad de segundos transcurridos desde la medianoche UTC del 1 de enero de 1970.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
ConvertTo-Epoch -DateTime (Get-Date).AddDays(-1)
```

### -------------------------- EXAMPLE 2 --------------------------
```powershell
ConvertTo-Epoch
```

## PARAMETERS

### -DateTime
Fecha y hora hasta la cual se calcula el número de segundos.
Si se omite, se toma la fecha y hora actual.

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

### Ninguno.

## OUTPUTS

### System.Int32

## NOTES
Autor: Atorres

## RELATED LINKS

