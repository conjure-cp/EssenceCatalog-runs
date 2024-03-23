
parallel --tag --no-notice \
    'python3 scripts/analyse/descriptive.py {} > {}/descriptive.md' ::: problems/csplib*
