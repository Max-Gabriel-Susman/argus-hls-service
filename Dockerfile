# Start from the official Go image for building the service
FROM golang:1.21 as builder

# Set the working directory in the container
WORKDIR /app

# Copy the Go module files and download dependencies
COPY go.mod go.sum ./
RUN go mod download

# Copy the rest of the application code
COPY . .

# Build the Go application
RUN go build -o argus-stream-service

# Use a compatible base image for the final container
FROM ubuntu:22.04

# Set the working directory in the container
WORKDIR /app

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    libc6 \
    && rm -rf /var/lib/apt/lists/*

# Copy the compiled binary from the builder stage
COPY --from=builder /app/argus-stream-service .

# Copy the videos directory to serve HLS files
COPY ./videos ./videos

# Expose the port used by the service
EXPOSE 8080

# Command to run the service
CMD ["/app/argus-stream-service"]
