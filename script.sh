#!/bin/bash

apt install -y wget
source ~/.bashrc
cd ./site
wget https://raw.githubusercontent.com/SaracenRhue/helloworld-docker/main/site/index.html
cd