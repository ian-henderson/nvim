#!/bin/bash

function print_overview {
  echo -e "\nUsage: <command>\n"
  echo -e "where <command> is one of:"

  local accepted_args=(install i)
  local args_string=""

  for index in ${!accepted_args[@]}; do
    args_string+="${accepted_args[$index]}"

    if [[ $index -lt "${#accepted_args[@]} - 1" ]]; then
      args_string+=", "
    fi
  done

  echo -e $args_string | sed 's/^/  /'
}

if [ $# -eq 0 ]; then
  print_overview
  exit 1
fi

while (( $# > 0 )); do
  opt=$1
  shift

  case $opt in
    install|i)
      ./install.sh $@
      break
      ;;
    *)
      print_overview
      exit 1
      ;;
  esac
done

exit 0
