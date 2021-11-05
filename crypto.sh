#!/bin/bash                                                             
GREEN='\033[0;32m'
NC='\033[0m' # No Color
RED='\033[0;31m'
echo -e "${GREEN}       ${NC}██████${GREEN}╗${NC}██████${GREEN}╗ ${NC}██${GREEN}╗   ${NC}██${GREEN}╗${NC}██████${GREEN}╗ ${NC}████████${GREEN}╗ ${NC}██████${GREEN}╗           8888      "
echo -e "${GREEN}      ${NC}██${GREEN}╔════╝${NC}██${GREEN}╔══${NC}██${GREEN}╗╚${NC}██${GREEN}╗ ${NC}██${GREEN}╔╝${NC}██${GREEN}╔══${NC}██${GREEN}╗╚══${NC}██${GREEN}╔══╝${NC}██${GREEN}╔═══${NC}██${GREEN}╗         88 88      "
echo -e "${GREEN}      ${NC}██${GREEN}║     ${NC}██████${GREEN}╔╝ ╚${NC}████${GREEN}╔╝ ${NC}██████${GREEN}╔╝   ${NC}██${GREEN}║   ${NC}██${GREEN}║   ${NC}██${GREEN}║        88  88 TOOLS"
echo -e "${GREEN}      ${NC}██${GREEN}║     ${NC}██${GREEN}╔══${NC}██${GREEN}╗  ╚${NC}██${GREEN}╔╝  ${NC}██${GREEN}╔═══╝    ${NC}██${GREEN}║   ${NC}██${GREEN}║   ${NC}██${GREEN}║       88   88      "
echo -e "${GREEN}      ╚${NC}██████${GREEN}╗${NC}██${GREEN}║  ${NC}██${GREEN}║   ${NC}██${GREEN}║   ${NC}██${GREEN}║        ${NC}██${GREEN}║   ╚${NC}██████${GREEN}╔╝      88888888      " 
echo -e "${GREEN}       ╚═════╝╚═╝  ╚═╝   ╚═╝   ╚═╝        ╚═╝    ╚═════╝             88      "
echo -e " "
echo -e "${NC} > Created by 4lxprime#2237"                                         
echo -e "${NC} > https://linuxconfig.org/ethereum-mining-on-ubuntu-18-04-and-debian"
echo -e " "
echo -e "${NC}╔══════════════════════════════════════════════════════════════════════════════════════════════╗"
echo -e "${NC}║${GREEN}     1 : INSTALL ETHMINER AND START IT  ${NC}║${GREEN}  2 : START ETHMINER  ${NC}║${GREEN}  3 : INSTALL ETHMINER        ${NC}║"
echo -e "${NC}╚══════════════════════════════════════════════════════════════════════════════════════════════╝"
echo -e " "
read -p "$> " CMD

case $CMD in
        "1")
                echo -e " "
                echo -e "$GREEN STARTING INSTALLATION OF ETHMINER ...${NC}"
                read -p "Enter the emplacement of the miner : " filevar
                sudo add-apt-repository ppa:ethereum/ethereum
                sudo apt update
                sudo apt install ethereum
                deb http://ppa.launchpad.net/ethereum/ethereum/ubuntu bionic main 
                deb-src http://ppa.launchpad.net/ethereum/ethereum/ubuntu bionic main
                sudo apt-key adv --keyserver keyserver.ubuntu.com  --recv-keys 2A518C819BE37D2C2031944D1C52189C923F6CA9
                sudo apt update
                sudo apt install ethereum
                cd $filevar
                mkdir ethminer
                wget -O ethminer/ethminer.tar.gz https://github.com/ethereum-mining/ethminer/releases/download/v0.18.0/ethminer-0.18.0-cuda-9-linux-x86_64.tar.gz
                tar xzf ethminer/ethminer.tar.gz -C ethminer/
                echo -e "$GREEN STARTING ETHMINER ...${NC}"
                cd ethminer/bin/
                read -p "enter your ethpool wallet adress : " tokenvar
                ./ethminer -G -P stratum1+tcp://$tokenvar@us1.ethpool.org:3333
                ;;
        "2")
                echo -e " "
                echo -e "$GREEN STARTING ETHMINER ...${NC}"
                read -p "Enter the emplacement of the miner : " filevar
                cd $filevar
                cd ethminer/bin/
                read -p "enter your ethpool wallet adress : " tokenvar
                ./ethminer -G -P stratum1+tcp://$tokenvar@us1.ethpool.org:3333
                ;;
        "3")
                echo -e " "
                echo -e "$GREEN STARTING INSTALLATION OF ETHMINER ...${NC}"
                read -p "Enter the emplacement of the miner : " filevar
                sudo add-apt-repository ppa:ethereum/ethereum
                sudo apt update
                sudo apt install ethereum
                deb http://ppa.launchpad.net/ethereum/ethereum/ubuntu bionic main 
                deb-src http://ppa.launchpad.net/ethereum/ethereum/ubuntu bionic main
                sudo apt-key adv --keyserver keyserver.ubuntu.com  --recv-keys 2A518C819BE37D2C2031944D1C52189C923F6CA9
                sudo apt update
                sudo apt install ethereum
                cd $filevar
                mkdir ethminer
                wget -O ethminer/ethminer.tar.gz https://github.com/ethereum-mining/ethminer/releases/download/v0.18.0/ethminer-0.18.0-cuda-9-linux-x86_64.tar.gz
                tar xzf ethminer/ethminer.tar.gz -C ethminer/
                ;;
        *)
                echo -e "$RED ERROR ! $CMD ARE NOT VALID${NC}"    
                ;;
esac