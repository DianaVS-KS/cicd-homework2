#!/bin/bash
sudo chmod +x scripts/application_stop.sh
#download node and npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install node

sudo dpkg --purge codedeploy-agent
sudo rm -r /opt/codedeploy-agent/
sudo /home/ubuntu/install auto > /tmp/logfile

sleep 10

sudo rm -r /home/ubuntu/cicd2
mkdir /home/ubuntu/cicd2