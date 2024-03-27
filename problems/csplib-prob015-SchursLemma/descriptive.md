

# Options


- Number of models 4
- Number of solvers 4
- Number of params 133
- Number of params (completed) 133
- Number of params (all timed out) 0
- Number of params (analysed in this file) 133


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
 | 01_compact.eprime | chuffed | 229.83 | 
 | 01_compact.eprime | cplex | 265.85 | 
 | 01_compact.eprime | kissat | 238.76 | 
 | 01_compact.eprime | or-tools1 | 238.25 | 
 | 03_sparse.eprime | chuffed | 2128.98 | 
 | 03_sparse.eprime | cplex | 1054.89 | 
 | 03_sparse.eprime | kissat | 1096.13 | 
 | 03_sparse.eprime | or-tools1 | 2291.76 | 
 | 04_nochPrunedLevels_3.eprime | chuffed | 1403.05 | 
 | 04_nochPrunedLevels_3.eprime | cplex | 971.63 | 
 | 04_nochPrunedLevels_3.eprime | kissat | 1028.97 | 
 | 04_nochPrunedLevels_3.eprime | or-tools1 | 1642.49 | 
 | 04_nochPrunedLevels_4.eprime | chuffed | 412.39 | 
 | 04_nochPrunedLevels_4.eprime | cplex | 36445.50 | 
 | 04_nochPrunedLevels_4.eprime | kissat | 419.15 | 
 | 04_nochPrunedLevels_4.eprime | or-tools1 | 423.72 | 
 | VBS | VBS | 227.80 | 


## Some total runtime stats


 - Fastest option is ('01_compact.eprime', 'chuffed'), total runtime 229.83
 - Slowest option is ('04_nochPrunedLevels_4.eprime', 'cplex'), total runtime 36445.50
 - Slowest option took 158.58 times as long as SBS
 - VBS total runtime 227.80
 - VBS as a percentage of SBS is 99.12%
