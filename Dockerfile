# syntax=docker/dockerfile:1
FROM --platform=linux/arm64 node:alpine
RUN apk update && apk upgrade
RUN apk add nodejs
RUN apk --no-cache add git
WORKDIR /causeway
COPY . .
RUN npm install
RUN npm install ./geminos-palette
EXPOSE 1880
CMD [ "node", "./packages/node_modules/node-red/red.js" ]
