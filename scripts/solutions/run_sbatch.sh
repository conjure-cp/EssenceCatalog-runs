#!/bin/bash

parallel --no-notice --shuf -j1 sbatch ::: slurm/sh/*.sh

