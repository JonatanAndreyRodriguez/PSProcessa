Los archivos de configuración contienen valores específicos para una aplicación. Estos archivos contienen parámetros de configuración que se leen en tiempo de ejecución, como cadenas de conexión y valores propios de cada aplicación. Los archivos de configuración son archivos XML que se pueden cambiar según sea necesario y contienen elementos, que son estructuras de datos lógicas que establecen la información de configuración.

### Operaciones comunes en un archivo de configuración

* [Leer la sección de cadenas de conexión](Get-ConnectionStringSection.md)
* [Leer la sección de parejas clave/valor personalizadas](Get-AppSettingSection.md)
* [Leer una entrada en la sección de cadenas de conexión](Get-ConnectionString.md)
* [Leer una entrada en la sección de parejas clave/valor personalizadas](Get-AppSetting.md)
* Obtener la ruta de acceso de un archivo de configuración de un servicio de Windows que atiende una cola de RabbitMQ

### Operaciones de seguridad

* Cifrar la sección de cadenas de conexión
* Cifrar la sección de parejas clave/valor personalizadas
* Decifrar la sección de cadenas de conexión
* Decifrar la sección de parejas clave/valor personalizadas

### Operaciones de configuración

* Asignar valores a diferentes entradas en un archivo de configuración
* Leer los valores de configuración de un módulo
* Comprobar los valores de configuración de un módulo
* Establecer el número de instancias que se crean de un microservicio en RabbitMQ
* Establecer el tiempo que se utiliza para comprobar el número de instancias que se mantienen en memoria de un microservicio en RabbitMQ

