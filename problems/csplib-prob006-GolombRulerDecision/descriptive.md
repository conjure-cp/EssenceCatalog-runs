

# Options


- Number of models 4
- Number of solvers 4
- Number of params 285
- Number of params (completed) 279
- Number of params (all timed out) 120


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
 | 01_compact.eprime | chuffed | 4659994.18 | 
 | 01_compact.eprime | cplex | 4698475.77 | 
 | 01_compact.eprime | kissat | 6655118.99 | 
 | 01_compact.eprime | or-tools1 | 4626443.21 | 
 | 04_nochPrunedLevels_2.eprime | chuffed | 9325400.78 | 
 | 04_nochPrunedLevels_2.eprime | cplex | 9325326.84 | 
 | 04_nochPrunedLevels_2.eprime | kissat | 9325226.63 | 
 | 04_nochPrunedLevels_2.eprime | or-tools1 | 9325374.94 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | chuffed | 4738751.22 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | cplex | 6180078.63 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | kissat | 6621510.95 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | or-tools1 | 4626599.83 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | chuffed | 8962241.71 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | cplex | 10083492.43 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | kissat | 9207938.55 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | or-tools1 | 8928649.10 | 
 | VBS | VBS | 44932.95 | 


## Some total runtime stats


 - Fastest option is ('01_compact.eprime', 'or-tools1'), total runtime 4626443.21
 - Slowest option is ('06_chPrunedLevels_1_1_2_1.eprime', 'cplex'), total runtime 10083492.43
 - VBS total runtime 44932.95
 - VBS as a percentage of SBS is 0.97%
