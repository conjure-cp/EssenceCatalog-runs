#!/bin/bash

pushd slurm > /dev/null
for run in *.sh; do
	sbatch "${run}"
done
popd > /dev/null
