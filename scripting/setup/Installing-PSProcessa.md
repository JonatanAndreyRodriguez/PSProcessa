# ¿Cómo instalar el módulo PSProcessa?

### Versión Online

1. Abra una ventana de PowerShell como usuario administrador y registre el repositorio de Nuget de Gerencia Técnica.

```
Register-PSRepository -Name 'Processa GT' -SourceLocation 'http://proget:8020/nuget/PowerShell' -InstallationPolicy Trusted
```


2. Instale el módulo desde el Repositorio

```
Install-Module -Name 'PSProcessa' -Repository 'Processa GT'
```

### Versión Offline

1. Descargue el archivo PSProcessa-Setup.x64.exe desde la Intranet
2. Haga doble click sobre el mismo
3. Siga las instrucciones del asistente de instalación
