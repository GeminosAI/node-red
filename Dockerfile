# syntax=docker/dockerfile:1
FROM node:alpine
RUN apk update && apk upgrade
RUN apk add nodejs
RUN apk --no-cache add git
WORKDIR /causeway
COPY . .
RUN ls
RUN npm ci
# RUN npm install ./geminos-palette
RUN npm run-script build
# EXPOSE 1880
# CMD [ "node", "./packages/node_modules/node-red/red.js" ]
