#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: ./cli.sh install|i [<git_url>]"
  exit 1
fi

invalid_git_url=false

for url in $@; do
  if [[ $url != *.git ]]; then
    echo Invalid git url: $url.
    $invalid_git_url=true
  fi
done

if $invalid_git_url; then
  exit 1
fi

for url in $@; do
  plugin_name=$(basename $url .git)
  git -C $NVIM_DIR submodule add $url $NVIM_DIR/bundle/$plugin_name
done
