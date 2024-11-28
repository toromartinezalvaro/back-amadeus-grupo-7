# back-amadeus-grupo7


## Índice
1. [Descripción](#descripción)
2. [Diseño ERD](#diseño-erd)
3. [Instalación](#instalación)
4. [Configuraciones](#configuraciones)
5. [Uso de Querys.sql](#uso-de-queryssql)
6. [Ejecución de Aplicación](#ejecución-de-aplicación)
7. [Ubicación enlace Swagger/Documentación](#ubicación-enlace-swaggerdocumentación)
8. [Tratamiento Error DB](#tratamiento-error-db)
9. [Endpoints/enlace/Documentación](#endpointsenlacedocumentación)
10. [Autores](#autores)

## Descripción

El proyecto cuenta inicialmente con datos almacenados en la Base de Datos relacionados con **preferencias** y **destinos**, los cuales están vinculados mediante una relación adscrita (matriz). La funcionalidad principal del proyecto es tomar información del usuario, como su **nombre** y **correo electrónico**, para luego asociarla con una respuesta basada en las preferencias existentes en la matriz. Si la preferencia no existe, el sistema la creará automáticamente y la asociará directamente con la respuesta **Bora Bora**.

Esto permite analizar cuáles opciones llevaron más frecuentemente a Bora Bora, con el objetivo de implementarlas posteriormente en preguntas predeterminadas o identificar destinos más adecuados según esas preferencias.

### Ventajas del Proyecto:
1. **Optimización de Búsquedas**:
   - Al almacenar toda la información de preferencias en la Base de Datos, los servicios de búsqueda son más rápidos. No es necesario procesar y mapear datos con lógica, ya que las búsquedas directas en la Base de Datos entre la tabla de preferencias y destinos ofrecen una respuesta inmediata.

2. **Gestión de Imágenes**:
   - El proyecto no guarda ni envía imágenes de destinos. En su lugar, accede a un servidor externo (por ejemplo, Google), lo que mejora significativamente el rendimiento del servicio.

3. **Documentación**:
   - Toda la documentación del proyecto está implementada en **Swagger UI**, facilitando la consulta y prueba de los endpoints disponibles.

Este enfoque optimiza tiempos de respuesta y ofrece un sistema eficiente para analizar preferencias y proponer destinos de forma dinámica y personalizada.

## Diseño ERD 
![Imagen Relación Base de Datos](./documentationImg/ERD_DB.jpeg) 
Ilustración 1. ERD de la DB

## Instalación

Para instalar las dependencias necesarias y configurar el proyecto, sigue estos pasos:

1. Descarga la aplicación desde el repositorio.
2. Asegúrate de estar dentro de la carpeta raíz del proyecto.
3. Ejecuta el siguiente comando para instalar las dependencias:

   ```bash
   ./gradlew build

   ![Imagen ](./documentationImg/2InstalacionDependencias.png)
   Ilustración 2 Comando Instalación de Dependencias 

Este comando instalará todas las dependencias especificadas en el archivo build.gradle. Estas dependencias incluyen:

Swagger: Utilizada como herramienta de documentación y pruebas de los endpoints.
MapStruct: Empleada para gestionar los mapeos entre entidades y DTOs de manera eficiente.
Una vez completado este proceso, el proyecto estará listo para continuar con las configuraciones y ejecución.

   ![Imagen ](./documentationImg/3todasLasDependencias.png)
   Ilustración 3 Todas las dependencias 

  ## Configuraciones
Una vez que hayas instalado lo mencionado previamente, debes proceder con la configuración del archivo application.yml que se encuentra en la carpeta resources. En este archivo se definen las configuraciones necesarias para la aplicación.

Pasos de Configuración
Crear la Base de Datos (DB)
Dirígete a tu base de datos (DB) y crea una nueva base de datos con el nombre que hayas seleccionado. Este nombre será utilizado en las configuraciones de conexión en el archivo application.yml.

Configurar el archivo application.yml
Dentro del archivo application.yml, en la sección de datasource, debes especificar el nombre de la base de datos que has creado. En este ejemplo, se usará el nombre de la base de datos "Amadeus".

Conexión a la DB
Además de definir el nombre de la base de datos, también deberás proporcionar los datos de conexión, tales como el username y el password que uses en tu entorno local de pgAdmin.

Ejemplo de Configuración
A continuación se muestra un ejemplo de cómo se debe configurar el archivo application.yml:

datasource:
  url: jdbc:postgresql://localhost:5432/Amadeus
  username: tu_usuario
  password: tu_contraseña

Ilustraciones

![Imagen ](./documentationImg/4ubicacionArchiva.png)
Ilustración 4: Ubicación del archivo application.yml.

![Imagen ](./documentationImg/5datosConexionDB.png)
Ilustración 5: Datos de la conexión con la DB.

  ## Configuración de Base de Datos: query.sql
Una vez que hayas completado las configuraciones previas, debes proceder con la ejecución de los comandos contenidos en el archivo query.sql. Estos comandos llenarán las tablas maestras y asociarán los destinos con las preferencias.

Pasos para Ejecutar el Archivo query.sql
Acceder al archivo query.sql
Dirígete al archivo query.sql y copia los comandos de cada sección. Es importante que los ejecutes en el orden correspondiente en pgAdmin.

![Imagen ](./documentationImg/6ubicacionArchivoQuery.png)
Ilustración 6: Ubicación archivo query.sql

Ejecución en pgAdmin
Tienes dos opciones para ejecutar los comandos:

Opción 1: Copiar y pegar los comandos directamente en pgAdmin para ejecutarlos.
Opción 2: Ejecutar los comandos directamente desde la terminal.
Secciones del Archivo query.sql
A continuación, te mostramos las diferentes secciones que deberás ejecutar:

Sección Continentes
La sección de continentes debe tomarse completa y pasarse completa para ser ejecutada.


![Imagen ](./documentationImg/7seccionContinentes.png)
Ilustración 7: Sección Continentes

Sección Destinos
La sección de destinos también debe tomarse completa. Si es necesario, puedes ejecutar los destinos por defecto en un solo bloque con el comando COPY.


![Imagen ](./documentationImg/8seccionDestinos.png)
Ilustración 8: Sección Destinos


![Imagen ](./documentationImg/9seccionDestinosDefault.png)
Ilustración 9: Sección Destinos por Default

Sección Preferencias
La sección de preferencias debe tomarse en su totalidad y ejecutarse de una vez (copia y pega).


![Imagen ](./documentationImg/10seccionPreferencias.png)
Ilustración 10: Sección de Preferencias

Llenado de Tablas de Relación
Después de ejecutar los comandos anteriores, deberás llenar las tablas de relación de Preferencias y Destinos. Para evitar errores durante la ejecución, sigue estos pasos:

Ejecución en grupos pequeños: Llena las tablas en grupos de tres comandos a la vez. Esto ayuda a mantener el control y evitar errores. Asegúrate de reemplazar los comandos ejecutados por los siguientes tres que se vayan a ejecutar.


![Imagen ](./documentationImg/11preferenciasDestinos.png)
Ilustración 11: Preferencias y Destinos

 ## Ejecución de la Aplicación
Una vez que hayas completado las configuraciones previas y ejecutado los comandos necesarios en la base de datos, es momento de ejecutar la aplicación.

Pasos para Ejecutar la Aplicación
Ejecutar desde el archivo AmadeusApplication
Para ejecutar la aplicación, haz clic derecho sobre el archivo AmadeusApplication. Dependiendo del entorno de desarrollo que utilices, las opciones serán las siguientes:

Si estás usando Visual Studio Code, aparecerá la opción Run JAVA.
Si estás usando IntelliJ IDEA, aparecerá la opción Run 'AmadeusApplication.main()'.


![Imagen ](./documentationImg/12correrProyecto.png)
Ilustración 12: Ubicación para ejecutar o correr el proyecto

Si no aparecen las opciones anteriores
Si no ves las opciones mencionadas, ingresa al archivo AmadeusApplication. Justo encima del archivo, verás un triángulo apuntando hacia la derecha. Al hacer clic en este triángulo, podrás ejecutar la aplicación.


![Imagen ](./documentationImg/13ubicacionArchivoMain.png)
Ilustración 13: Ubicación archivo para ejecutar


![Imagen ](./documentationImg/14correrProyecto.png)
Ilustración 14: Ubicación lugar para correr el proyecto


Enlace para Swagger/Documentación
Al realizar los pasos anteriores y ejecutar la aplicación correctamente, podrás acceder a la documentación de la API a través de Swagger utilizando el siguiente enlace:

http://localhost:8084/api/v1/swagger-ui/index.html

Este enlace se encuentra configurado en el archivo application.yml.

![Imagen ](./documentationImg/15enlaceInterfazSwagger.png)
Ilustración 15: Ubicación enlace Swagger


