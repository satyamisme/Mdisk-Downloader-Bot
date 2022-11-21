#!/bin/bash
cd $(dirname $0)
#sudo docker ps -aq | xargs sudo docker stop | xargs sudo docker rm
sudo apt install python3 python3-pip
echo yes | pip3 install -r requirements-cli.txt
echo yes | pip3 install -r requirements.txt

echo yes | sudo docker container prune
echo yes | sudo docker image prune -a
sudo dockerd
sudo docker build . -t mdisk
sudo docker run -p 55:55 mdisk



