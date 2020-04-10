#!/bin/sh
set -e
source common/variables
source common/functions

NODE_ID=${1:-"1"}
DATA_DIR=$(gethDataDir $NODE_ID)
PWD_FILE=$(gethPwdFile $NODE_ID)
RPC_PORT="$(($NODE_ID + 8544))"
P2P_PORT="$(($NODE_ID + 30302))"

BOOTNODE=$(cat $EIP1559_GETH_BOOTNODE_URL)
$GETH_PATH --datadir $DATA_DIR \
--ipcdisable \
--port $P2P_PORT --networkid $EIP1559_NETWORK_ID \
--rpc --rpcport $RPC_PORT --rpcaddr 0.0.0.0 \
--rpcapi "admin,web3,eth,net,personal,txpool" --rpccorsdomain "0.0.0.0" \
--txpool.nolocals --rpcvhosts=*  --nousb --etherbase $COINBASE \
--unlock 0 --allow-insecure-unlock \
--password $PWD_FILE
