#!/bin/bash

set -o nounset
set -o errexit
shopt -s nullglob

rsync -zarv                                         \
    --prune-empty-dirs                              \
    --include "*/"                                  \
    --include "*.essence"                           \
    --include "*.param"                             \
    --exclude="*"                                   \
    EssenceCatalog/problems/ problems
