FROM golang:1.20-alpine AS base
WORKDIR /app
COPY go.mod go.sum /app
RUN go mod download
COPY . .

FROM base as build-client
RUN go build -o /bin/client ./cmd/client

FROM base as build-server
RUN go build -o /bin/server ./cmd/server

FROM scratch AS prod
COPY --from=build-client /bin/client /bin/
COPY --from=build-server /bin/server /bin/
EXPOSE 3000
ENTRYPOINT [ "/bin/server" ]


### RUn the container for backend server
## docker container run  -it -p 5000:3000 IMG_ID  
