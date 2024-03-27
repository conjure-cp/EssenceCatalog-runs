

# Options


- Number of models         4
- Number of solvers        4
- Number of params         1
- Number of params         1 (completed)
- Number of params         0 (at least one timed out)
- Number of params         0 (all timed out)
- Number of params         1 (analysed in this file)


## Models


 - 01_compact.eprime
 - 02_compact_1_1.eprime
 - 03_sparse.eprime
 - 04_nochPrunedLevels_3.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools1


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 0.23 | 
 | 01_compact.eprime | cplex | 0.45 | 
 | 01_compact.eprime | kissat | 0.26 | 
 | 01_compact.eprime | or-tools1 | 0.31 | 
 | 02_compact_1_1.eprime | chuffed | 0.25 | 
 | 02_compact_1_1.eprime | cplex | 0.49 | 
 | 02_compact_1_1.eprime | kissat | 0.27 | 
 | 02_compact_1_1.eprime | or-tools1 | 0.30 | 
 | 03_sparse.eprime | chuffed | 0.50 | 
 | 03_sparse.eprime | cplex | 0.84 | 
 | 03_sparse.eprime | kissat | 0.49 | 
 | 03_sparse.eprime | or-tools1 | 0.54 | 
 | 04_nochPrunedLevels_3.eprime | chuffed | 0.48 | 
 | 04_nochPrunedLevels_3.eprime | cplex | 0.67 | 
 | 04_nochPrunedLevels_3.eprime | kissat | 0.47 | 
 | 04_nochPrunedLevels_3.eprime | or-tools1 | 0.50 | 
 | VBS | VBS | 0.23 | 


## Some total runtime stats


 - Fastest option is ('01_compact.eprime', 'chuffed'), total runtime 0.23 seconds
 - Slowest option is ('03_sparse.eprime', 'cplex'), total runtime 0.84 seconds
 - Slowest option took 3.65 times as long as SBS
 - VBS total runtime 0.23 seconds
 - VBS as a percentage of SBS is 100.00%
