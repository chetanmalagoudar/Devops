### Containerizing a Node Application
FROM alpine

LABEL maintainer="bmchetan2028@gmail.com"

RUN apk add --update nodejs npm curl

WORKDIR /app

COPY . /app

## Install npm dependencies
RUN npm install

EXPOSE 8000

ENTRYPOINT [ "node" ]

CMD [ "app.js" ]