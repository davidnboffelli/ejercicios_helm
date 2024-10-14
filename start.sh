#!/bin/bash

# Espera unos segundos para simular el tiempo de inicio del contenedor
echo "Iniciando contenedor..."
sleep 15

# Marca el contenedor como saludable para el livenessProbe
touch /tmp/healthy

# Ciclo para simular el readinessProbe fallando y recuperándose
while true; do
    echo "Marcando como NO listo"
    rm -f /tmp/ready
    sleep 10  # No listo por 10 segundos

    echo "Marcando como listo"
    touch /tmp/ready
    sleep 20  # Listo por 20 segundos
done
