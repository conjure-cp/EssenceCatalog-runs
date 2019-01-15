#!/bin/bash

set -o nounset
set -o errexit
shopt -s nullglob

ROOT_DIR=$(pwd)
CMD_FILE="${ROOT_DIR}/scripts/modelling/conjure_commands.txt"

rm -f ${CMD_FILE}
touch ${CMD_FILE}

pushd problems > /dev/null                              # go through all problems in EssenceCatalog
for prob in *; do
    pushd "${prob}" > /dev/null
    for essence in *.essence; do                        # go through all essence files for this problem
        echo "scripts/modelling/runConjure.sh ${prob} ${essence} 00_compact"                    >> ${CMD_FILE}
        echo "scripts/modelling/runConjure.sh ${prob} ${essence} 01_noch_lvlPruned"             >> ${CMD_FILE}
        echo "scripts/modelling/runConjure.sh ${prob} ${essence} 02_noch_lvlFlat"               >> ${CMD_FILE}
        echo "scripts/modelling/runConjure.sh ${prob} ${essence} 03_full_lvlPruned_paramSparse" >> ${CMD_FILE}
        echo "scripts/modelling/runConjure.sh ${prob} ${essence} 04_full_lvlPruned_paramAll"    >> ${CMD_FILE}
        echo "scripts/modelling/runConjure.sh ${prob} ${essence} 05_full_lvlFlat_paramSparse"   >> ${CMD_FILE}
        echo "scripts/modelling/runConjure.sh ${prob} ${essence} 06_full_lvlFlat_paramAll"      >> ${CMD_FILE}
    done
    popd > /dev/null
done
popd > /dev/null

# "LC_ALL=C" seems to be a way of getting a consistent ordering between mac and linux
# at least for the 2 machines I tried this on...
# -d consider only blanks and alphanumeric characters
# -f ignore case
LC_ALL=C sort -df ${CMD_FILE} -o ${CMD_FILE}
