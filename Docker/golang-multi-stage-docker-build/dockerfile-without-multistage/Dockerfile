###########################################
# BASE IMAGE
###########################################

FROM ubuntu AS build

RUN apt-get update && apt-get install -y golang-go

ENV GO111MODULE=off

COPY . .

RUN CGO_ENABLED=0 go build -o /app .

ENTRYPOINT ["/app"]



###########################################################
# Without Multi Stage Docker Build
###########################################################

# This is not a distroless image as it contains full `Golang runtime and development environment`
FROM golang:latest

WORKDIR /app

COPY . . 

ENV GO111MODULE=off

# Build GO lang application
RUN CGO_ENABLED=0 GOOS=linux go build -o /app

ENTRYPOINT [ "/app" ]