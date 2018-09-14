FROM node:9.4.0-alpine

WORKDIR /myapp

COPY ./package.json /myapp
RUN npm install

COPY . /myapp

RUN apk add --no-cache bash

ENV HOST 0.0.0.0
EXPOSE 3000

CMD ["/bin/bash", "./start.sh"]