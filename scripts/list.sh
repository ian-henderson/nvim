#!/bin/bash

if [ $# -gt 0 ]
then
  echo "Usage: ./cli.sh list|ls"
  exit 1
fi

plugins=$(git -C $NVIM_DIR config --name-only --get-regexp submodule.bundle/*)

for plugin in $plugins
do
  file=$(basename $plugin)
  file_name="${file%.*}"
  echo $file_name
done | sort --ignore-case --unique
