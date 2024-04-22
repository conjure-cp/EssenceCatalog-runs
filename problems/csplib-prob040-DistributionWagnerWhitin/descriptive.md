

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
 - 02_compact_1_1.eprime
 - 03_sparse.eprime
 - 04_nochPrunedLevels_2.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools1


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 15.91 | 
 | 01_compact.eprime | cplex | 16.94 | 
 | 01_compact.eprime | kissat | 36000.00 | 
 | 01_compact.eprime | or-tools1 | 16.47 | 
 | 02_compact_1_1.eprime | chuffed | 15.96 | 
 | 02_compact_1_1.eprime | cplex | 16.65 | 
 | 02_compact_1_1.eprime | kissat | 36000.00 | 
 | 02_compact_1_1.eprime | or-tools1 | 19.13 | 
 | 03_sparse.eprime | chuffed | 36000.00 | 
 | 03_sparse.eprime | cplex | 36000.00 | 
 | 03_sparse.eprime | kissat | 36000.00 | 
 | 03_sparse.eprime | or-tools1 | 36000.00 | 
 | 04_nochPrunedLevels_2.eprime | chuffed | 36000.00 | 
 | 04_nochPrunedLevels_2.eprime | cplex | 7.17 | 
 | 04_nochPrunedLevels_2.eprime | kissat | 36000.00 | 
 | 04_nochPrunedLevels_2.eprime | or-tools1 | 24.43 | 
 | VBS | VBS | 7.17 | 


## Some total runtime stats


 - Fastest option is ('04_nochPrunedLevels_2.eprime', 'cplex'), total runtime 7.17 seconds
 - Slowest option is ('04_nochPrunedLevels_2.eprime', 'kissat'), total runtime 36000.00 seconds
 - Slowest option took 5020.92 times as long as SBS
 - VBS total runtime 7.17 seconds
 - VBS as a percentage of SBS is 100.00%
