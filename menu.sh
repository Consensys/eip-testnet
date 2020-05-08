#!/bin/bash
source common/variables
source common/functions

clear
echo -e $SEPARATOR
echo -e "${GREEN}EIP-1559 menu${NC}"
echo -e $SEPARATOR

$EIP1559_MENU --besu-node-1=http://127.0.0.1:8547 --geth-node-1=http://127.0.0.1:8545 --geth-node-2=http://127.0.0.1:8546

echo -e "sending transaction using ${LIGHT_PURPLE}eth_sendRawTransaction${NC}"
sleep 0.4
clearLastLine
echo -e "sending transaction using ${LIGHT_PURPLE}eth_sendRawTransaction${NC} ..."
sleep 0.4
clearLastLine
echo -e "sending transaction using ${LIGHT_PURPLE}eth_sendRawTransaction${NC} ....."
sleep 0.4
clearLastLine
echo -e "sending transaction using ${LIGHT_PURPLE}eth_sendRawTransaction${NC} .........."
sleep 0.4
clearLastLine
echo -e "sending transaction using ${LIGHT_PURPLE}eth_sendRawTransaction${NC} ................."
clearLastLine
sleep 0.4
echo -e "sending transaction using ${LIGHT_PURPLE}eth_sendRawTransaction${NC}"
echo -e "transaction sent: ${GREEN}OK${NC} "
