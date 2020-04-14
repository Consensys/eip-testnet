#!/bin/sh
set -e
source common/variables
source common/functions

GETH_NODE_1_LOG=$(getGethLogFile 1)
GETH_NODE_2_LOG=$(getGethLogFile 2)
BESU_NODE_1_LOG=$(getBesuLogFile 1)

echo "starting geth node 1"
sh $RUN_GETH_MINER_SCRIPT "1" 2> $GETH_NODE_1_LOG &
echo "starting geth node 2"
sh $RUN_GETH_SCRIPT "2" 2> $GETH_NODE_2_LOG &
echo "starting besu node 1"
sh $RUN_BESU_SCRIPT "1" > $BESU_NODE_1_LOG &
