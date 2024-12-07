package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
)

func main() {
	// Directory containing the HLS files
	hlsDir := "./videos"

	// Check if HLS directory exists
	if _, err := os.Stat(hlsDir); os.IsNotExist(err) {
		log.Fatalf("HLS directory %s does not exist", hlsDir)
	}

	// Serve the HLS files
	fs := http.FileServer(http.Dir(hlsDir))
	http.Handle("/hls/", http.StripPrefix("/hls/", fs))

	// Start the HTTP server
	port := 8080
	fmt.Printf("Starting HLS server on http://localhost:%d/hls/\n", port)
	log.Fatal(http.ListenAndServe(fmt.Sprintf(":%d", port), nil))
}
