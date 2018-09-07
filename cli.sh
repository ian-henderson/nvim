#!/bin/bash

if [ $# -eq 0 ]; then
  ./scripts/cli_description.sh
  exit 1
fi

while (( $# > 0 )); do
  opt=$1
  shift

  case $opt in
    bootstrap|boot)
      ./scripts/bootstrap.sh
      exit 0
      ;;
    install|i)
      ./scripts/install.sh $@
      exit 0
      ;;
    uninstall|un)
      ./scripts/uninstall.sh $@
      exit 0
      ;;
    list|ls)
      ./scripts/list.sh
      exit 0
      ;;
    update|up)
      ./scripts/update.sh $@
      exit 0
      ;;
    *)
      ./scripts/cli_description.sh
      exit 1
      ;;
  esac
done
