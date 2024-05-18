

# Options


- Number of models         2
- Number of solvers        5
- Number of params         2
- Number of params         2 (completed)
- Number of params         0 (at least one option failed to solve)
- Number of params         0 (all options failed to solve)
- Number of params         2 (analysed in this file)


## Models


 - 01_compact.eprime
 - 06_chPrunedLevels.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools1
 - or-tools8


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 43.68 | 
 | 01_compact.eprime | cplex | 46.16 | 
 | 01_compact.eprime | kissat | 43.92 | 
 | 01_compact.eprime | or-tools1 | 44.12 | 
 | 01_compact.eprime | or-tools8 | 34.94 | 
 | 06_chPrunedLevels.eprime | chuffed | 43.97 | 
 | 06_chPrunedLevels.eprime | cplex | 45.95 | 
 | 06_chPrunedLevels.eprime | kissat | 44.88 | 
 | 06_chPrunedLevels.eprime | or-tools1 | 43.77 | 
 | 06_chPrunedLevels.eprime | or-tools8 | 36.07 | 
 | VBS | VBS | 34.66 | 


## Some total runtime stats


 - Fastest option is ('01_compact.eprime', 'or-tools8'), total runtime 34.94 seconds
 - Slowest option is ('01_compact.eprime', 'cplex'), total runtime 46.16 seconds
 - Slowest option took 1.32 times as long as SBS
 - VBS total runtime 34.66 seconds
 - VBS as a percentage of SBS is 99.20%
