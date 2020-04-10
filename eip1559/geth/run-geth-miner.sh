#!/bin/sh
set -e
source common/variables
source common/functions

NODE_ID=${1:-"1"}
DATA_DIR=$(gethDataDir $NODE_ID)
PWD_FILE=$(gethPwdFile $NODE_ID)
NODE_KEY_FILE=$(gethNodeKeyFile $NODE_ID)
RPC_PORT="$(($NODE_ID + 8544))"
P2P_PORT="$(($NODE_ID + 30302))"

BOOTNODE=$(cat $EIP1559_GETH_BOOTNODE_URL)
$GETH_PATH --datadir $DATA_DIR \
--ipcdisable \
--nodiscover \
--port $P2P_PORT --networkid $EIP1559_NETWORK_ID \
--rpc --rpcport $RPC_PORT --nodiscover --rpcaddr 0.0.0.0 \
--rpcapi "admin,web3,eth,net,personal,miner,txpool" --rpccorsdomain "0.0.0.0" \
--mine --minerthreads=1 --miner.gasprice=1  \
--rpcvhosts=*  --nousb --etherbase 0 \
--unlock 0 --allow-insecure-unlock \
--password $PWD_FILE \
--nodekey $NODE_KEY_FILE
