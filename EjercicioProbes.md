# Ejercicio 6

## Objetivo

El objetivo de este ejercicio es que los estudiantes se familiaricen con la configuración y uso de las sondas `livenessProbe` y `readinessProbe` en Kubernetes para supervisar el estado de los contenedores. A través de la implementación de estas sondas, los alumnos podrán detectar si un contenedor está vivo y si está listo para recibir tráfico, lo cual es esencial para el mantenimiento de la disponibilidad y estabilidad de las aplicaciones en un entorno de Kubernetes.

## ¡Importante!

Ten mucho cuidado con los valores sensibles que puedas exponer en tus soluciones. Recuerda que otros pueden acceder a los datos en tus entregables, lo que podría comprometer la seguridad de la información. ¡Siempre asegúrate de proteger tus datos y los de tus clientes!

## Enunciado

En este ejercicio, deberás utilizar la imagen `dboffelli/testing_probes:1.0`, la cual está diseñada para probar el comportamiento de las sondas `readinessProbe` y `livenessProbe` en Kubernetes. 

### Requisitos del despliegue:

1. **Desplegar el contenedor:**
   - Utilizar la imagen la imagen proporcionada para desplegar un Deployment.

2. **Configurar las sondas:**
   - **Liveness Probe:** Configura una sonda de liveness para comprobar la existencia del fichero `/tmp/is_up`.
   - **Readiness Probe:** Configura una sonda de readiness para verificar la existencia del fichero `/tmp/is_ready`. Esta sonda debería reflejar el comportamiento del contenedor (fallando y recuperándose cuando detecte la existencia del fichero `is_ready`).

3. **Pruebas de despliegue:**
   - Realizar un despliegue y observar el comportamiento del contenedor con las sondas configuradas a lo largo de un minuto.

## Entregables

- Capturas de pantalla mostrando el resultado de las sondas.
- Archivo con todos los comandos ejecutados, junto con sus respectivas salidas.
- Comentarios acerca de los resultados de las sondas.
- Archivos de configuración de Kubernetes (`.yaml`) usados para el despliegue, con las sondas configuradas.
