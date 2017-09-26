---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Remove-PGPKeyStore

## SYNOPSIS
Elimina la configuración de llaves de crifrado PGP.

## SYNTAX

```powershell
Remove-PGPKeyStore [-Name] <String>
```

## DESCRIPTION
Elimina la configuración de llaves de crifrado PGP.
> Se necesita permisos de Administrador para completar la función.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Remove-PGPKeyStore -Name 'MyName'
```

## PARAMETERS

### -Name
Nombre para identificar la configuración de llaves que se debe eliminar.

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

## INPUTS

None

## OUTPUTS
Void

## NOTES
Autor: Atorres

## RELATED LINKS

[Set-PGPKeyStore](Set-PGPKeyStore.md)

[Get-PGPKeyStore](Get-PGPKeyStore.md)

[Test-PGPKeyStore](Test-PGPKeyStore.md)
