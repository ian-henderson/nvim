#!/bin/bash

echo -e "\nUsage: ./cli.sh <command>\n"
echo -e "where <command> is one of:"

accepted_args=( install i uninstall un list ls update up )
args_string=""

for index in ${!accepted_args[@]}
do
  args_string+=${accepted_args[$index]}

  if [[ $index -lt "${#accepted_args[@]} - 1" ]]
  then
    args_string+=", "
  fi
done

echo -e $args_string | sed 's/^/  /'
