#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: ./cli.sh unstall|un [<plugin_name>]"
  exit 1
fi

plugin_not_found=false

for plugin_name in $@; do
  plugin_url=$(git config --get submodule.bundle/$plugin_name.url)

  if [ ! $plugin_url ]; then
    echo $plugin_name not found.
    plugin_not_found=true
  fi
done

if $plugin_not_found; then
  exit 1
fi

for plugin_name in $@; do
  git config --remove-section submodule.bundle/$plugin_name
  git rm -fq ./bundle/$plugin_name
  rm -rf .git/modules/bundle/$plugin_name ./bundle/$plugin_name
  echo Removed $plugin_name.
done
