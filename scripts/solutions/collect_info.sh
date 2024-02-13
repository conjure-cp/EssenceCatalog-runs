#!/bin/bash

set -o nounset
set -o errexit
shopt -s nullglob

ROOT_DIR=$(pwd)
mkdir -p "${ROOT_DIR}/logs"

INFOS_TSV_FILE="${ROOT_DIR}/logs/infos.tsv"
rm -f ${INFOS_TSV_FILE}
touch ${INFOS_TSV_FILE}

                                                        # go through all problems in EssenceCatalog
pushd EssenceCatalog/problems > /dev/null
for prob in *; do
    pushd "${prob}" > /dev/null
    for essence in *.essence; do                        # go through all essence files for this problem
        essence_base="${essence%.*}"
        for param in params/*.param params/*/*.param; do
            param_base="${param##*/}"
            param_base="${param_base%.*}"
            for conjure_mode in portfolio4; do
                pushd "${ROOT_DIR}/problems/${prob}/conjure-mode/${conjure_mode}" > /dev/null
                for eprime in *.eprime; do
                    eprime_base="${eprime%.*}"
                    for savilerow_mode in O2; do
                        for solver in kissat chuffed; do
                            # echo $prob $param $param_base $eprime_base $solver
                            INFO_FILE="${ROOT_DIR}/problems/${prob}/conjure-mode/${conjure_mode}/savilerow-mode/${savilerow_mode}/solver/${solver}/${eprime_base}-${param_base}.eprime-info"
                            if [ -f "${INFO_FILE}" ]; then
                                cat "${INFO_FILE}" | tr ':' '\t' | while read name value; do
                                    echo -e "${prob}\t${essence}\t${param}\t${conjure_mode}\t${savilerow_mode}\t${eprime}\t${solver}\t${name}\t${value}" >> ${INFOS_TSV_FILE}
                                done
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
LC_ALL=C sort -df ${INFOS_TSV_FILE} -o ${INFOS_TSV_FILE}

