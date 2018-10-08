#!/bin/bash

if [ $# -eq 0 ]
then
  $NVIM_DIR/scripts/cli_description.sh
  exit 1
fi

while [[ $# -gt 0 ]]
do
  opt=$1
  shift

  case $opt in
    bootstrap|boot)
      $NVIM_DIR/scripts/bootstrap.sh
      exit 0
      ;;
    install|i)
      $NVIM_DIR/scripts/install.sh $@
      exit 0
      ;;
    uninstall|un)
      $NVIM_DIR/scripts/uninstall.sh $@
      exit 0
      ;;
    list|ls)
      $NVIM_DIR/scripts/list.sh
      exit 0
      ;;
    update|up)
      $NVIM_DIR/scripts/update.sh $@
      exit 0
      ;;
    *)
      $NVIM_DIR/scripts/cli_description.sh
      exit 1
      ;;
  esac
done
