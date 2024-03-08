#!/bin/bash

set -o nounset
set -o errexit
shopt -s nullglob

type="sbatch"
if [[ -v RUN_TYPE ]]; then
    type="$RUN_TYPE"
fi

nb_cores=$1
scripts/solutions/gen_conjure_commands.sh
scripts/solutions/gen_solutions.sh $nb_cores
if [[ "${type}" == "sbatch" ]]; then
	scripts/solutions/run_sbatch.sh
else
	scripts/solutions/collect_info.sh
	scripts/solutions/clean_up.sh
fi
