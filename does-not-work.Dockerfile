FROM golang:1.21.10 as builder

ENV GOTOOLCHAIN=auto

WORKDIR /workdir

COPY main.go .
COPY go.mod .

RUN go mod tidy

RUN go build ./...