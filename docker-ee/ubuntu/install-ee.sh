sudo apt-get remove docker docker-engine docker-ce docker.io
sudo apt autoremove
sudo apt update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
DOCKER_EE_URL=https://storebits.docker.com/ee/ubuntu/<>   ## ADD URL from store.docker.com
DOCKER_EE_VERSION=stable-17.06
curl -fsSL "${DOCKER_EE_URL}/ubuntu/gpg" | sudo apt-key add -
sudo apt-key fingerprint 6D085F96
sudo add-apt-repository \
  "deb [arch=amd64] $DOCKER_EE_URL/ubuntu \
  $(lsb_release -cs) \
  $DOCKER_EE_VERSION"
apt update
apt install docker-ee