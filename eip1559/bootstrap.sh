#!/bin/sh
set -e
source common/variables
source common/functions

sh $EIP1559_SETUP_SCRIPT
sh $EIP1559_DEPLOY_SCRIPT
