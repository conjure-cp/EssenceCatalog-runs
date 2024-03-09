#!/bin/bash

set -o nounset
set -o errexit
shopt -s nullglob

ROOT_DIR=$(pwd)
CMD_FILE="${ROOT_DIR}/scripts/solutions/conjure_commands.txt"

if [[ -v RUN_TYPE ]]; then
	SCRIPT="scripts/solutions/runConjure.sh"
else
	SCRIPT="scripts/solutions/runConjure-slurm.sh"
fi

rm -f ${CMD_FILE}
touch ${CMD_FILE}

pushd EssenceCatalog/problems > /dev/null               # go through all problems in EssenceCatalog
for prob in csplib-prob023-MagicHexagon csplib-prob026-SportsTournamentScheduling csplib-prob049-NumberPartitioningSimple ; do
# for prob in csplib-prob006-GolombRulerDecision; do
    echo $prob
    ls $prob
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
                                echo "${SCRIPT} ${prob} ${essence} ${param} ${conjure_mode} ${savilerow_mode} ${eprime} ${solver}" >> ${CMD_FILE}
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

