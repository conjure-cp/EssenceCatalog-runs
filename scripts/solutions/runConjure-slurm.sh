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

LIMIT_TIME_PADDED=$(( LIMIT_TIME + 300 ))

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
    CPUS=8
    SOLVER_OPTIONS="--time_limit=${LIMIT_TIME} --cp_random_seed 0 --fz_seed 0 --threads=8"
elif [ "${SOLVER}" == "cplex" ]; then
    SOLVER_OPTIONS="--time-limit ${LIMIT_TIME}"
else
    echo "SOLVER not recognised: ${SOLVER}"
    exit 1
fi

cp ${EPRIME_SRC} ${TARGET_DIR}/${EPRIME}

IFS='/' read -ra PARAM_NAME <<< "$PARAM"
IFS='/' read -ra EPRIME_NAME <<< "$EPRIME"
mkdir -p slurm
SLURM_FILE="slurm/${ESSENCE}_${SOLVER}_${PARAM_NAME[-1]}_${EPRIME_NAME[-1]}.sh"
CURRENT_DIR="$(pwd)"
rm -f "${SLURM_FILE}"
JOB="${EPRIME}-${ESSENCE}-${SOLVER}-${PARAM_NAME[-1]}-${EPRIME_NAME[-1]}"
echo "#!/bin/bash" >> ${SLURM_FILE}
echo "#SBATCH --job-name=${JOB}" >> ${SLURM_FILE}
echo "#SBATCH -e ${CURRENT_DIR}/${SLURM_FILE}.error" >> ${SLURM_FILE}
echo "#SBATCH -o ${CURRENT_DIR}/${SLURM_FILE}task-0.output" >> ${SLURM_FILE}
echo "#SBATCH --cpus-per-task=${CPUS}" >> ${SLURM_FILE}
echo "#SBATCH --mem=8GB" >> ${SLURM_FILE}
echo "#SBATCH --time=01:10:00" >> ${SLURM_FILE}
echo "" >> ${SLURM_FILE}
echo "podman run -it --rm \\" >> ${SLURM_FILE}
echo "    --network=none \\" >> ${SLURM_FILE}
echo "    -v "$PWD:/podmandir:z" \\" >> ${SLURM_FILE}
echo "    --cpus=${CPUS} \\" >> ${SLURM_FILE}
echo "    --memory=8g \\" >> ${SLURM_FILE}
echo "    --timeout=${LIMIT_TIME_PADDED} \\" >> ${SLURM_FILE}
echo "    \"ghcr.io/conjure-cp/conjure@sha256:94a42ff880f38989625a53a03315e44313866a1eda76f268dccb941734d55e29\" \\" >> ${SLURM_FILE}
echo "    conjure solve --use-existing-models=${EPRIME} /podmandir/${ESSENCE_FULL} /podmandir/${PARAM_FULL} -o /podmandir/${TARGET_DIR} \\" >> ${SLURM_FILE}
echo "    --copy-solutions=off \\" >> ${SLURM_FILE}
echo "    --log-level LogNone \\" >> ${SLURM_FILE}
echo "    --savilerow-options \"${SAVILEROW_OPTIONS}\" \\" >> ${SLURM_FILE}
echo "    --solver ${SOLVER} \\" >> ${SLURM_FILE}
echo "    --solver-options \"${SOLVER_OPTIONS}"\" >> ${SLURM_FILE}

echo ${TARGET_DIR}
rm -f ${TARGET_DIR}/*.eprime-minion         # no need to keep: generated minion file
rm -f ${TARGET_DIR}/*.eprime-dimacs         # no need to keep: generated sat file
rm -f ${TARGET_DIR}/*.eprime-param          # no need to keep
rm -f ${TARGET_DIR}/*.eprime-fzn            # no need to keep
rm -f ${TARGET_DIR}/*.eprime-param.fzn      # no need to keep
rm -f ${TARGET_DIR}/*.eprime.mzn            # no need to keep

