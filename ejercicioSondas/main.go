package main

import (
	"fmt"
	"net/http"
	"sync/atomic"
	"time"
)

var isHealthy int32

func main() {
	fmt.Println("Inicializando servidor, espere 20 segundos...")
	time.Sleep(20 * time.Second)

	go func() {
		for {
			atomic.StoreInt32(&isHealthy, 1)
			fmt.Println("El servidor está saludable.")
			time.Sleep(10 * time.Second)

			atomic.StoreInt32(&isHealthy, 0)
			fmt.Println("El servidor no está saludable.")
			time.Sleep(10 * time.Second)
		}
	}()

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintln(w, "¡Hola, mundo! El servidor ya está disponible.")
	})

	http.HandleFunc("/healthy", func(w http.ResponseWriter, r *http.Request) {
		if atomic.LoadInt32(&isHealthy) == 1 {
			w.WriteHeader(http.StatusOK)
			fmt.Fprintln(w, "El servidor está saludable.")
		} else {
			w.WriteHeader(http.StatusInternalServerError)
			fmt.Fprintln(w, "El servidor no está saludable.")
		}
	})

	fmt.Println("Servidor web escuchando en el puerto 8080")
	if err := http.ListenAndServe(":8080", nil); err != nil {
		fmt.Println("Error al iniciar el servidor:", err)
	}
}
