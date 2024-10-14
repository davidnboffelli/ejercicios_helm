# Dockerfile
FROM ubuntu:20.04

# # Instala herramientas necesarias
# RUN apt-get update && \
#     apt-get install -y curl && \
#     apt-get clean

# # Copia los scripts que se usarán para las pruebas de liveness y readiness
# COPY liveness.sh /liveness.sh
# COPY readiness.sh /readiness.sh

# # Da permisos de ejecución a los scripts
# RUN chmod +x /liveness.sh /readiness.sh

# Crea un script para simular el comportamiento del contenedor
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Comando de inicio
CMD ["/start.sh"]
