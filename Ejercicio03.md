# **Ejercicio 04: Desplegando Aplicaciones Complejas en Kubernetes Usando Helm y Values.yaml**

### **Objetivo**

El objetivo de este ejercicio es aprender a desplegar aplicaciones complejas en Kubernetes utilizando Helm, gestionando configuraciones a través de un archivo `values.yaml`. Esto permitirá un despliegue más flexible y fácil de mantener para aplicaciones que requieren persistencia de datos, uso de secretos y ConfigMaps, y gestión adecuada de recursos.

### **¡Importante!**

Es fundamental tener cuidado al manejar información sensible en tus soluciones. Recuerda que otros pueden acceder a los datos en tus entregables, lo que podría comprometer la seguridad de la información. **¡Asegúrate de proteger tus datos y los de tus clientes en todo momento!**

---

### **Enunciado**

En este ejercicio, deberás desplegar y empaquetar una aplicación utilizando Helm, configurando todos los elementos a través de un archivo `values.yaml`. La aplicación incluirá **WordPress**, **MySQL** y **phpMyAdmin**, con las configuraciones adecuadas para garantizar la persistencia de datos y el uso de secretos y ConfigMaps.

---

### **Requisitos del Despliegue:**

1. **Namespace:**
   - Todos los componentes deben ser desplegados en un namespace llamado `wordpress`.

2. **Archivo values.yaml:**
   - Deberás crear un archivo `values.yaml` que incluya todas las configuraciones necesarias para los elementos a desplegar. Este archivo debe contener:
     - **Namespace**.
     - **Versiones de las imágenes** de WordPress, MySQL y phpMyAdmin.
     - **Configuraciones de WordPress**, como el nombre de la aplicación, la URL, y otros parámetros relacionados.
     - **Configuraciones de la Base de Datos** (MySQL):
       - Debes usar la **imagen oficial de MySQL**, asegurándote de usar la versión adecuada.
       - Implementa un **volumen persistente** para almacenar los datos de la base de datos.
       - No uses un `Deployment` para este componente. En su lugar, usa un **StatefulSet**, ya que es el recurso adecuado para gestionar bases de datos con persistencia.
     - **Configuraciones de phpMyAdmin**:
       - Utiliza la **imagen oficial de phpmyadmin**.
     - **Capacidad de los volúmenes persistentes** para WordPress y MySQL.
     - **Secretos y ConfigMaps** necesarios para la configuración segura de la aplicación (como contraseñas de la base de datos, URL, etc.).
     - Las opciones que no deben ser modificadas no deben estar incluidas en el `values.yaml`.

---

### **Pasos del Despliegue:**

1. **Iniciar el Entorno:**
   - Asegúrate de que tu clúster de Kubernetes esté corriendo (puedes usar **Minikube** o cualquier otro clúster compatible con Kubernetes):
     ```bash
     minikube start
     ```

2. **Crear el Archivo values.yaml:**
   - Crea el archivo `values.yaml` con todas las configuraciones mencionadas anteriormente.
   - Asegúrate de definir correctamente los valores como versiones de las imágenes, configuraciones de WordPress y MySQL, secretos y volúmenes.

3. **Instalar el Chart Usando Helm:**
   - Utiliza Helm para instalar la aplicación basada en el `values.yaml` que has creado:
     ```bash
     helm install <nombre-release> bitnami/wordpress -f values.yaml --namespace wordpress --create-namespace
     ```

4. **Verificar el Despliegue:**
   - Comprueba que los pods y servicios están corriendo correctamente en el namespace `wordpress`:
     ```bash
     kubectl get pods -n wordpress
     kubectl get svc -n wordpress
     ```

5. **Acceso a la Aplicación:**
   - Para acceder a WordPress y phpMyAdmin, verifica los servicios expuestos:
     ```bash
     kubectl get svc -n wordpress
     ```
   - Si estás usando **Minikube**, puedes acceder a los servicios utilizando:
     ```bash
     minikube service <nombre-release>-wordpress -n wordpress
     minikube service <nombre-release>-phpmyadmin -n wordpress
     ```

6. **Secretos y ConfigMaps:**
   - Asegúrate de que los **Secretos** y **ConfigMaps** necesarios estén creados y configurados correctamente. Por ejemplo, las contraseñas de MySQL deben estar gestionadas a través de un **Secret**:
     ```bash
     kubectl get secrets -n wordpress
     ```

---

### **Entregables**

- **Capturas de pantalla** de todos los resultados obtenidos durante el despliegue (pods, servicios, acceso a la aplicación).
- Un archivo de texto con los **comandos ejecutados**.
- El **archivo values.yaml** que has creado para el despliegue.
- Los **archivos de configuración de Kubernetes** (`.yaml`), como los manifiestos generados para WordPress, MySQL y phpMyAdmin.
