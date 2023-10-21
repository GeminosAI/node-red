# syntax=docker/dockerfile:1
FROM node:alpine
RUN apk update && apk upgrade
RUN apk add nodejs
RUN apk --no-cache add git
WORKDIR /causeway
COPY ./ .
RUN ls
WORKDIR /causeway/node-red
COPY package*.json .
RUN npm install 
COPY . .
RUN ls
RUN npm run-script build
EXPOSE 1880
CMD ["node", "./packages/node_modules/node-red/red.js"]
