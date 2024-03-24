

# Options


- Number of models 4
- Number of solvers 4
- Number of params 19
- Number of params (completed) 19
- Number of params (all timed out) 12
- Number of params (analysed in this file) 7


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
 | 01_compact.eprime | chuffed | 72117.82 | 
 | 01_compact.eprime | cplex | 108012.91 | 
 | 01_compact.eprime | kissat | 296.16 | 
 | 01_compact.eprime | or-tools1 | 72099.60 | 
 | 04_nochPrunedLevels_2.eprime | chuffed | 72182.38 | 
 | 04_nochPrunedLevels_2.eprime | cplex | 108012.73 | 
 | 04_nochPrunedLevels_2.eprime | kissat | 247.07 | 
 | 04_nochPrunedLevels_2.eprime | or-tools1 | 72331.32 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | chuffed | 72273.59 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | cplex | 144008.97 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | kissat | 2011.45 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | or-tools1 | 73693.68 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | chuffed | 74814.07 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | cplex | 144009.09 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | kissat | 1864.58 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | or-tools1 | 73238.02 | 
 | VBS | VBS | 246.30 | 


## Some total runtime stats


 - Fastest option is ('04_nochPrunedLevels_2.eprime', 'kissat'), total runtime 247.07
 - Slowest option is ('06_chPrunedLevels_1_1_2_1.eprime', 'cplex'), total runtime 144009.09
 - VBS total runtime 246.30
 - VBS as a percentage of SBS is 99.69%
