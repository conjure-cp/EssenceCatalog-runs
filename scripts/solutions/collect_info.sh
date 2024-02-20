#!/bin/bash

set -o nounset
set -o errexit
shopt -s nullglob

ROOT_DIR=$(pwd)
mkdir -p "${ROOT_DIR}/logs"

TODAY=$(date "+%Y-%m-%d")

pushd EssenceCatalog/problems > /dev/null               # go through all problems in EssenceCatalog
for prob in *; do
    pushd "${prob}" > /dev/null

    # this is the uncompressed filename for the infos.tsv, dated.
    # we will compress it once we collect all the infos.
    INFOS_TSV_FILE="${ROOT_DIR}/problems/${prob}"/infos-${TODAY}.tsv

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
                        for solver in kissat chuffed or-tools cplex; do
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
    # remove the compressed one if it exists
    rm -f ${INFOS_TSV_FILE}.gz
    if [ -f ${INFOS_TSV_FILE} ]; then
        gzip ${INFOS_TSV_FILE} # compress
    fi
done
popd > /dev/null
