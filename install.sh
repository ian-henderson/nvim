#!/bin/bash

if [ $# -eq 0 ]; then
  echo Install command requires git repos.
  exit 1
fi

# for arg in $@; do
#   git submodule add $arg bundle/$arg
# done

