#!/bin/bash

(
cd slurm/sh
ls -1 | grep '\.sh' > allfiles
if [ -s allfiles ]; then
    # there are some commands to run
    parallel --no-notice sbatch :::: allfiles
    rm allfiles

else
    echo "Nothing to run"
fi
)
rm -rf slurm/sh

