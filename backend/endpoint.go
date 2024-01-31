package main

import (
	"encoding/json"
	"net/http"
)

type Student struct {
	Carnet string `json:"carnet"`
	Name   string `json:"name"`
}

func main() {
	http.HandleFunc("/data", func(w http.ResponseWriter, r *http.Request) {
		student := Student{Carnet: "202001954", Name: "Estuardo Sebastián Valle Bances"}
		json.NewEncoder(w).Encode(student)
	})

	http.ListenAndServe(":8080", nil)
}
