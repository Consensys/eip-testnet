#!/bin/sh
set -e
source common/variables
source common/functions

NONCE=${1:-0}
SEND=${2:-false}
RPC=${3:-http://127.0.0.1:8545}
$BESU_PATH tx sign \
--private-key=0x8f2a55949038a9610f50fb23b5883af3b4ecb3c3bb792cbcefbd1542c692be63 \
--nonce=$NONCE --gas-limit=30000 \
--to=0x627306090abaB3A6e1400e9345bC60c78a8BEf57 \
--payload=0x00 --value=123 \
--rpc-send=$SEND --rpc-url=$RPC \
--gas-premium=5000 --fee-cap=1100000 \
