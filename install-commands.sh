#!/bin/bash

#@author: captaincode0

SCRIPT=""
SCRIPT_NAME=""
INSTALLATION_DIR="/usr/local/bin/"
SCRIPT_ABS_PATH=""

for SCRIPT in `find $(pwd) -mindepth 2 -type f| grep -E "^.+\.sh$"`;
do
  SCRIPT_NAME=$(basename $SCRIPT | sed -e "s/.sh//g");
  SCRIPT_ABS_PATH="${INSTALLATION_DIR}${SCRIPT_NAME}";
  sudo ln -s $SCRIPT $SCRIPT_ABS_PATH;
  sudo chmod +x $SCRIPT_ABS_PATH;
done
