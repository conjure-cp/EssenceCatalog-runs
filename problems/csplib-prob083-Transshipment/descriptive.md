

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
 | 01_compact.eprime | chuffed | 6077487.96 | 
 | 01_compact.eprime | cplex | 56440.36 | 
 | 01_compact.eprime | kissat | 171229.76 | 
 | 01_compact.eprime | or-tools1 | 554959.12 | 
 | 03_sparse.eprime | chuffed | 210071505.41 | 
 | 03_sparse.eprime | cplex | 210140638.12 | 
 | 03_sparse.eprime | kissat | 210004869.30 | 
 | 03_sparse.eprime | or-tools1 | 210141189.54 | 
 | 04_nochPrunedLevels_1_2.eprime | chuffed | 9340339.00 | 
 | 04_nochPrunedLevels_1_2.eprime | cplex | 57355.93 | 
 | 04_nochPrunedLevels_1_2.eprime | kissat | 166542.12 | 
 | 04_nochPrunedLevels_1_2.eprime | or-tools1 | 420912.16 | 
 | 04_nochPrunedLevels_2_1.eprime | chuffed | 9293039.41 | 
 | 04_nochPrunedLevels_2_1.eprime | cplex | 49352.46 | 
 | 04_nochPrunedLevels_2_1.eprime | kissat | 156882.47 | 
 | 04_nochPrunedLevels_2_1.eprime | or-tools1 | 476716.75 | 
 | VBS | VBS | 44250.54 | 


## Some total runtime stats


 - Fastest option is ('04_nochPrunedLevels_2_1.eprime', 'cplex'), total runtime 49352.46 seconds
 - Slowest option is ('03_sparse.eprime', 'or-tools1'), total runtime 210141189.54 seconds
 - Slowest option took 4257.97 times as long as SBS
 - VBS total runtime 44250.54 seconds
 - VBS as a percentage of SBS is 89.66%
