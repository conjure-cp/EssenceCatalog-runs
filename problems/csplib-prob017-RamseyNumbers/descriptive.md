

# Options


- Number of models 4
- Number of solvers 4
- Number of params 231
- Number of params (completed) 230
- Number of params (all timed out) 63
- Number of params (analysed in this file) 167


## Models


 - 01_compact.eprime
 - 03_sparse.eprime
 - 04_nochPrunedLevels_2.eprime
 - 06_chPrunedLevels_1_1_1_1_1_1_2.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools1


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 98511.58 | 
 | 01_compact.eprime | cplex | 484978.44 | 
 | 01_compact.eprime | kissat | 65958.64 | 
 | 01_compact.eprime | or-tools1 | 131736.01 | 
 | 03_sparse.eprime | chuffed | 1030750.98 | 
 | 03_sparse.eprime | cplex | 2383032.75 | 
 | 03_sparse.eprime | kissat | 1030589.77 | 
 | 03_sparse.eprime | or-tools1 | 1032025.79 | 
 | 04_nochPrunedLevels_2.eprime | chuffed | 98020.05 | 
 | 04_nochPrunedLevels_2.eprime | cplex | 451841.88 | 
 | 04_nochPrunedLevels_2.eprime | kissat | 32609.16 | 
 | 04_nochPrunedLevels_2.eprime | or-tools1 | 97889.55 | 
 | 06_chPrunedLevels_1_1_1_1_1_1_2.eprime | chuffed | 131368.55 | 
 | 06_chPrunedLevels_1_1_1_1_1_1_2.eprime | cplex | 485010.20 | 
 | 06_chPrunedLevels_1_1_1_1_1_1_2.eprime | kissat | 66161.48 | 
 | 06_chPrunedLevels_1_1_1_1_1_1_2.eprime | or-tools1 | 131314.71 | 
 | VBS | VBS | 25195.73 | 


## Some total runtime stats


 - Fastest option is ('04_nochPrunedLevels_2.eprime', 'kissat'), total runtime 32609.16
 - Slowest option is ('03_sparse.eprime', 'cplex'), total runtime 2383032.75
 - VBS total runtime 25195.73
 - VBS as a percentage of SBS is 77.27%
