#!/bin/bash

set -o nounset
set -o errexit
shopt -s nullglob

PROBLEM=$1
ESSENCE=$2
CONJURE_MODE=$3
ESSENCE_BASE="${ESSENCE%.*}"
ESSENCE_FULL="problems/${PROBLEM}/${ESSENCE}"
TARGET_DIR="problems/${PROBLEM}/${ESSENCE_BASE}-models/${CONJURE_MODE}"
mkdir -p "${TARGET_DIR}"

if [ "${CONJURE_MODE}" == "00_compact" ]; then
    FLAGS="-ac --smart-filenames --channelling=no"
    GENERATE_MODELS=true
    conjure ide --dump-representations ${ESSENCE_FULL} > ${TARGET_DIR}/representations.json
elif [ "${CONJURE_MODE}" == "01_noch_lvlPruned" ]; then
    FLAGS="-ax --smart-filenames --channelling=no --representations-givens=s --representations-auxiliaries=c --representations-quantifieds=c --representations-cuts=c"
    GENERATE_MODELS=true
elif [ "${CONJURE_MODE}" == "02_noch_lvlFlat" ]; then
    FLAGS="-ax --smart-filenames --channelling=no --representations-givens=s --representations-auxiliaries=c --representations-quantifieds=c --representations-cuts=c --representation-levels=no"
    GENERATE_MODELS=false
elif [ "${CONJURE_MODE}" == "03_full_lvlPruned_paramSparse" ]; then
    FLAGS="-ax --smart-filenames --representation-levels=yes --representations-givens=s"
    GENERATE_MODELS=false
elif [ "${CONJURE_MODE}" == "04_full_lvlPruned_paramAll" ]; then
    FLAGS="-ax --smart-filenames --representation-levels=yes --representations-givens=x"
    GENERATE_MODELS=false
elif [ "${CONJURE_MODE}" == "05_full_lvlFlat_paramSparse" ]; then
    FLAGS="-ax --smart-filenames --representation-levels=no --representations-givens=s"
    GENERATE_MODELS=false
elif [ "${CONJURE_MODE}" == "06_full_lvlFlat_paramAll" ]; then
    FLAGS="-ax --smart-filenames --representation-levels=no --representations-givens=x"
    GENERATE_MODELS=false
else
    echo "CONJURE_MODE not recognised: ${CONJURE_MODE}"
    exit 1
fi

conjure modelling ${FLAGS} ${ESSENCE_FULL} -o ${TARGET_DIR} --estimate-number-of-models > ${TARGET_DIR}/estimate.txt

if ${GENERATE_MODELS}; then
    conjure modelling ${FLAGS} ${ESSENCE_FULL} -o ${TARGET_DIR}
fi

