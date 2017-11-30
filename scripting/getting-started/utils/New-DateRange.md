---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# New-DateRange

## SYNOPSIS
Obtiene un objeto que contiene una fecha inicial y una fecha final.

## SYNTAX

### ByFrame (Default)
```
New-DateRange [-Since <String>] [-InclusiveToday]
```

### ByDate
```
New-DateRange -StartDate <DateTime> [-EndDate <DateTime>]
```

## DESCRIPTION
Obtiene un objeto que contiene una fecha inicial y una fecha final.
Puede establer la fecha inicial y final o un string que representa estos valores.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
New-DateRange -StartDate (Get-Date) -EndDate ((Get-Date).AddDays(1))
```

Periodo de tiempo con fecha inicial establecido en el día actual y fecha final mañana.

### -------------------------- EXAMPLE 2 --------------------------
```
New-DateRange -Since 'Midnight'
```

Periodo de tiempo desde la media noche del día actual.

## PARAMETERS

### -Since
Periodo de tiempo que representa una fecha de inicio y fin.
La hora de fecha inicio siempre se establece en 00:00:00.
Valores admitidos:

Valor | Descripción
------------ | -------------
Midnight | Desde las _00:00:00 de hoy_, hasta _ahora_.
Yesterday | Desde las _00:00:00 de ayer_, hasta las _23:59:59 de ayer_
ThisWeek | Desde el _último lunes a las 00:00:00_, hasta _hoy a las 00:00:00_.
LastWeek | Los _últimos siete días_ a partir de _hoy a las 00:00:00_.
ThisMonth | Desde el _primer día del mes actual_, hasta _hoy a las 00:00:00_.
LastMonth | Los _últimos N días_ a partir de _hoy a las 00:00:00_, donde N es el número de días del mes actual.

Valor predeterminado: Yesterday

```yaml
Type: String
Parameter Sets: ByFrame
Aliases: 

Required: False
Position: Named
Default value: Yesterday
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -StartDate
Fecha de inicio

```yaml
Type: DateTime
Parameter Sets: ByDate
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EndDate
Fecha final.
Valor predeterminado (Ahora).

```yaml
Type: DateTime
Parameter Sets: ByDate
Aliases: 

Required: False
Position: Named
Default value: (Get-Date)
Accept pipeline input: False
Accept wildcard characters: False
```

### -InclusiveToday
Cuando se establece, se incluye la fecha y hora actual en la propiedad EndDate del objeto de retorno.
Este parámetro se omite cuando se utiliza en conjunto con Midnight o Yesterday.

```yaml
Type: SwitchParameter
Parameter Sets: ByFrame
Aliases: 

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Processa.Management.Automation.PSProcessa.DateRange

### Processa.Management.Automation.PSProcessa.DateRange

## NOTES
Autor: DMontalvo

## RELATED LINKS

