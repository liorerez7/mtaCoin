#!/bin/bash

# Pull the images from Docker Hub
sudo docker pull liorerez6/mtacoin:ex03server
sudo docker pull liorerez6/mtacoin:ex03miner

# Run the server container
sudo docker run -d -v /tmp/mtacoin:/usr/src/mnt/mta liorerez6/mtacoin:ex03server

# Run 3 miner containers
for i in {1..3}
do
sudo docker run -d -v /tmp/mtacoin:/usr/src/mnt/mta liorerez6/mtacoin:ex03miner
done
