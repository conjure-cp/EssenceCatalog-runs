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
# for prob in csplib-prob045-CoveringArray ; do
# for prob in csplib-prob023-MagicHexagon csplib-prob026-SportsTournamentScheduling csplib-prob049-NumberPartitioningSimple csplib-prob001-CarSequencing csplib-prob045-CoveringArray ; do
for prob in csplib-prob045-CoveringArray csplib-prob001-CarSequencing csplib-prob002-TemplateDesign csplib-prob003-QG3 csplib-prob003-QG4 csplib-prob003-QG5 csplib-prob003-QG6 csplib-prob003-QG7 csplib-prob005-LABS csplib-prob006-GolombRuler csplib-prob007-AllIntervalSeries csplib-prob008-VesselLoading csplib-prob009-PerfectSquarePlacement csplib-prob010-SocialGolfers csplib-prob013-ProgPartyFunctionDecision csplib-prob013-ProgPartyPartition csplib-prob015-SchursLemma csplib-prob016-TrafficLights csplib-prob017-RamseyNumbers csplib-prob018-WaterBuckets csplib-prob019-MagicSquares csplib-prob021-Crossfigures csplib-prob022-BusDriverScheduling csplib-prob023-AbnormalMagicHexagons csplib-prob023-MagicHexagon csplib-prob024-LangfordCombinedDirect csplib-prob024-LangfordCombinedPositional csplib-prob024-LangfordDirect csplib-prob024-LangfordPositional csplib-prob025-Lam csplib-prob026-SportsTournamentScheduling csplib-prob028-BIBD csplib-prob030-BACP csplib-prob031-RackConfiguration csplib-prob032-MaximumDensityStillLife csplib-prob033-WordDesign csplib-prob034-WarehouseLocation csplib-prob036-FLECC csplib-prob038-SteelMill csplib-prob039-Rehearsal csplib-prob040-DistributionWagnerWhitin csplib-prob041-NFractionsPuzzle csplib-prob044-Steiner csplib-prob048-MinimumEnergyBroadcast csplib-prob049-NumberPartitioningFull csplib-prob049-NumberPartitioningSimple csplib-prob050-DiamondFree csplib-prob051-TankAllocation csplib-prob053-GracefulDoubleWheelGraphs csplib-prob053-GracefulGears csplib-prob053-GracefulHelms csplib-prob053-GracefulWheelGraphs csplib-prob054-NQueens csplib-prob055-EFPA csplib-prob056-SONET csplib-prob065-OPD csplib-prob074-MaxClique csplib-prob083-Transshipment csplib-prob086-CVRP csplib-prob110-ArmiesOfQueens csplib-prob115-TailAssignment csplib-prob116-Vellino csplib-prob132-Layout csplib-prob133-Knapsack; do
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
# LC_ALL=C sort -df ${CMD_FILE} -o ${CMD_FILE}

echo "Number of commands to run"
wc -l ${CMD_FILE}*
echo "Running a random subset of $nb_tasks_to_submit"
if [ $nb_tasks_to_submit == 0 ] ; then
    echo "Running them all"
else
    sort -R ${CMD_FILE} -o ${CMD_FILE}
    head -n $nb_tasks_to_submit ${CMD_FILE} > ${CMD_FILE}.tmp
    mv ${CMD_FILE}.tmp ${CMD_FILE}
fi
rm ${CMD_FILE}.skipped


