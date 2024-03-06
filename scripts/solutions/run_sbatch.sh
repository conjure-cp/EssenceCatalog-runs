#!/bin/bash

pushd slurm/sh > /dev/null
for run in *.sh; do
	sbatch "${run}"
done
popd > /dev/null
