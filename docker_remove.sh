#!/bin/bash
docker rm -f $(docker ps -aq) 2>/dev/null
docker rmi -f $(docker images -q) 2>/dev/null
docker system prune -a --volumes -f
sudo apt-get purge -y docker* containerd*
sudo rm -rf /var/lib/docker /var/lib/containerd
echo "Docker deleted!"