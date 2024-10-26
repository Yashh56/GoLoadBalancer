# Stage 1: Build
FROM golang:1.22-alpine AS builder

RUN apk add --no-cache git

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN go build -o load_balancer

FROM alpine:latest

RUN adduser -D -g '' appuser
USER appuser

WORKDIR /app

COPY --from=builder /app/load_balancer .

EXPOSE 3030

CMD ["./load_balancer", "-backends=http://backend1:8081,http://backend2:8082,http://backend3:8083", "-port=3030"]
