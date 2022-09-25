#!/bin/bash

site="./site"

if [ -z "$(ls -A $site)" ]; then
    cd $site
    wget https://raw.githubusercontent.com/SaracenRhue/helloworld-docker/main/site/index.html
    cd
fi