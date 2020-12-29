FROM golang:1.15-alpine

COPY . /go/src/github.com/furiko/pre-kakeibo/server
WORKDIR /go/src/github.com/furiko/pre-kakeibo/server

CMD ["go", "run", "server.go"]