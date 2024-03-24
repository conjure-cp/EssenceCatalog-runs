

# Options


- Number of models 4
- Number of solvers 4
- Number of params 285
- Number of params (completed) 279
- Number of params (all timed out) 120
- Number of params (analysed in this file) 159


## Models


 - 01_compact.eprime
 - 04_nochPrunedLevels_2.eprime
 - 06_chPrunedLevels_1_1_1_2.eprime
 - 06_chPrunedLevels_1_1_2_1.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools1


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 339994.18 | 
 | 01_compact.eprime | cplex | 378475.77 | 
 | 01_compact.eprime | kissat | 2335118.99 | 
 | 01_compact.eprime | or-tools1 | 306443.21 | 
 | 04_nochPrunedLevels_2.eprime | chuffed | 4789400.78 | 
 | 04_nochPrunedLevels_2.eprime | cplex | 4789326.84 | 
 | 04_nochPrunedLevels_2.eprime | kissat | 4789226.63 | 
 | 04_nochPrunedLevels_2.eprime | or-tools1 | 4789374.94 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | chuffed | 418751.22 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | cplex | 1860078.63 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | kissat | 2301510.95 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | or-tools1 | 306599.83 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | chuffed | 4462241.71 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | cplex | 5583492.43 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | kissat | 4707938.55 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | or-tools1 | 4428649.10 | 
 | VBS | VBS | 44932.95 | 


## Some total runtime stats


 - Fastest option is ('01_compact.eprime', 'or-tools1'), total runtime 306443.21
 - Slowest option is ('06_chPrunedLevels_1_1_2_1.eprime', 'cplex'), total runtime 5583492.43
 - VBS total runtime 44932.95
 - VBS as a percentage of SBS is 14.66%
