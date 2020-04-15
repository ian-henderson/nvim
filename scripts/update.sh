#!/bin/bash

source $NVIM_DIR/scripts/validate_plugins.sh

invalid_args=$(validate_plugins $@)

if [ $? -ne 0 ]; then
  echo invalid args: $invalid_args
  exit 1
fi

plugin_paths=""

for plugin_name in $@; do
  $plugin_paths+="$NVIM_DIR/bundle/$plugin_name "
done

git -C $NVIM_DIR submodule update --force --recursive --remote $plugin_paths
