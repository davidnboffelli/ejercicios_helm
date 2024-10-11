# Ejercicio 02

## Objetivos 

- Familiarizarse con el uso de Helm para desplegar aplicaciones en Kubernetes.
- Aprender a gestionar releases y realizar cambios en la configuración de un chart.

## Pre-requisitos

- Tener instalado y funcionando minikube.
- Tener instalado kubectl.
- Tener instalado Helm.

## Enunciado

En este ejercicio, trabajaremos con el chart de WordPress y aprenderemos a gestionar aplicaciones en Kubernetes utilizando Helm.

1. Despliega el chart de WordPress utilizando Helm.
2. Ejecuta los siguientes comandos para verificar el estado de tu release:
   - `helm list`
   - `helm status <nombre-chart>`
   - `helm get manifest <nombre-chart>`
   - `helm get notes <nombre-chart>`
   Cuéntanos con tus palabras qué información brinda cada comando.
3. Realiza un upgrade del chart cambiando el tipo de servicio a NodePort y el puerto donde se expone el servicio a uno de tu elección. Utiliza `helm get values <nombre-chart>` para ver estos cambios.
4. Revisa el historial de versiones del release con el comando correspondiente y realiza un rollback a la versión anterior. Luego, vuelve a revisar el historial de versiones del release. ¿Qué ocurrió?
5. Elimina el release utilizando el comando adecuado.

## Entregables

- Captura de pantalla de todos los comandos ejecutados y sus salidas por pantalla.