
parallel --no-notice \
    'python3 scripts/analyse/descriptive.py {} > {}/descriptive.md' ::: problems/csplib*

find problems -name descriptive.md -size 0 -delete
