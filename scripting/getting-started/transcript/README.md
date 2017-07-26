### Funciones de transcripción

Una función de transacripción crea un registro de toda o parte de una sesión de Windows PowerShell en un archivo de texto. 
La transcripción incluye todo el comando que el usuario escribe y toda la salida que aparece en la consola.

Puede utilizar las funciones [Out-Default](https://msdn.microsoft.com/en-us/powershell/reference/6/microsoft.powershell.core/out-default) y [Out-String](https://msdn.microsoft.com/en-us/powershell/reference/5.1/microsoft.powershell.utility/out-string) para enviar resultados a la transcripción.

Por ejemplo, luego de iniciar la https://msdn.microsoft.com/en-us/powershell/reference/5.1/microsoft.powershell.utility/out-string, el siguiente comando enviaría la fecha y hora actual al archivo de https://msdn.microsoft.com/en-us/powershell/reference/5.1/microsoft.powershell.utility/out-string

```powershell
Get-Date | Format-List | Out-String | Out-Default
```
