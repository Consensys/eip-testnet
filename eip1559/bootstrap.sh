#!/bin/sh
set -e
source common/variables
source common/functions

sh $RUN_GETH_INIT_SCRIPT 1
sh $RUN_GETH_INIT_SCRIPT 2
sh $RUN_GETH_IMPORT_ACCOUNT_SCRIPT 1
sh $RUN_GETH_IMPORT_ACCOUNT_SCRIPT 2
