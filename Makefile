
init: 
	go mod init github.com/Max-Gabriel-Susman/argus-stream-service

convert: 
	ffmpeg -i input.mp4 -bsf:v h264_mp4toannexb -codec copy -hls_list_size 0 output.m3u8

build: 
	docker build -t argus-stream-service .

run: 
	docker run -p 8080:8080 argus-stream-service

test: 
	go test ./...