#!/bin/sh
set -e
source common/variables
source common/functions

LOG_FILE=$(getGethLogFile "bootnode")
$ENV_BOOTNODE_PATH --nodekey=$EIP1559_GETH_BOOTKEY 2> $LOG_FILE
