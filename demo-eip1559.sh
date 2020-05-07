#!/bin/bash
source common/variables
source common/functions

clear
echo $SEPARATOR
echo -e "${GREEN} EIP-1559"
echo -e "${NC}$SEPARATOR"
sh start.sh &>/dev/null &
echo -e "generating node keypairs"
sleep 0.5
echo -e "running ${GREEN} besu-1 ${NC} node ( ${LIGHT_PURPLE}miner${NC} )"
echo -e "running ${GREEN} geth-1 ${NC} node"
echo -e "running ${GREEN} geth-2 ${NC} node"
sleep 0.5
echo -e "${GREEN}besu-1 ${NC}\t ready:\t enode://1c6d****7d0f@${LIGHT_BLUE}127.0.0.1:30305${NC}"
sleep 0.5
echo -e "${GREEN}geth-1 ${NC}\t ready:\t enode://bcb7****5039@${LIGHT_BLUE}127.0.0.1:30303${NC}"
sleep 0.5
echo -e "${GREEN}geth-2 ${NC}\t ready:\t enode://1faa****fb55@${LIGHT_BLUE}127.0.0.1:30304${NC}"
BESU_LOG_FILE=$(getBesuLogFile 1)
while [[ ! -e $BESU_LOG_FILE ]] ; do
    sleep 0.2
done
sleep 2
teamocil sample-eip1559
