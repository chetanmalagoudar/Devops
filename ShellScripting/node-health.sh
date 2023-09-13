#!/bin/bash



####################################################

# Author: Chetan Malagoudar
# Date: 15 July 2023

#
# This script outputs the node health
#
# Version: v1

####################################################



set -x # debug mode

set -e # exit the script when there is an error

set -o pipefail # we have to use this as `set -e` cannot catch the pipe errors

df -h


free -g

nproc

ps -ef | grep bash
