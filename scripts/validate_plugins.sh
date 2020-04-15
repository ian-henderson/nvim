#!/bin/bash

function validate_plugins {
  local args=($@)
  local valid=0
  local invalid_args_string=""

  # TODO: make a function that formats space seperated strings
  for index in "${!args[@]}"; do
    local plugin="${args[$index]}"
    local git_url=$(git -C $NVIM_DIR config --get submodule.bundle/$plugin.url)

    if [ -z $git_url ]; then
      invalid_args_string+="$plugin "
      valid=1
    fi
  done

  echo $invalid_args_string

  return $valid
}
