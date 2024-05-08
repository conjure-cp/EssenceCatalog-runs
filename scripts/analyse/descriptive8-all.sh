
parallel --no-notice \
    'python3 scripts/analyse/descriptive8.py {} > {}/descriptive8.md' ::: problems/csplib*

find problems -name descriptive*.md -size 0 -delete
