---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Get-CheckedCredential

## SYNOPSIS
Obtiene un objeto de tipo credenciales a partir de un nombre de usuario y contraseña.

## SYNTAX

```powershell
Get-CheckedCredential [[-Username] <String>] [[-Title] <String>] [[-RewriteTitle] <String>]
 [[-Message] <String>]
```

## DESCRIPTION
Solicita dos veces al usuario un nombre de usuario y contraseña.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Get-CheckedCredential
```

## PARAMETERS

### -Username
Texto que se muestra en el cuadro de dialogo como nombre de usuario.
Valor predeterminado $null

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: [string]::Empty
Accept pipeline input: False
Accept wildcard characters: False
```

### -Title
Texto que se muestra como titulo del cuadro de dialogo.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: ($Script:Resx.GetCheckedCredentialDefaultTitle)
Accept pipeline input: False
Accept wildcard characters: False
```

### -RewriteTitle
Texto que se muestra como titulo del cuadro de dialogo cuando se solicita al usuario confirmar el valor ingresado.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: ($Script:Resx.GetCheckedCredentialRewriteTitle)
Accept pipeline input: False
Accept wildcard characters: False
```

### -Message
Texto que se muestra como mensaje informativo del cuadro de dialogo.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
Default value: ($Script:Resx.GetCheckedCredentialDefaultMessage)
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

None.

## OUTPUTS

System.Management.Automation.PSCredential

## NOTES
Autor: Atorres

## RELATED LINKS

[Get-CheckedSecret](Get-CheckedSecret.md)

