#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: ./cli.sh install|i [<git_url>]"
  exit 1
fi

for git_url in $@; do
  # TODO: extract repo_name from url
  # git submodule add $git_url ./bundle/$repo_name
done
