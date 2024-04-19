#!/bin/bash

# Make sure the script is root
if [ "$EUID" -ne 0 ]; then
  echo 'Please run as root.'
  exit 1
fi

RESOURCES_DIR='/usr/share/troll-o-matic/'
TROLLOMATIC_PATH='/usr/bin/troll-o-matic'

echo 'Copying Resources...'
mkdir "$RESOURCES_DIR"
cp -rv ./resources/* "$RESOURCES_DIR"

echo 'Copying Troll-O-Matic...'
cp -v ./troll-o-matic "$TROLLOMATIC_PATH"

printf "\n\nDone! You can use Troll-O-Matic by running the 'troll-o-matic' command as root.\n"
