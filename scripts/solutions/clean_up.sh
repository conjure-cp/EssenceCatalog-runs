#!/bin/bash

set -o nounset
set -o errexit
shopt -s nullglob

# these should be deleted by the runConjure script, but just in case.
# we really don't want them to stay since they can be so large.
find problems -name '*.eprime-dimacs' -delete
find problems -name '*.eprime-minion' -delete
find problems -name '*.eprime-param.fzn' -delete
find problems -name '*.eprime-solution' -delete
find problems -name '*.solution' -delete

# these can now be deleted, assuming the collect_info was exeuted.
# find problems -name '*.eprime-info'   -delete # commented out, just in case collect_info fails etc
find problems -name '*.eprime-infor'  -delete

# the eprimes are duplicated during solving. remove them here.
rm -f problems/*/conjure-mode/*/savilerow-mode/*/solver/*/*.eprime
rm -rf slurm
