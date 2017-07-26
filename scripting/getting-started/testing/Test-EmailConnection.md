---
external help file: PSProcessa-help.xml
online version: 
schema: 2.0.0
---

# Test-EmailConnection

## SYNOPSIS
Verifica si puede establecer una conexión con un servidor de SMTP.

## SYNTAX

```powershell
Test-EmailConnection [-ConnectionString] <String> [[-To] <String>]
```

## DESCRIPTION
Verifica si puede establecer una conexión con un servidor de SMTP enviando un mensaje a una dirección de correo de prueba.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
'smtpserver=smtp.gmail.com;port=587;username=user@gmail.com;password=supersecret;usessl=true' | Test-EmailConnection
```

### -------------------------- EXAMPLE 2 --------------------------
```powershell
'smtpserver=smtp.gmail.com;username=user@gmail.com;password=supersecret' | Test-EmailConnection
```

## PARAMETERS

### -ConnectionString
Establece la cadena de conexión que se utiliza para conectar con el servidor de correo.
Tokens deben estar separados por ';' y valores por '='

| Token | Descripción | (R)equerido (O)pcional | Valor predeterminado |
| :--------:|:-------------|:---:|:---: |
| smtpserver | Nombre o IP del servidor SMTP que envía el mensaje de correo electrónico | R | smtp.gmail.com |
| username | Usuario para la autenticación | R | Ninguno |
| password | Clave del usuario para la autenticación | R | Ninguno |
| usessl | (true o false) Determina si utiliza el protocolo SSL (Secure Sockets Layer) para establecer la conexión con el servidor para enviar correo | O | true |
| port | Número del puerto que se debe utilizar para conectar con el servidor | O | 587 |

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

### -To
Dirección de correo a donde se envía el mensaje de prueba.
Valor predeterminado ping@gmail.com.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: Ping@gmail.com
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

Puede canalizar el valor de ConnectionString.

## OUTPUTS

Ninguno si se logra establecer la conexión; de lo contrario genera una excepción.

## NOTES
Autor: Atorres

## RELATED LINKS

