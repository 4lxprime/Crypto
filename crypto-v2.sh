#!/bin/bash     
clear 
echo -e " "                                                       
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
echo -e "${NC} > https://github.com/4lxprime/Crypto"
echo -e " "
echo -e "${NC}╔══════════════════════════════════════════════════════════════════════════════════════════════╗"
echo -e "${NC}║${GREEN}     1 : INSTALL CPUMINER AND START IT  ${NC}║${GREEN}  2 : START CPUMINER  ${NC}║${GREEN}  3 : INSTALL CPUMINER        ${NC}║"
echo -e "${NC}╚══════════════════════════════════════════════════════════════════════════════════════════════╝"
echo -e " "
read -p "$> " CMD

case $CMD in
        "1")
                echo -e " "
                echo -e "$GREEN STARTING INSTALLATION OF CPUMINER ...${NC}"
                read -p "$GREEN Enter the algorithm you want to mine : ${NC}" ALGO
                read -p "$GREEN Enter your minage pool format like 'xmr.pool.minergate.com:45560' : ${NC}" POOL
                read -p "$GREEN Enter your $POOL email : ${NC}" EMAIL
                read -p "$GREEN Enter your $POOL password : ${NC}" PASSWD
                apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev make g++
                git clone https://github.com/tpruvot/cpuminer-multi
                cd cpuminer-multi
                ./build.sh
                ./autogen.sh
                ./cpuminer -a $ALGO -o stratum+tcp://$POOL -u $EMAIL -p $PASSWD
                ;;
        "2")
                echo -e " "
                read -p "$GREEN Enter the algorithm you want to mine : ${NC}" ALGO
                read -p "$GREEN Enter your minage pool format like 'xmr.pool.minergate.com:45560' : ${NC}" POOL
                read -p "$GREEN Enter your $POOL email : ${NC}" EMAIL
                read -p "$GREEN Enter your $POOL password : ${NC}" PASSWD
                echo -e "$GREEN STARTING CPUMINER ...${NC}"
                ./cpuminer -a $ALGO -o stratum+tcp://$POOL -u $EMAIL -p $PASSWD
                ;;
        "3")
                echo -e " "
                echo -e "$GREEN STARTING INSTALLATION OF CPUMINER ...${NC}"
                apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev make g++
                git clone https://github.com/tpruvot/cpuminer-multi
                cd cpuminer-multi
                ./build.sh
                ./autogen.sh
                clear
                echo -e "$GREEN COMPLETED INSTALLATION !${NC}"
                ;;
        *)
                echo -e "$RED ERROR ! $CMD ARE NOT VALID${NC}"    
                ;;
esac

# By 4lxprime