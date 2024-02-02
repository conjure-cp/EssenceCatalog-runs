#!/bin/bash

set -o nounset
set -o errexit
shopt -s nullglob

ONLY_PORTFOLIO=false
if [ $# -gt 2 ]; then
    echo "maximum number of parameters is 2: -p/--portfolio to have only the portfolio generation and the number of cores to use"
    exit 1
fi

while [[ $# -gt 0 ]]; do
  case $1 in
    -p|--portfolio)
        ONLY_PORTFOLIO=true
      ;;
    *)
        nb_cores=$1
      ;;
  esac
  shift
done

mkdir -p logs/versions
(scutil --get ComputerName || hostname || echo "unknown host") 2> /dev/null | tee logs/versions/computer_name.txt
conjure --version | tee logs/versions/conjure_version.txt

scripts/modelling/gen_conjure_commands.sh "${ONLY_PORTFOLIO}"
scripts/modelling/gen_models.sh $nb_cores

