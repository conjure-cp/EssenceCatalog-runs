#!/bin/bash

set -o nounset
set -o errexit
shopt -s nullglob

ROOT_DIR=$(pwd)
CMD_FILE="${ROOT_DIR}/scripts/solutions/conjure_commands.txt"

nb_tasks_to_submit=$1

if [[ -v RUN_TYPE ]]; then
	SCRIPT="scripts/solutions/runConjure.sh"
else
	SCRIPT="scripts/solutions/runConjure-slurm.sh"
fi

rm -f ${CMD_FILE}
touch ${CMD_FILE}

pushd EssenceCatalog/problems > /dev/null               # go through all problems in EssenceCatalog
for prob in csplib-prob023-MagicHexagon csplib-prob026-SportsTournamentScheduling csplib-prob049-NumberPartitioningSimple csplib-prob001-CarSequencing csplib-prob045-CoveringArray ; do
    echo "Generating commands for problem: $prob"
    pushd "${prob}" > /dev/null
    for essence in *.essence; do                        # go through all essence files for this problem, ideally there is only one
        essence_base="${essence%.*}"
        for param in params/*.param params/*/*.param; do
            param_base="${param##*/}"
            param_base="${param_base%.*}"
            for conjure_mode in portfolio4; do
                pushd "${ROOT_DIR}/problems/${prob}/conjure-mode/${conjure_mode}" > /dev/null
                for eprime in *.eprime; do
                    eprime_base="${eprime%.*}"
                    for savilerow_mode in O2; do
                        for solver in kissat or-tools1 or-tools8 cplex chuffed; do
                            INFO_FILE="${ROOT_DIR}/problems/${prob}/conjure-mode/${conjure_mode}/savilerow-mode/${savilerow_mode}/solver/${solver}/${eprime_base}-${param_base}.stats.json"
                            if ! [ -f "${INFO_FILE}" ]; then
                                # echo "${SCRIPT} ${prob} ${essence} ${param} ${conjure_mode} ${savilerow_mode} ${eprime} ${solver}"
                                echo "${SCRIPT} ${prob} ${essence} ${param} ${conjure_mode} ${savilerow_mode} ${eprime} ${solver}" >> ${CMD_FILE}
			    else
                                echo "${SCRIPT} ${prob} ${essence} ${param} ${conjure_mode} ${savilerow_mode} ${eprime} ${solver}" >> ${CMD_FILE}.skipped
                            fi
                        done
                    done
                done
                popd > /dev/null
            done
        done
    done
    popd > /dev/null
done
popd > /dev/null

# "LC_ALL=C" seems to be a way of getting a consistent ordering between mac and linux
# at least for the 2 machines I tried this on...
# -d consider only blanks and alphanumeric characters
# -f ignore case
LC_ALL=C sort -df ${CMD_FILE} -o ${CMD_FILE}

echo "Number of commands to run"
wc -l ${CMD_FILE}*
echo "Running a random subset of $nb_tasks_to_submit"
sort -R ${CMD_FILE} -o ${CMD_FILE}
head -n $nb_tasks_to_submit ${CMD_FILE} > ${CMD_FILE}.tmp
mv ${CMD_FILE}.tmp ${CMD_FILE}
rm ${CMD_FILE}.skipped

