#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: ./cli.sh install|i [<git_url>]"
  exit 1
fi

for url in $@; do
  if [[ $url != *.git ]]; then
    echo Invalid git url: $url
    exit 1
  fi
done

for url in $@; do
  plugin_name=$(basename -- $url .git)
  git submodule add $url ./bundle/$plugin_name
done
