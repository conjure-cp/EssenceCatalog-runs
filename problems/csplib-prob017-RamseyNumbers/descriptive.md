

# Options


- Number of models 4
- Number of solvers 4
- Number of params 231
- Number of params (completed) 214
- Number of params (all timed out) 63


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
 | 01_compact.eprime | chuffed | 2402504.60 | 
 | 01_compact.eprime | cplex | 2788969.21 | 
 | 01_compact.eprime | kissat | 2369819.80 | 
 | 01_compact.eprime | or-tools1 | 2435591.62 | 
 | 03_sparse.eprime | chuffed | 3226750.98 | 
 | 03_sparse.eprime | cplex | 4543032.75 | 
 | 03_sparse.eprime | kissat | 3262589.77 | 
 | 03_sparse.eprime | or-tools1 | 3262336.65 | 
 | 04_nochPrunedLevels_2.eprime | chuffed | 2401140.48 | 
 | 04_nochPrunedLevels_2.eprime | cplex | 2683831.52 | 
 | 04_nochPrunedLevels_2.eprime | kissat | 2336198.20 | 
 | 04_nochPrunedLevels_2.eprime | or-tools1 | 2400913.28 | 
 | 06_chPrunedLevels_1_1_1_1_1_1_2.eprime | chuffed | 2399255.08 | 
 | 06_chPrunedLevels_1_1_1_1_1_1_2.eprime | cplex | 2716998.79 | 
 | 06_chPrunedLevels_1_1_1_1_1_1_2.eprime | kissat | 2369781.66 | 
 | 06_chPrunedLevels_1_1_1_1_1_1_2.eprime | or-tools1 | 2398316.59 | 
 | VBS | VBS | 24521.33 | 


## Some total runtime stats


 - Fastest option is ('04_nochPrunedLevels_2.eprime', 'kissat'), total runtime 2336198.20
 - Slowest option is ('03_sparse.eprime', 'cplex'), total runtime 4543032.75
 - VBS total runtime 24521.33
 - VBS as a percentage of SBS is 1.05%
