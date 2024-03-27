

# Options


- Number of models         2
- Number of solvers        4
- Number of params       426
- Number of params       421 (completed)
- Number of params       187 (at least one option failed to solve)
- Number of params         0 (all options failed to solve)
- Number of params       421 (analysed in this file)


## Models


 - 01_compact.eprime
 - 06_chPrunedLevels.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools1


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 81135.75 | 
 | 01_compact.eprime | cplex | 6409787.21 | 
 | 01_compact.eprime | kissat | 44051.79 | 
 | 01_compact.eprime | or-tools1 | 336635.53 | 
 | 06_chPrunedLevels.eprime | chuffed | 81258.40 | 
 | 06_chPrunedLevels.eprime | cplex | 6445777.34 | 
 | 06_chPrunedLevels.eprime | kissat | 80058.25 | 
 | 06_chPrunedLevels.eprime | or-tools1 | 336547.49 | 
 | VBS | VBS | 5723.21 | 


## Some total runtime stats


 - Fastest option is ('01_compact.eprime', 'kissat'), total runtime 44051.79 seconds
 - Slowest option is ('06_chPrunedLevels.eprime', 'cplex'), total runtime 6445777.34 seconds
 - Slowest option took 146.32 times as long as SBS
 - VBS total runtime 5723.21 seconds
 - VBS as a percentage of SBS is 12.99%
