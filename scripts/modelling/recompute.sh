#!/bin/bash

set -o nounset
set -o errexit
shopt -s nullglob
nb_cores=$1

mkdir -p logs/versions
(scutil --get ComputerName || hostname || echo "unknown host") 2> /dev/null | tee logs/versions/computer_name.txt
conjure --version | tee logs/versions/conjure_version.txt

scripts/modelling/gen_conjure_commands.sh 
scripts/modelling/gen_models.sh $nb_cores

