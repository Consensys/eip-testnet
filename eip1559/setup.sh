#!/bin/sh
set -e
source common/variables
source common/functions

sh $RUN_GETH_INIT_SCRIPT 1
sh $RUN_GETH_INIT_SCRIPT 2
sh $RUN_GETH_IMPORT_ACCOUNT_SCRIPT 1
sh $RUN_GETH_IMPORT_ACCOUNT_SCRIPT 2

STATIC_NODES_1=$(gethStaticNodes 1)
STATIC_NODES_1_OUT=$(gethStaticNodesOut 1)
STATIC_NODES_2=$(gethStaticNodes 2)
STATIC_NODES_2_OUT=$(gethStaticNodesOut 2)
cp $STATIC_NODES_1 $STATIC_NODES_1_OUT
cp $STATIC_NODES_2 $STATIC_NODES_2_OUT