#!/bin/bash

set -o nounset
set -o errexit
shopt -s nullglob

type="sbatch"
if [[ -v RUN_TYPE ]]; then
    type="$RUN_TYPE"
fi

nb_tasks_to_submit=$1
scripts/solutions/gen_conjure_commands.sh ${nb_tasks_to_submit}
scripts/solutions/gen_solutions.sh 1
if [[ "${type}" == "sbatch" ]]; then
	scripts/solutions/run_sbatch.sh
else
	scripts/solutions/collect_info.sh
	scripts/solutions/clean_up.sh
fi
