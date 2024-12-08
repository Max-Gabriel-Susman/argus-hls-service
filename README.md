# Argus HLS Service 

The Argus HLS Service delivers HLS streams to Argus Egress Clients

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

## TODOs

* we need to push docker images for this and hls service to docker hub 

* linter

* ci