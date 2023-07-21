#!/bin/bash

if (env.GIT_BRANCH == 'origin/dev') {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
        sh 'docker tag react:v1 priyanka7797/dev:v1'
        sh 'docker push priyanka7797/dev:v1'
                    } 
else if (env.GIT_BRANCH == 'origin/main') {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-std
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
        sh 'docker tag react:v1 priyanka7797/prod:v1'
        sh 'docker push priyanka7797/prod:v1'
        }
   

        

