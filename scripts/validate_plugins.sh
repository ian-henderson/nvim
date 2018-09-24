#!/bin/bash

function validate_plugins {
  valid=0

  for plugin in $@
  do
    local plugin_url=$(git -C $NVIM_DIR config --get submodule.bundle/$plugin.url)

    if [ -z $plugin_url ]
    then
      echo $plugin
      valid=1
    fi
  done

  return $valid
}
