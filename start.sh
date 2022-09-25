#!/bin/bash

site="./site" # set path

# download files if folder is empty
if [ -z "$(ls -A $site)" ]; then
    cd $site
    wget https://raw.githubusercontent.com/SaracenRhue/helloworld-docker/main/site/index.html
    cd ../
fi

chmod 777 $site # set permissions to everyone
sleep 5