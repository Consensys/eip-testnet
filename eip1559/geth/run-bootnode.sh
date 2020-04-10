#!/bin/sh
set -e
source common/variables
source common/functions

$ENV_BOOTNODE_PATH --nodekey=$EIP1559_GETH_BOOTKEY
