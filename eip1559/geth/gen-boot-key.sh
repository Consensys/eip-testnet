#!/bin/sh
set -e
source common/variables
source common/functions

$ENV_BOOTNODE_PATH --genkey=$EIP1559_GETH_BOOTKEY
