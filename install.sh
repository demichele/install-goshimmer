 #!/bin/bash
# Run all commands needed to install GoShimmer
apt update && apt dist-upgrade -y
apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io 
curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker network create --driver=bridge shimmer
mkdir /opt/goshimmer
cd /opt/goshimmer
mkdir db
chmod 0777 db
wget https://raw.githubusercontent.com/demichele/install-goshimmer/master/docker-compose.yml
docker-compose up -d
exec bash
