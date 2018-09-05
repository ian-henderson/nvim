#!/bin/bash

if [ $# -gt 0 ]; then
  echo "Usage: ./cli.sh list|ls"
  exit 1
fi

plugins=$(git config --name-only --get-regexp submodule.bundle/*)

for plugin in $plugins; do
  basename $plugin .url
done | sort
