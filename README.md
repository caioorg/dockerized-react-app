# Dockerized React App - MultiStage

This repository demonstrates how to bootstrap a React app using create-react-app and add Docker container and using ENV variables.

## Requirements
In order to test the Docker container you need to be able to perform `docker` commands. Familiarity with building and running images is preferred.

### Setup
```
1. Run application development
  docker-compose up

2. run build application production
  docker-compose -f docker-compose.prod.yml up -d --build
```

## Shell Script

Thinking of facilitating a way to run the scripts inside a pipeline, I created a shell file where it runs based on the parameter that is passed.

```
1. To start the development environment use:
  ./run-app-deploy.sh --dev

2. To deploy in a development environment use:
  ./run-app-deploy.sh --prod
```

If there is a problem running the run-app-deploy.sh file, it is possibly due to the permission, if so, give the file permission to run.

```
chmod +x run-app-deploy.sh
```

There, it's done. With these settings, you can integrate your project using React JS with docker, both for development and production. :)