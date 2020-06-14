#!/bin/bash

if [ $1 == "--dev" ]; then
    echo "Starting development environment ..."
    echo "Deconstructing containers, if any ..."
    docker-compose down
    echo "Building development containers ..."
    docker-compose up --build
fi

if [ $1 == "--prod" ]; then
    echo "Deploying in a Production environment"

    echo "Deconstructing containers, if any ..."
    docker-compose -f docker-compose.prod.yml down
    echo "Building development containers"
    docker-compose -f docker-compose.prod.yml up -d --build
fi
