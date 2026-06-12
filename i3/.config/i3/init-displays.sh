#!/bin/bash
HOST=$(hostname)
SCRIPT_DIR=$(dirname -- ${BASH_SOURCE[0]})
source "${SCRIPT_DIR}/displays/${HOST}.sh"

