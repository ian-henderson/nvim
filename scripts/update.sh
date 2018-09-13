#!/bin/bash

# TODO: write seperate script for validation logic

plugin_not_found=false

for plugin_name in $@; do
  plugin_url=$(git config --get submodule.bundle/$plugin_name.url)

  if [ ! plugin_url ]; then
    echo $plugin_name not found.
    $plugin_not_found=true
  fi
done

if $plugin_not_found; then
  exit 1
fi

plugin_paths=""

for plugin_name in $@; do
  $plugin_paths+="./bundle/$plugin_name "
done

git submodule update --force --recursive --remote $plugin_paths
