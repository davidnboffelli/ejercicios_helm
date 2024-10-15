1)
Armar Ejercicio01 con preguntas de interes sobre artifacthub.io. La idea es que sepan leer la documentación de los charts. La parte principal y también las secciones de los costados (install, templates, default values, values schema).

2)
Ejercicio02: Reescribir y desarrollar parte 1 ("Despliega el chart de WordPress utilizando Helm."). Dar mas instrucciones sobre cómo hacerlo, sin que deje de ser algo simple. El foco del ejercicio está en el uso de los comandos que se piden luego de este paso.

3)
Combinar Ejercicio03 y Ejercicio04. La idea es que siempre se levante un chart usando values. A este nuevo ejercicio nombrarlo "ejercicio04"

4)
Hacer un nuevo ejercicio donde se despliegue el chart de nginx. Complejizarlo, haciendo foco en el propio despliegue del chart. Consultar qué herramientas enseña la sección "Trabajar con Charts" del Learning Path. No recuerdo si en esa sección de habla del value.yaml. Este va a ser el nuevo "Ejercicio03".

5)
Crear un nuevo ejercicio ("Ejercicio06") donde se pida reusar el chart del ejercicio anterior y aplicar funciones en el value.yaml.
Por ejemplo:
- Que las contraseñas se generen de forma randomizada
- Aplicar trim en algun lugar donde sea recomendable hacerlo
- Pedir que cierto campo se ingrese con mayúsculas
- En total, estaría bueno que apliquen 6 funciones. Completar las restantes 3 con alguna a nuestro criterio.

6)
Desarrollar app que:
- Levante pequeño servidor web que tarde un tiempo en estar disponible (livenessProbe)
- Que lea un archivo según si esta listo y otro distinto (o evaluar alguna opcion default) si no está listo no (readinessProbe)

Hay 2 variantes:
- hacerlo con GO: imagen ubi minimal o imagen scratch
- hacerlo con python.

Luego Dockerizar. Esta es la imagen que vamos a usar para el ejercicio de sondas en el módulo de Kubernetes.

7)
Faltaria un ejercicio de ingress. A priori lo va a hacer Manuel, pero si tenemos tiempo podemos plantearlo nosotros. Módulo Kubernetes