#!/bin/sh
set -e
source common/variables
source common/functions

GETH_NODE_1_LOG=$(getGethLogFile 1)
GETH_NODE_2_LOG=$(getGethLogFile 2)
BESU_NODE_1_LOG=$(getBesuLogFile 1)
BESU_NODE_2_LOG=$(getBesuLogFile 2)

##########################################################
# 1 geth miner - 1 geth - 1 besu
echo "starting geth node 1"
sh $RUN_GETH_MINER_SCRIPT "1" 2> $GETH_NODE_1_LOG &
echo "starting geth node 2"
sh $RUN_GETH_SCRIPT "2" 2> $GETH_NODE_2_LOG &
echo "starting besu node 1"
sh $RUN_BESU_SCRIPT "1" > $BESU_NODE_1_LOG &
##########################################################

##########################################################
# 1 besu miner - 1 geth - 1 besu
#echo "starting besu miner node 1"
#sh $RUN_BESU_MINER_SCRIPT "1" > $BESU_NODE_1_LOG &
#echo "starting besu node 2"
#sh $RUN_BESU_SCRIPT "2" > $BESU_NODE_2_LOG &
#echo "starting geth node 1"
#sh $RUN_GETH_SCRIPT "1" 2> $GETH_NODE_1_LOG &

##########################################################
