#!/bin/bash

# Print ASCII art corresponding to current machine
art_file=$(hostname)
[ ! -f "$art_file" ] && [ ! -f "${art_file}_color" ] &&
  art_file=byu

if [ -f "${art_file}_color" ]; then
  echo -e "$(cat ${art_file}_color)" | head -n -1
else
  head -n -1 "$art_file"
fi
