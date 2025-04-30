#!/bin/bash

# Get the directory where the script is located
SCRIPT_DIR=$(dirname "$0")

# Load environment variables from .env file in the script's directory
if [ -f "$SCRIPT_DIR/.env" ]; then
  source "$SCRIPT_DIR/.env"
fi

# Check if HOST1 is defined in .env
if [ -z "${HOST2}" ]; then
  echo "Error: HOST2 is not defined in .env"
  exit 1
fi

# Check if COMMAND is defined in .env
if [ -z "${REMOTE_CMD}" ]; then
  echo "Error: REMOTE_CMD is not defined in .env"
  exit 1
fi

# Check if COMMAND is defined in .env
if [ -z "${REMOTE_DIR}" ]; then
  echo "Error: REMOTE_DIR is not defined in .env"
  exit 1
fi

# Run the command on the first host
ssh -t "${USERNAME}@${HOST2}" "
    cd ${REMOTE_DIR}
    ${REMOTE_CMD}
    /bin/sh
"