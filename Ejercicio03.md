# Ejercicio 3

## Objetivo

El objetivo de este ejercicio es que los estudiantes aprendan a desplegar aplicaciones complejas en Kubernetes utilizando Helm, gestionando adecuadamente los recursos y configuraciones necesarias, así como asegurando la persistencia de datos y el uso de secretos y ConfigMaps.

## ¡Importante!

Es fundamental tener cuidado al manejar información sensible en tus soluciones. Recuerda que otros pueden acceder a los datos en tus entregables, lo que podría comprometer la seguridad de la información. ¡Asegúrate de proteger tus datos y los de tus clientes en todo momento!

## Enunciado

En este ejercicio, deberás desplegar y empaquetar una aplicación utilizando un chart de Helm.

### Requisitos del despliegue:

1. **Namespace**: Todos los componentes deben ser desplegados en un namespace llamado `wordpress`.

2. **WordPress**:
   - Utiliza la imagen `bitnami/wordpress`.
   - Implementa un volumen persistente para almacenar los datos de WordPress.

3. **Base de Datos**:
   - Emplea la imagen **oficial** de MySQL, asegurándote de usar la versión adecuada.
   - Implementa un volumen persistente para la base de datos.
   - No utilices un Deployment para este componente (¿Qué objeto sería el adecuado?).

4. **phpMyAdmin**:
   - Utiliza la imagen **oficial** de `phpmyadmin`.

5. **Secretos y ConfigMaps**: Crea los secretos y ConfigMaps necesarios para la correcta configuración de la aplicación.

## Entregables

- Capturas de pantalla de todos los comandos ejecutados, junto con sus respectivas salidas.