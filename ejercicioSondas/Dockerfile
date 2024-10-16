FROM golang:alpine AS builder

WORKDIR /app

COPY . .

RUN GOOS=linux GOARCH=amd64 go build -ldflags="-s -w" -o servidor




FROM scratch

COPY --from=builder /app/servidor /servidor

EXPOSE 8080

CMD ["/servidor"]