#!/bin/bash

if [ $# -eq 0 ]; then
  ./scripts/cli_description.sh
  exit 1
fi

while (( $# > 0 )); do
  opt=$1
  shift

  case $opt in
    install|i)
      ./scripts/install.sh $@
      exit 0
      ;;
    uninstall|un)
      ./scripts/uninstall.sh $@
      exit 0
      ;;
    *)
      ./scripts/cli_description.sh
      exit 1
      ;;
  esac
done
