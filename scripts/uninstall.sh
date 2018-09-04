#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: ./cli.sh unstall|un [<plugin_name>]"
  exit 1
fi

plugin_not_found=false

for plugin_name in $@; do
  # TODO: make sure this is the best way to check for plugin
  if [ ! -e .git/modules/bundle/$plugin_name ]; then
    echo $plugin_name not found.
    plugin_not_found=true
  fi
done

if $plugin_not_found; then
  exit 1
fi

for plugin_name in $@; do
  git rm ./bundle/$plugin_name
  rm -rf .git/modules/$plugin_name
  git config --remove-section submodule.bundle/$plugin_name
  rm -rf bundle/$plugin_name
  echo Removed $plugin_name.
done
