#!/bin/bash

# TODO: write seperate script for validation logic

plugin_not_found=false

for plugin_name in $@; do
  plugin_url=$(git -C $NVIM_DIR config --get submodule.bundle/$plugin_name.url)

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
  $plugin_paths+="$NVIM_DIR/bundle/$plugin_name "
done

git -C $NVIM_DIR submodule update --force --recursive --remote $plugin_paths
