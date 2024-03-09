#!/bin/bash

(
cd slurm/sh
ls -1 | grep '\.sh' > allfiles
if [ -s allfiles ]; then
    # there are some commands to run
    parallel --no-notice -j1 sbatch :::: allfiles
    rm allfiles
    rm *.sh
else
    echo "Nothing to run"
fi

)

