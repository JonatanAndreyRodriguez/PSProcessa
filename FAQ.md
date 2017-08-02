# Preguntas Frecuentes

## ¿Cómo consultar el servidor proxy predeterminado?

1. Importe el módulo 
```powershell
Import-Module PSProcessa
```

2. Ejecute la instrucción
```powershell
(Import-PowerShellDataFile (Join-Path (Split-Path (Get-Module PSProcessa).Path -Parent) 'Config.psd1'))['ProxyServer']
```

## ¿Cómo establecer un servidor proxy diferente al predeterminado?

1. Importe el módulo 
```powershell
Import-Module PSProcessa
```

2. Ejecute la instrucción
```powershell
start notepad (Join-Path (Split-Path (Get-Module PSProcessa).Path -Parent) 'Config.psd1')
```

3. Cambie el valor del campo `ProxyServer`, guarde el archivo y vuelva a importar el módulo. Si no se necesita servidor Proxy deje el valor en blanco, es decir `ProxyServer=''`
```powershell
Import-Module PSProcessa -Force
```

