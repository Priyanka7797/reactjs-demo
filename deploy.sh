#!/bin/bash

if [[ $GIT_BRANCH == origin/dev ]]
then
        cd react
        chmod +x build.sh
        ./build.sh
        docker login --username=$docker_username --password=$docker_password
        docker tag react:v1 priyanka7797/dev:v1
        docker image push priyanka7797/dev:v1

elif [[ $GIT_BRANCH == origin/main ]]
then
        cd react
        chmod +x build.sh
        ./build.sh
        docker login --username=$docker_username --password=$docker_password
        docker tag react:v1 priyanka7797/prod:v1
        docker image push priyanka7797/prod:v1

        

