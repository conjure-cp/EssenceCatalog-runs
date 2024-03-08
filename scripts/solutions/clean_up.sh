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

# find problems -name '*.eprime-info'   -delete
find problems -name '*.eprime-infor'  -delete
