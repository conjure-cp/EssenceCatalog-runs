#!/bin/bash

set -o nounset
set -o errexit
shopt -s nullglob

PROBLEM=$1
ESSENCE=$2
PARAM=$3
CONJURE_MODE=$4
SAVILEROW_MODE=$5
EPRIME=$6
SOLVER=$7
ESSENCE_BASE="${ESSENCE%.*}"
ESSENCE_FULL="EssenceCatalog/problems/${PROBLEM}/${ESSENCE}"
PARAM_FULL="EssenceCatalog/problems/${PROBLEM}/${PARAM}"
EPRIME_SRC="problems/${PROBLEM}/conjure-mode/${CONJURE_MODE}/${EPRIME}"
TARGET_DIR="problems/${PROBLEM}/conjure-mode/${CONJURE_MODE}/savilerow-mode/${SAVILEROW_MODE}/solver/${SOLVER}"
mkdir -p "${TARGET_DIR}"

LIMIT_TIME_PADDED=$(( LIMIT_TIME * 2 ))

SAVILEROW_OPTIONS="-timelimit ${LIMIT_TIME}"
if [ "${SAVILEROW_MODE}" == "O0" ]; then
    SAVILEROW_OPTIONS="${SAVILEROW_OPTIONS} -O0"
elif [ "${SAVILEROW_MODE}" == "O1" ]; then
    SAVILEROW_OPTIONS="${SAVILEROW_OPTIONS} -O1"
elif [ "${SAVILEROW_MODE}" == "O2" ]; then
    SAVILEROW_OPTIONS="${SAVILEROW_OPTIONS} -O2"
elif [ "${SAVILEROW_MODE}" == "O3" ]; then
    SAVILEROW_OPTIONS="${SAVILEROW_OPTIONS} -O3"
else
    echo "SAVILEROW_MODE not recognised: ${SAVILEROW_MODE}"
    exit 1
fi
CPUS=2
FULL_SOLVER=$SOLVER
if [ "${SOLVER}" == "minion" ]; then
    SOLVER_OPTIONS="-cpulimit ${LIMIT_TIME} -varorder domoverwdeg -preprocess GAC"
elif [ "${SOLVER}" == "lingeling" ]; then
    SOLVER_OPTIONS="-t ${LIMIT_TIME} --seed=0"
elif [ "${SOLVER}" == "chuffed" ]; then
    SOLVER_OPTIONS="-t ${LIMIT_TIME}000 --rnd-seed 0"
elif [ "${SOLVER}" == "kissat" ]; then
    SOLVER_OPTIONS="--time=${LIMIT_TIME} --seed=0"
elif [ "${SOLVER}" == "or-tools" ]; then
    SOLVER_OPTIONS="--time_limit=${LIMIT_TIME} --cp_random_seed 0 --fz_seed 0"
elif [ "${SOLVER}" == "or-tools1" ]; then
    SOLVER="or-tools"
    SOLVER_OPTIONS="--time_limit=${LIMIT_TIME} --cp_random_seed 0 --fz_seed 0 --threads=1"
elif [ "${SOLVER}" == "or-tools8" ]; then
    SOLVER="or-tools"
    CPUS=9
    SOLVER_OPTIONS="--time_limit=${LIMIT_TIME} --cp_random_seed 0 --fz_seed 0 --threads=8"
elif [ "${SOLVER}" == "cplex" ]; then
    SOLVER_OPTIONS="--time-limit ${LIMIT_TIME}"
else
    echo "SOLVER not recognised: ${SOLVER}"
    exit 1
fi

IFS='/' read -ra PARAM_NAME <<< "$PARAM"
IFS='/' read -ra EPRIME_NAME <<< "$EPRIME"
mkdir -p slurm
mkdir -p slurm/sh
CURRENT_DIR="$(pwd)"
SLURM_FILE_BASE="${PROBLEM}_${FULL_SOLVER}_${PARAM_NAME[-1]}_${EPRIME_NAME[-1]}"
SLURM_FILE="slurm/sh/${SLURM_FILE_BASE}.sh"

ERROR_FILE="${TARGET_DIR}/${EPRIME_BASE}-${PARAM_BASE}.stderr"
OUT_FILE="${TARGET_DIR}/${EPRIME_BASE}-${PARAM_BASE}.stdout"

rm -f "${SLURM_FILE}"
JOB="${EPRIME}-${ESSENCE}-${FULL_SOLVER}-${PARAM_NAME[-1]}-${EPRIME_NAME[-1]}"
echo "#!/bin/bash" >> ${SLURM_FILE}
echo "#SBATCH --job-name=${JOB}" >> ${SLURM_FILE}
echo "#SBATCH -e ${ERROR_FILE}" >> ${SLURM_FILE}
echo "#SBATCH -o ${OUT_FILE}" >> ${SLURM_FILE}
echo "#SBATCH --cpus-per-task=${CPUS}" >> ${SLURM_FILE}
echo "#SBATCH --mem=14GB" >> ${SLURM_FILE}
echo "#SBATCH --time=02:00:00" >> ${SLURM_FILE}
echo "" >> ${SLURM_FILE}
echo "podman run --rm \\" >> ${SLURM_FILE}
echo "    --hostname=$(hostname) \\" >> ${SLURM_FILE}
echo "    --network=none \\" >> ${SLURM_FILE}
echo "    -v "$PWD:/podmandir:z" \\" >> ${SLURM_FILE}
echo "    --timeout=${LIMIT_TIME_PADDED} \\" >> ${SLURM_FILE}
echo "    \"localhost/conjure-cplex\" \\" >> ${SLURM_FILE}
echo "    conjure solve \\" >> ${SLURM_FILE}
echo "    --use-existing-models=/podmandir/${EPRIME_SRC} \\" >> ${SLURM_FILE}
echo "    /podmandir/${ESSENCE_FULL} \\" >> ${SLURM_FILE}
echo "    /podmandir/${PARAM_FULL} \\" >> ${SLURM_FILE}
echo "    -o /podmandir/${TARGET_DIR} \\" >> ${SLURM_FILE}
echo "    --runsolver-memory-limit=16384 \\" >> ${SLURM_FILE}
echo "    --runsolver-wall-time-limit=3900\\" >> ${SLURM_FILE}
echo "    --copy-solutions=off \\" >> ${SLURM_FILE}
echo "    --log-level LogNone \\" >> ${SLURM_FILE}
echo "    --savilerow-options \"${SAVILEROW_OPTIONS}\" \\" >> ${SLURM_FILE}
echo "    --solver ${SOLVER} \\" >> ${SLURM_FILE}
echo "    --solver-options \"${SOLVER_OPTIONS}"\" >> ${SLURM_FILE}

EPRIME_BASE="${EPRIME%.*}"
PARAM_BASE=${PARAM##*/}
PARAM_BASE="${PARAM_BASE%.*}"
echo "# PARAM ${PARAM_BASE}" >> $SLURM_FILE

echo "rm -f ${TARGET_DIR}/${EPRIME_BASE}-${PARAM_BASE}.eprime-minion" >> ${SLURM_FILE}
echo "rm -f ${TARGET_DIR}/${EPRIME_BASE}-${PARAM_BASE}.eprime-dimacs" >> ${SLURM_FILE}
echo "rm -f ${TARGET_DIR}/${EPRIME_BASE}-${PARAM_BASE}.eprime-param" >> ${SLURM_FILE}
echo "rm -f ${TARGET_DIR}/${EPRIME_BASE}-${PARAM_BASE}.eprime-solution" >> ${SLURM_FILE}
echo "rm -f ${TARGET_DIR}/${EPRIME_BASE}-${PARAM_BASE}.eprime-infor" >> ${SLURM_FILE}
echo "rm -f ${TARGET_DIR}/${EPRIME_BASE}-${PARAM_BASE}.eprime-fzn" >> ${SLURM_FILE}
echo "rm -f ${TARGET_DIR}/${EPRIME_BASE}-${PARAM_BASE}.eprime-param.fzn" >> ${SLURM_FILE}
echo "rm -f ${TARGET_DIR}/${EPRIME_BASE}-${PARAM_BASE}.eprime.mzn" >> ${SLURM_FILE}
echo "rm -f ${TARGET_DIR}/${EPRIME_BASE}-${PARAM_BASE}.runsolver-info" >> ${SLURM_FILE}

sbatch ${SLURM_FILE}
