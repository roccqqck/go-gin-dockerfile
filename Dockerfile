ARG GO_VERSION=1.17

FROM golang:${GO_VERSION}-alpine AS builder

WORKDIR /app
RUN apk update ; \
    apk add --no-cache alpine-sdk git ; \ 
    rm -rf /var/cache/apk/*

COPY . .

RUN go mod download ; \
    go build -o ./gin  ./src/main.go 


FROM alpine:latest

WORKDIR /app

COPY --from=builder /app/gin .
COPY --from=builder /app/test.db .

RUN apk update && apk add --no-cache ca-certificates ; \
    rm -rf /var/cache/apk/* ; \
    chmod -R 777 /app


EXPOSE 8080

ENTRYPOINT ["./gin"]