#!/bin/bash
    echo hi123
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u archita392 -p 12345678910
    docker tag test archita392/task_2
    docker push archita392/task_2