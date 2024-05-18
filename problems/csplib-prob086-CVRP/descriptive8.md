

# Options


- Number of models         4
- Number of solvers        5
- Number of params       105
- Number of params       105 (completed)
- Number of params       105 (at least one option failed to solve)
- Number of params       103 (all options failed to solve)
- Number of params         2 (analysed in this file)


## Models


 - 01_compact.eprime
 - 04_nochPrunedLevels_2.eprime
 - 06_chPrunedLevels_1_1_1_1_1.eprime
 - 06_chPrunedLevels_1_1_1_1_2.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools1
 - or-tools8


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 36326.27 | 
 | 01_compact.eprime | cplex | 36013.51 | 
 | 01_compact.eprime | kissat | 36580.64 | 
 | 01_compact.eprime | or-tools1 | 72000.00 | 
 | 01_compact.eprime | or-tools8 | 36231.01 | 
 | 04_nochPrunedLevels_2.eprime | chuffed | 36343.81 | 
 | 04_nochPrunedLevels_2.eprime | cplex | 36014.26 | 
 | 04_nochPrunedLevels_2.eprime | kissat | 36827.21 | 
 | 04_nochPrunedLevels_2.eprime | or-tools1 | 38348.49 | 
 | 04_nochPrunedLevels_2.eprime | or-tools8 | 36115.21 | 
 | 06_chPrunedLevels_1_1_1_1_1.eprime | chuffed | 37068.79 | 
 | 06_chPrunedLevels_1_1_1_1_1.eprime | cplex | 40.53 | 
 | 06_chPrunedLevels_1_1_1_1_1.eprime | kissat | 36485.86 | 
 | 06_chPrunedLevels_1_1_1_1_1.eprime | or-tools1 | 39598.88 | 
 | 06_chPrunedLevels_1_1_1_1_1.eprime | or-tools8 | 36115.20 | 
 | 06_chPrunedLevels_1_1_1_1_2.eprime | chuffed | 36943.94 | 
 | 06_chPrunedLevels_1_1_1_1_2.eprime | cplex | 36012.00 | 
 | 06_chPrunedLevels_1_1_1_1_2.eprime | kissat | 36325.00 | 
 | 06_chPrunedLevels_1_1_1_1_2.eprime | or-tools1 | 72000.00 | 
 | 06_chPrunedLevels_1_1_1_1_2.eprime | or-tools8 | 36900.70 | 
 | VBS | VBS | 40.53 | 


## Some total runtime stats


 - Fastest option is ('06_chPrunedLevels_1_1_1_1_1.eprime', 'cplex'), total runtime 40.53 seconds
 - Slowest option is ('06_chPrunedLevels_1_1_1_1_2.eprime', 'or-tools1'), total runtime 72000.00 seconds
 - Slowest option took 1776.46 times as long as SBS
 - VBS total runtime 40.53 seconds
 - VBS as a percentage of SBS is 100.00%
