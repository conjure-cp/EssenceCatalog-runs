#!/bin/bash

set -o nounset
set -o errexit
shopt -s nullglob

ROOT_DIR=$(pwd)

rm -f ${ROOT_DIR}/csplib/Problems/*/models/*.essence

pushd problems > /dev/null                              # go through all csplib problems in the catalog
for prob in csplib-*; do
    if [[ $prob != *-decision ]]; then
        prob_base=${prob:7:7}
        pushd ${prob} > /dev/null
        count=$(ls | grep '.essence' | wc -l)
        # echo $prob $prob_base $count
        if [ $count != 0 ] ; then
            if [ -d "${ROOT_DIR}/csplib/Problems/${prob_base}" ]; then
                cp *.essence "${ROOT_DIR}/csplib/Problems/${prob_base}/models"
            fi
        fi
        popd > /dev/null
    fi
done
popd > /dev/null

