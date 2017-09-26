---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Test-SqlConnection

## SYNOPSIS
Verifica que se pueda establecer la comunicación con un servidor de SQL Server.

## SYNTAX

```powershell
Test-SqlConnection [-ConnectionString] <String>
```

## DESCRIPTION
Verifica que se pueda establecer la comunicación con un servidor de SQL Server con los valores de conexión proporcionados.
Cierra la conexión al finalizar la prueba.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
'Server=(local);Database=master;Trusted_Connection=True;' | Test-SqlConnection
```

## PARAMETERS

### -ConnectionString
Establece la cadena de conexión que se utiliza para conectar con el servidor de SQL Server.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

## INPUTS

Puede canalizar el valor de ConnectionString.

## OUTPUTS

Ninguno si se logra establecer la conexión; de lo contrario genera una excepción.

## NOTES
Autor: Atorres

## RELATED LINKS

[Set-SqlConnection](Set-SqlConnection.md)

[Remove-SqlConnection](Remove-SqlConnection.md)

[Get-SqlConnection](Get-SqlConnection.md)

