#!/bin/bash

nb_tasks_to_submit=$1
(
cd slurm/sh
ls -1 | grep '\.sh' > allfiles
if [ -s allfiles ]; then
    # there are some commands to run
    sort -R allfiles -o allfiles
    head -n $nb_tasks_to_submit allfiles > topfiles
    parallel --no-notice -j1 sbatch :::: topfiles
    rm allfiles topfiles
else
    echo "Nothing to run"
fi

)

