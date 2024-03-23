

# Options


- Number of models 4
- Number of solvers 4
- Number of params 19
- Number of params (completed) 19
- Number of params (all timed out) 12


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
 | 01_compact.eprime | chuffed | 504117.82 | 
 | 01_compact.eprime | cplex | 540012.91 | 
 | 01_compact.eprime | kissat | 432296.16 | 
 | 01_compact.eprime | or-tools1 | 504099.60 | 
 | 04_nochPrunedLevels_2.eprime | chuffed | 504182.38 | 
 | 04_nochPrunedLevels_2.eprime | cplex | 540012.73 | 
 | 04_nochPrunedLevels_2.eprime | kissat | 432247.07 | 
 | 04_nochPrunedLevels_2.eprime | or-tools1 | 504331.32 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | chuffed | 504273.59 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | cplex | 576008.97 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | kissat | 434011.45 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | or-tools1 | 505693.68 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | chuffed | 506814.07 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | cplex | 576009.09 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | kissat | 433864.58 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | or-tools1 | 505238.02 | 
 | VBS | VBS | 246.30 | 


## Some total runtime stats


 - Fastest option is ('04_nochPrunedLevels_2.eprime', 'kissat'), total runtime 432247.07
 - Slowest option is ('06_chPrunedLevels_1_1_2_1.eprime', 'cplex'), total runtime 576009.09
 - VBS total runtime 246.30
 - VBS as a percentage of SBS is 0.06%
