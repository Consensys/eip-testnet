#!/bin/sh
ps -ef | grep "geth" | grep -v grep | awk '{print $2}' | xargs kill -9
ps -ef | grep "besu" | grep -v grep | awk '{print $2}' | xargs kill -9
