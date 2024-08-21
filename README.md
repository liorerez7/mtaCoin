# Project Summary: MTACoin Miner-Server System
This project is a simplified blockchain simulation involving a **multi-process** miner-server system written in C++. Developed on **Linux** via Ubuntu on VMware, it simulates a basic blockchain network for educational purposes, focusing on multi-process inter-process communication, block mining, and validation.


## Components:

### 1. Miner:
  
    - Reads configuration (difficulty) and connects to the server via named pipes.
    - Mines new blocks by incrementing nonce and calculating hash based on difficulty.
    - Sends mined blocks to the server for verification.

### 2. Server:

    - Initializes the blockchain with a genesis block and manages block validation.
    - Verifies mined blocks using Proof of Work (PoW) and adds valid blocks to the blockchain.
    - Broadcasts new blocks to all miners.

## Docker & Linux Integration:

Both miner and server are Dockerized using Ubuntu-based Linux images, with dependencies installed and directories set up for execution within a multi-process Linux environment.

## Key Technologies:

- Named pipes (FIFO)
- Docker
- Linux (Ubuntu)
- Blockchain (Proof of Work)


## How to run: 

To run the program, follow these steps:
1. Set executable permissions for the script:
``chmod 766 runningMtaCoin.sh``

2.Execute the script:
``./runningMtaCoin.sh``

### Default run:

A server process with 3 miners


### Program Dependencies:
Configuration File Name: mtacoin.conf
Configuration File Location: /tmp/mtacoin


### Optional Adjustments:
The script maps the named pipes and the mtacoin.conf file to the /tmp/mtacoin directory.
