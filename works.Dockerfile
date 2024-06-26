FROM golang:1.21.11 as builder

ENV GOTOOLCHAIN=auto

WORKDIR /workdir

COPY main.go .
COPY go.mod .

RUN go mod tidy

RUN go build ./...