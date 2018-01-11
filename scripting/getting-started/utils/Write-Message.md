---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Write-Message

## SYNOPSIS
Escribe texto en la salida del Host.

## SYNTAX

```powershell
Write-Message [-Title] <String> [-Message] <String[]> [[-Type] <Object>]
```

## DESCRIPTION
Se puede especificar el color del texto utilizando el parámetro Type.
El resultado particular depende del programa que aloja PowerShell.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Write-Message -Title 'MyTitle' -Message 'MyMessage' -Type 'Warning'
```

### -------------------------- EXAMPLE 2 --------------------------
```powershell
Write-Message -Title 'MyTitle' -Message (1..10 | ForEach-Object {"Text-$PSItem"})
```

## PARAMETERS

### -Title
Texto que se muestra como titulo del mensaje.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Message
Texto(s) de mensaje.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Type
Tipo del mensasje.
Valores admitidos.

Type | Description
------------ | -------------
None | No se aplica ningún formato de salida.
Info | Se aplica un formato de colores basado en azul.
Warning | Se aplica un formato de colores basado en amarillo.
Error | Se aplica un formato de colores basado en rojo.
Success | Se aplica un formato de colores basado en verde.


```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

### Ninguno

## OUTPUTS

### System.Void

## NOTES
Autor: Atorres

## RELATED LINKS

