#!/bin/sh
set -e
source common/variables
source common/functions

NODE_ID=${1:-"1"}
LOG_FILE=$(getGethLogFile $NODE_ID)

tail -fn 100 $LOG_FILE
