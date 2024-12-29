# Build stage
FROM golang:1.21-alpine AS builder

WORKDIR /app

# Install git and basic tools
RUN apk add --no-cache git

# Copy go mod files
COPY go.mod go.sum ./

# Download dependencies
RUN go mod download

# Copy the rest of the application
COPY . .

# Configure git to trust the directory
RUN git config --global --add safe.directory /app

# Build the application
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .

# Final stage
FROM alpine:latest  

RUN apk --no-cache add ca-certificates

WORKDIR /root/

# Copy the pre-built binary file from the previous stage
COPY --from=builder /app/main .

# Copy views and conf directories
COPY --from=builder /app/views ./views
COPY --from=builder /app/conf ./conf

EXPOSE 8080

CMD ["./main"]
