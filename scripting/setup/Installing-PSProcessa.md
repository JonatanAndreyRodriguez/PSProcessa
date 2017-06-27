# ¿Cómo instalar el módulo PSProcessa?

### Versión Online

1. Abra una ventana de PowerShell como usuario administrador y registre el repositorio de Nuget de Gerencia Técnica.
2. Instale el módulo desde el Repositorio

```
Register-PSRepository -Name 'Processa GT' -SourceLocation 'http://10.100.102.22:8020/nuget/PowerShell' -InstallationPolicy Trusted
Install-Module -Name 'PSProcessa' -Repository 'Processa GT'
```
