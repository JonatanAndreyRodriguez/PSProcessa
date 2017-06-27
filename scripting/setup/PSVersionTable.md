# ¿Cómo saber que versión de PowerShell está instalada en una maquina?

Abra una ventana de comandos y digite:

```
powershell -Command " & {$PSVersionTable}"
```

El valor en la fila PSVersion corresponde con la versión de PowerShell instalada
