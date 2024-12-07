# Argus HLS Service 

The Argus HLS Service Streams Content from an Argus RTMP Service to Argus Egress Clients

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
