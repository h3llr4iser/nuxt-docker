# Docker nuxt [![Build Status](https://travis-ci.org/h3llr4iser/nuxt-docker.svg?branch=master)](https://travis-ci.org/h3llr4iser/nuxt-docker)

> Docker Nuxt.js project

Nuxt application containerized with docker for testing purposes. This app is configured to deploy to AWS elastic beanstalk with travis. 

You have to create some environment variables in travis to connect to AWS for uploading the app and to connect to docker hub to create images. 

Push request to github -> travis execute some test -> travis upload the app to AWS elastic beanstalk -> elastic beanstalk create the containers.

```
AWS_ACCESS_KEY
AWS_SECRET_KEY
DOCKER_ID
DOCKER_PASSWORD
```

**To build the docker image**

*For development*

`docker build -f Dockerfile.dev -t  nuxt:dev .`

*For production*

`docker build -t  nuxt:latest .`


**To run the container in DEV mode**

`docker run -p 3000:3000 -v /myapp/node_modules -v $(pwd):/myapp -ti nuxt:dev`


**To run the container in PROD mode**

`docker run -p 3000:3000 -d nuxt`


**To run docker compose in DEV with app and tests**

`docker-compose up`