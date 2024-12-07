# Argus Stream Service 

Argus Stream Service is a web API that exposes the Argus Platform's Stream Engine to Argus Clients

## Setup

brew install ffmpeg


## Local Use 

go run main.go

or 

make run && make build

VLC open network for URL: http://localhost:8080/hls/output.m3u8 

## Deploy to EKS

kubectl apply -f deployment.yaml

kubectl get pods
kubectl get service argus-hls-service
