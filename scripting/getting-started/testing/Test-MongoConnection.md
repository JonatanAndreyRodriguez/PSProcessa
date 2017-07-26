---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Test-MongoConnection

## SYNOPSIS
Verifica que se pueda establecer la comunicación con un servidor de MongoDB.

## SYNTAX

```powershell
Test-MongoConnection [-ConnectionString] <String>
```

## DESCRIPTION
Verifica que se pueda establecer la comunicación con un servidor de MongoDB con los valores de conexión proporcionados.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
'mongodb://localhost' | Test-MongoConnection
```

### -------------------------- EXAMPLE 2 --------------------------
```powershell
'mongodb://username:password@localhost:27017' | Test-MongoConnection
```

## PARAMETERS

### -ConnectionString
Establece la cadena de conexión que se utiliza para conectar con el servidor de MongoDB

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
[MongoDB Connection String URI Format](https://docs.mongodb.com/manual/reference/connection-string/)

