#!/bin/bash

if [ $# -eq 0 ]
then
  echo "Usage: ./cli.sh unstall|un [<plugin_name>]"
  exit 1
fi

source ./scripts/validate_plugins.sh

invalid_args=$(validate_plugins $@)

if [ $? -ne 0 ]
then
  echo invalid args: $invalid_args
  exit 1
fi

for plugin_name in $@
do
  git -C $NVIM_DIR config --remove-section submodule.bundle/$plugin_name
  git -C $NVIM_DIR rm -fq $NVIM_DIR/bundle/$plugin_name
  rm -rf $NVIM_DIR/.git/modules/bundle/$plugin_name
  rm -rf $NVIM_DIR/bundle/$plugin_name
  echo Removed $plugin_name.
done
