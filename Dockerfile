# syntax=docker/dockerfile:1
FROM --platform=amd64 node:alpine
RUN apk update && apk upgrade
RUN apk add nodejs
RUN apk --no-cache add git
WORKDIR /causeway
COPY ./ .
WORKDIR /causeway/node-red
COPY package*.json .
RUN npm install 
COPY . .
EXPOSE 1880
CMD ["node", "./packages/node_modules/node-red/red.js"]