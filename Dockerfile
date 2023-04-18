FROM golang:1.20.0-alpine3.17 as builder
WORKDIR /app
COPY . . 
RUN GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -ldflags="-w -s" -o server main.go

FROM scratch
COPY --from=builder /app/server .
CMD [ "./server" ]
