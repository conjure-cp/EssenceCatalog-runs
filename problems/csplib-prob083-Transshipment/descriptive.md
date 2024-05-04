

# Options


- Number of models         4
- Number of solvers        4
- Number of params      5841
- Number of params      5841 (completed)
- Number of params      5838 (at least one option failed to solve)
- Number of params         0 (all options failed to solve)
- Number of params      5841 (analysed in this file)


## Models


 - 01_compact.eprime
 - 03_sparse.eprime
 - 04_nochPrunedLevels_1_2.eprime
 - 04_nochPrunedLevels_2_1.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools1


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 6077483.42 | 
 | 01_compact.eprime | cplex | 56440.36 | 
 | 01_compact.eprime | kissat | 171230.02 | 
 | 01_compact.eprime | or-tools1 | 554959.64 | 
 | 03_sparse.eprime | chuffed | 210071505.41 | 
 | 03_sparse.eprime | cplex | 210140638.12 | 
 | 03_sparse.eprime | kissat | 210004869.30 | 
 | 03_sparse.eprime | or-tools1 | 210141189.54 | 
 | 04_nochPrunedLevels_1_2.eprime | chuffed | 9340345.13 | 
 | 04_nochPrunedLevels_1_2.eprime | cplex | 57356.40 | 
 | 04_nochPrunedLevels_1_2.eprime | kissat | 166545.71 | 
 | 04_nochPrunedLevels_1_2.eprime | or-tools1 | 420912.51 | 
 | 04_nochPrunedLevels_2_1.eprime | chuffed | 9293039.41 | 
 | 04_nochPrunedLevels_2_1.eprime | cplex | 49353.59 | 
 | 04_nochPrunedLevels_2_1.eprime | kissat | 156885.75 | 
 | 04_nochPrunedLevels_2_1.eprime | or-tools1 | 476718.69 | 
 | VBS | VBS | 44251.41 | 


## Some total runtime stats


 - Fastest option is ('04_nochPrunedLevels_2_1.eprime', 'cplex'), total runtime 49353.59 seconds
 - Slowest option is ('03_sparse.eprime', 'or-tools1'), total runtime 210141189.54 seconds
 - Slowest option took 4257.87 times as long as SBS
 - VBS total runtime 44251.41 seconds
 - VBS as a percentage of SBS is 89.66%
