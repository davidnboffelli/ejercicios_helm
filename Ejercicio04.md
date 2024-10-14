# Ejercicio 4

## Objetivo

El objetivo de este ejercicio es que los estudiantes aprendan a gestionar configuraciones a través de un archivo `values.yaml` en Helm, permitiendo un despliegue más flexible y fácil de mantener para aplicaciones complejas en Kubernetes.

## ¡Importante!

Ten mucho cuidado con los valores sensibles que puedas exponer en tus soluciones. Recuerda que otros pueden acceder a los datos en tus entregables, lo que podría comprometer la seguridad de la información. ¡Siempre asegúrate de proteger tus datos y los de tus clientes!

## Enunciado

En este ejercicio, deberás reutilizar el chart de Helm que implementa WordPress y MySQL, pero ahora configurando todos los elementos a través de un archivo `values.yaml`.

### Requisitos del despliegue:

1. **Archivo `values.yaml`**: Debe incluir todas las configuraciones necesarias para los elementos a desplegar, tales como:
   - Namespace
   - Versiones de las imágenes
   - Configuraciones de Wordpress
   - Configuraciones de la base de datos
   - Configuraciones de phpMyAdmin
   - Capacidad de los volúmenes persistentes
   - Las opciones que no deben ser modificadas **no deben estar en el `values.yaml`**.

## Entregables

- Capturas de pantalla de todos los resultados.
- Archivo con los comandos ejecutados.
- El archivo `values.yaml` creado para el despliegue.
- Archivos de configuración de Kubernetes (`.yaml`).