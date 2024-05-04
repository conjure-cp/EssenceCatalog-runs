

# Options


- Number of models         4
- Number of solvers        4
- Number of params         1
- Number of params         1 (completed)
- Number of params         1 (at least one option failed to solve)
- Number of params         0 (all options failed to solve)
- Number of params         1 (analysed in this file)


## Models


 - 01_compact.eprime
 - 03_sparse.eprime
 - 05_nochAllLevels_2.eprime
 - 06_chPrunedLevels.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools1


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 0.30 | 
 | 01_compact.eprime | cplex | 0.55 | 
 | 01_compact.eprime | kissat | 0.39 | 
 | 01_compact.eprime | or-tools1 | 0.36 | 
 | 03_sparse.eprime | chuffed | 36000.00 | 
 | 03_sparse.eprime | cplex | 36000.00 | 
 | 03_sparse.eprime | kissat | 36000.00 | 
 | 03_sparse.eprime | or-tools1 | 36000.00 | 
 | 05_nochAllLevels_2.eprime | chuffed | 1.37 | 
 | 05_nochAllLevels_2.eprime | cplex | 1.06 | 
 | 05_nochAllLevels_2.eprime | kissat | 1.90 | 
 | 05_nochAllLevels_2.eprime | or-tools1 | 0.94 | 
 | 06_chPrunedLevels.eprime | chuffed | 0.29 | 
 | 06_chPrunedLevels.eprime | cplex | 0.52 | 
 | 06_chPrunedLevels.eprime | kissat | 0.42 | 
 | 06_chPrunedLevels.eprime | or-tools1 | 0.33 | 
 | VBS | VBS | 0.29 | 


## Some total runtime stats


 - Fastest option is ('06_chPrunedLevels.eprime', 'chuffed'), total runtime 0.29 seconds
 - Slowest option is ('03_sparse.eprime', 'or-tools1'), total runtime 36000.00 seconds
 - Slowest option took 124137.93 times as long as SBS
 - VBS total runtime 0.29 seconds
 - VBS as a percentage of SBS is 100.00%
