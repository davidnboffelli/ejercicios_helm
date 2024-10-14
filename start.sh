#!/bin/bash

echo "Iniciando contenedor..."
sleep 15

touch /tmp/is_up

while true; do
    echo "Marcando como NO listo"
    rm -f /tmp/is_ready
    sleep 10

    echo "Marcando como listo"
    touch /tmp/is_ready
    sleep 20 
done
