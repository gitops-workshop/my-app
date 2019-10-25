package main

import (
	"log"
	"os"
	"time"
)

func main() {
	for {
		log.Println(os.Getenv("GREETING"))
		time.Sleep(1 * time.Second)
	}
}
