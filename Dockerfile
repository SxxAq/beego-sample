FROM golang:1.21-alpine

WORKDIR /app

# Install required build tools
RUN apk add --no-cache gcc musl-dev git

# Install Beego and Bee tool
RUN go install github.com/beego/bee/v2@latest

# Copy go mod files
COPY go.mod go.sum ./

# Install dependencies
RUN go mod download
RUN go mod tidy

# Copy the rest of the application
COPY . .

# Create conf directory and copy config
RUN mkdir -p conf
COPY conf/app.conf conf/

EXPOSE 8080

CMD ["bee", "run"]
