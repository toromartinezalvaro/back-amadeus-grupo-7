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

