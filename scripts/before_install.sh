#!/bin/bash
sudo chmod +x scripts/application_stop.sh
#download node and npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install node

sudo dpkg --purge codedeploy-agent
sleep 15
sudo rm -r /opt/codedeploy-agent/
sleep 5
sudo /home/ubuntu/install auto > /tmp/logfile

sleep 5

sudo rm -r /home/ubuntu/cicd2
mkdir /home/ubuntu/cicd2