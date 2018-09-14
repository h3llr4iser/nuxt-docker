# Docker nuxt

> Docker Nuxt.js project

Nuxt application containerized with docker.

**To build the docker image**

*For development*
`docker build -f Dockerfile.dev -t  nuxt:dev .`

*For production*
`docker build -t  nuxt:latest .`

**To run the container in dev mode**

`docker run -p 3000:3000 -v /myapp/node_modules -v $(pwd):/myapp -ti nuxt:dev`


**To run the container in production mode**

`docker run -p 3000:3000 -d nuxt`



