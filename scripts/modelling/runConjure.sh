#!/bin/bash

set -o nounset
set -o errexit
shopt -s nullglob

PROBLEM=$1
ESSENCE=$2
CONJURE_MODE=$3
ESSENCE_BASE="${ESSENCE%.*}"
ESSENCE_FULL="EssenceCatalog/problems/${PROBLEM}/${ESSENCE}"
TARGET_DIR="problems/${PROBLEM}/conjure-mode/${CONJURE_MODE}"
mkdir -p "${TARGET_DIR}"

if [ "${CONJURE_MODE}" == "portfolio4" ]; then
    conjure ide --dump-representations ${ESSENCE_FULL} > ${TARGET_DIR}/representations.json
    FLAGS="--portfolio=4 --smart-filenames"
else
    echo "CONJURE_MODE not recognised: ${CONJURE_MODE}"
    exit 1
fi

rm -f ${TARGET_DIR}/.conjure-checksum
conjure modelling ${FLAGS} ${ESSENCE_FULL} -o ${TARGET_DIR}
rm -f ${TARGET_DIR}/.conjure-checksum
