

# Options


- Number of models 4
- Number of solvers 4
- Number of params 64
- Number of params (completed) 29
- Number of params (all timed out) 3


## Models


 - 01_compact.eprime
 - 03_sparse.eprime
 - 04_nochPrunedLevels_3.eprime
 - 04_nochPrunedLevels_4.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools1


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 1369384.07 | 
 | 01_compact.eprime | cplex | 1620178.32 | 
 | 01_compact.eprime | kissat | 577689.29 | 
 | 01_compact.eprime | or-tools1 | 1369963.66 | 
 | 03_sparse.eprime | chuffed | 1371472.43 | 
 | 03_sparse.eprime | cplex | 1872062.22 | 
 | 03_sparse.eprime | kissat | 689994.10 | 
 | 03_sparse.eprime | or-tools1 | 1518460.53 | 
 | 04_nochPrunedLevels_3.eprime | chuffed | 1339440.54 | 
 | 04_nochPrunedLevels_3.eprime | cplex | 1908058.41 | 
 | 04_nochPrunedLevels_3.eprime | kissat | 400000.80 | 
 | 04_nochPrunedLevels_3.eprime | or-tools1 | 1451936.17 | 
 | 04_nochPrunedLevels_4.eprime | chuffed | 1336981.40 | 
 | 04_nochPrunedLevels_4.eprime | cplex | 1908057.43 | 
 | 04_nochPrunedLevels_4.eprime | kissat | 293391.79 | 
 | 04_nochPrunedLevels_4.eprime | or-tools1 | 1354728.49 | 
 | VBS | VBS | 1228.70 | 


## Some total runtime stats


 - Fastest option is ('04_nochPrunedLevels_4.eprime', 'kissat'), total runtime 293391.79
 - Slowest option is ('04_nochPrunedLevels_3.eprime', 'cplex'), total runtime 1908058.41
 - VBS total runtime 1228.70
 - VBS as a percentage of SBS is 0.42%
