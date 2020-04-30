#!/bin/sh
set -e
source common/variables
source common/functions

NODE_ID=${1:-"1"}
DATA_DIR=$(besuDataDir $NODE_ID)

echo $DATA_DIR
$BESU_PATH --genesis-file=$EIP1559_BESU_GENESIS \
--data-path=$DATA_DIR --rpc-http-cors-origins=all --discovery-enabled=false \
--rpc-http-enabled --rpc-http-apis=ETH,NET,WEB3,DEBUG,ADMIN,TRACE,PLUGINS  \
--p2p-enabled=true --p2p-port=30305 --rpc-http-port=8547 \
--Xeip1559-enabled=true \
--miner-enabled --miner-coinbase=0xf17f52151EbEF6C7334FAD080c5704D77216b732 \
--logging=info
