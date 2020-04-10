#!/bin/sh
set -e
source common/variables
source common/functions

NODE_ID=${1:-"1"}
DATA_DIR=$(gethDataDir $NODE_ID)

$GETH_PATH --datadir $DATA_DIR account list
