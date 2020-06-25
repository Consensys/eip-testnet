#!/bin/sh
set -e
source common/variables
source common/functions

NODE_ID=${1:-"1"}
DATA_DIR=$(besuDataDir $NODE_ID)

$BESU_PATH --genesis-file=$EIP1559_BESU_GENESIS \
--data-path=$DATA_DIR --rpc-http-cors-origins=all --discovery-enabled=false \
--rpc-http-enabled --rpc-http-apis=ETH,NET,WEB3,DEBUG,ADMIN,TRACE,PLUGINS  \
--p2p-enabled=true --p2p-port=30305 --rpc-http-port=8547 \
--miner-enabled --miner-coinbase=0xf17f52151EbEF6C7334FAD080c5704D77216b732 \
--logging=INFO \
--Xeip1559-enabled=true \
--Xeip1559-basefee-max-change-denominator=8 \
--Xeip1559-target-gas-used=10000000 \
--Xeip1559-slack-coefficient=2 \
--Xeip1559-decay-range=1000000 \
--Xeip1559-initial-base-fee=1000000000 \
--Xeip1559-per-tx-gas-limit=8000000 \
