
init: 
	go mod init github.com/Max-Gabriel-Susman/argus-hls-service

convert: 
	ffmpeg -i input.mp4 -bsf:v h264_mp4toannexb -codec copy -hls_list_size 0 output.m3u8

build: 
	docker build -t argus-hls-service .

run: 
	docker run -p 8080:8080 argus-hls-service

test: 
	go test ./...