FROM node:9.4.0-alpine

WORKDIR '/app'

COPY ./package.json ./
RUN npm install

COPY . .
RUN apk add --no-cache bash

ENV HOST 0.0.0.0
EXPOSE 3000

CMD ["/bin/bash", "./start.sh"]