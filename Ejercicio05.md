# Ejercicio 5

## Objetivo

El objetivo de este ejercicio es que los estudiantes aprendan a utilizar estructuras de control como condiciones y bucles en un archivo values.yaml de un chart de Helm. A través de la configuración de un despliegue complejo, los alumnos podrán aplicar sus conocimientos sobre la parametrización de aplicaciones en Kubernetes, permitiendo la personalización de variables de entorno y configuraciones de servicios.

## ¡Importante!

Ten mucho cuidado con los valores sensibles que puedas exponer en tus soluciones. Recuerda que otros pueden acceder a los datos en tus entregables, lo que podría comprometer la seguridad de la información. ¡Siempre asegúrate de proteger tus datos y los de tus clientes!

## Enunciado

En este ejercicio, deberás reutilizar el chart de Helm que implementa WordPress y MySQL, ahora aplicando condiciones y bucles.

### Requisitos del despliegue:

1. **Archivo `values.yaml`**: Debe incluir todas las configuraciones necesarias para:

    - Utilizar condiciones para elegir si se habilita el despliegue tanto de la base de datos como de phpMyAdmin. Es decir, permitir el despliegue de: 
        - Wordpress, mysql y phpmyadmin.
        - Wordpress y mysql.
        - Solo wordpress.

    - Definir variables de entorno en el `values.yaml` y utilizar bucles para iterar sobre ellas.

    - Usar operadores para asegurarse de que phpmyadmin se despliegue solo si se habilita tambien el despliegue de la base de datos.

## Entregables

- Capturas de pantalla de todos los comandos ejecutados, junto con sus respectivas salidas.
- El archivo `values.yaml` creado para el despliegue.