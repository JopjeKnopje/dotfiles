#!/bin/bash
# $1: type of setting to apply based on hostname, example `./init-setting.sh displays`
HOST=$(hostname)
SCRIPT_DIR=$(dirname -- ${BASH_SOURCE[0]})
source "${SCRIPT_DIR}/$1/${HOST}.sh"
