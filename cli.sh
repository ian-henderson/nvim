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
      ;;
    uninstall|un)
      ./scripts/uninstall.sh $@
      ;;
    list|ls)
      ./scripts/list.sh
      ;;
    update|up)
      ./scripts/update.sh $@
      ;;
    *)
      ./scripts/cli_description.sh
      exit 1
      ;;
  esac
done

exit 0
