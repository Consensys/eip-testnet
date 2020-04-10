#!/bin/sh
set -e
source common/variables
source common/functions

NODE_ID=${1:-"1"}
ACCOUNT_ID=${2:-"1"}
DATA_DIR=$(gethDataDir $NODE_ID)
KEY_FILE=$(gethKeyFile $ACCOUNT_ID)
PWD_FILE=$(gethPwdFile $NODE_ID)

$GETH_PATH --datadir $DATA_DIR account import $KEY_FILE --password $PWD_FILE
