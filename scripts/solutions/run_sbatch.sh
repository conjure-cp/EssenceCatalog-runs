#!/bin/bash

nb_tasks_to_submit=$1
(
cd slurm/sh
ls -1 | grep '\.sh' > allfiles
sort -R allfiles -o allfiles
head -n $nb_tasks_to_submit allfiles > topfiles
parallel --no-notice -j1 sbatch :::: topfiles
rm allfiles somefiles
)

