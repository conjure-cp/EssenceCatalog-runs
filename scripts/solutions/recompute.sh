#!/bin/bash

set -o nounset
set -o errexit
shopt -s nullglob

type="sbatch"
if [[ -v RUN_TYPE ]]; then
    type="$RUN_TYPE"
fi
mkdir -p logs/versions
(scutil --get ComputerName || hostname || echo "unknown host") 2> /dev/null | tee logs/versions/computer_name.txt
conjure --version               | tee logs/versions/conjure_version.txt
savilerow -help | head -n1      | tee logs/versions/savilerow_version.txt
minion | head -n2               | tee logs/versions/minion_version.txt

nb_cores=$1
scripts/solutions/gen_conjure_commands.sh
scripts/solutions/gen_solutions.sh $nb_cores
if [[ "${type}" == "sbatch" ]]; then
	scripts/solutions/run_sbatch.sh
else
	scripts/solutions/collect_info.sh
	scripts/solutions/clean_up.sh
fi
