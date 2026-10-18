Sistema de Alerta Agrícola

Proyecto desarrollado para registrar, clasificar y almacenar reportes relacionados con problemas observados en cultivos.

Funciones principales
Registro del cultivo, problema y ubicación.
Clasificación automática de la prioridad.
Asignación de prioridad alta, media o baja.
Creación automática de archivos de reporte.
Numeración consecutiva para evitar reemplazar reportes anteriores.
Clasificación de prioridad

El programa asigna la prioridad de acuerdo con las palabras encontradas en la descripción:

Alta: reportes relacionados con plagas, muchas plantas afectadas o avance rápido.
Media: reportes relacionados con manchas u hojas amarillas.
Baja: problemas que no coinciden con los criterios anteriores.
Estructura del proyecto
programa: contiene el clasificador desarrollado en MATLAB.
reportes: contiene los reportes agrícolas generados.
README.md: presenta la descripción general del proyecto.
Ejecución

Para utilizar el sistema, se debe ejecutar el archivo clasificarReporte.m desde MATLAB e introducir los datos solicitados.