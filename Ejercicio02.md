# **Ejercicio 02: Desplegando WordPress en Kubernetes con Helm y gestionando versionas**

### **Objetivos**

- Familiarizarse con el uso de Helm para desplegar aplicaciones en Kubernetes.
- Aprender a gestionar *releases* y realizar cambios en la configuración de un *chart*.
  
### **Pre-requisitos**

- Tener instalado y funcionando **minikube**.
- Tener instalado **kubectl**.
- Tener instalado **Helm**.

---

### **Enunciado**

En este ejercicio, vamos a trabajar con el *chart* de **WordPress** y aprenderemos a gestionar aplicaciones en Kubernetes utilizando Helm. Sigue los pasos a continuación:

---

## **Parte 1: Desplegar el chart de WordPress utilizando Helm**

1. **Inicia tu entorno de Kubernetes con Minikube**
   - Asegúrate de que Minikube está funcionando. Si no está corriendo, inicia Minikube:
     ```bash
     minikube start
     ```
   - Verifica que tu *cluster* esté activo y funcionando:
     ```bash
     kubectl get nodes
     ```

2. **Agrega el repositorio oficial de charts de Bitnami (si no lo tienes agregado)**
   - Para utilizar el *chart* de **WordPress**, debes agregar el repositorio de **Bitnami** a Helm (si no lo has hecho previamente):
     ```bash
     helm repo add bitnami https://charts.bitnami.com/bitnami
     ```

3. **Actualiza los repositorios de Helm**
   - Asegúrate de tener las versiones más recientes de los *charts* disponibles:
     ```bash
     helm repo update
     ```

4. **Desplegar el chart de WordPress**
   - Despliega **WordPress** en tu *cluster* de Kubernetes utilizando el *chart* de **Bitnami**. Para esto, ejecuta el siguiente comando, donde `<nombre-release>` es el nombre que le darás a la instalación (por ejemplo, `wordpress-release`):
     ```bash
     helm install <nombre-release> bitnami/wordpress
     ```

5. **Verificar la instalación**
   - Una vez que se haya completado la instalación, verifica que todo esté corriendo correctamente:
     ```bash
     kubectl get pods
     ```

6. **Acceso a la aplicación**
   - Para obtener información sobre cómo acceder a WordPress, puedes ejecutar el siguiente comando:
     ```bash
     helm status <nombre-release>
     ```
   - Esto te proporcionará información sobre cómo acceder a la aplicación desde un navegador web. Si usas Minikube, puede que necesites ejecutar:
     ```bash
     minikube service <nombre-release>-wordpress
     ```
   - Esto abrirá el servicio en tu navegador y te permitirá ver la aplicación en ejecución.

---

## **Parte 2: Gestionar releases y explorar comandos de Helm**

1. **Verificar el estado de tu release**  
   Una vez que hayas desplegado WordPress, utiliza los siguientes comandos para explorar y gestionar tu *release*:
   
   - **Listar las releases instaladas:**
     ```bash
     helm list
     ```
   - **Ver el estado de tu release:**
     ```bash
     helm status <nombre-release>
     ```
   - **Ver el manifiesto generado por Helm:**
     ```bash
     helm get manifest <nombre-release>
     ```
   - **Ver las notas de instalación:**
     ```bash
     helm get notes <nombre-release>
     ```

   > **Pregunta**: Cuéntanos con tus palabras qué información brinda cada uno de estos comandos.

---

## **Parte 3: Realizar cambios en la configuración del chart (Upgrade)**

2. **Realiza un upgrade del chart**
   - Cambia el tipo de servicio a **NodePort** y selecciona un puerto de tu elección para exponer el servicio:
     ```bash
     helm upgrade <nombre-release> bitnami/wordpress --set service.type=NodePort --set service.nodePorts.http=<puerto-elegido>
     ```
   - Verifica que los cambios se han aplicado correctamente:
     ```bash
     helm get values <nombre-release>
     ```

---

## **Parte 4: Gestionar el historial de releases**

3. **Revisar el historial de versiones del release**
   - Utiliza el siguiente comando para ver el historial de versiones del *release*:
     ```bash
     helm history <nombre-release>
     ```

4. **Realizar un rollback**
   - Realiza un *rollback* a la versión anterior utilizando el comando correspondiente:
     ```bash
     helm rollback <nombre-release> <número-de-versión-anterior>
     ```
   - Revisa nuevamente el historial:
     ```bash
     helm history <nombre-release>
     ```

   > **Pregunta**: ¿Qué ocurrió tras realizar el rollback?

---

## **Parte 5: Eliminar el release**

5. **Elimina el release**
   - Utiliza el siguiente comando para eliminar el *release* de tu clúster:
     ```bash
     helm uninstall <nombre-release>
     ```

---

### **Entregables**

- Capturas de pantalla de todos los resultados obtenidos en cada paso del ejercicio.
- Un archivo de texto con los comandos que has ejecutado.
- Archivos de configuración de Kubernetes generados (.yaml).
