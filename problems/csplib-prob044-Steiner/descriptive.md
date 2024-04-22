

# Options


- Number of models         4
- Number of solvers        4
- Number of params         2
- Number of params         2 (completed)
- Number of params         2 (at least one option failed to solve)
- Number of params         0 (all options failed to solve)
- Number of params         2 (analysed in this file)


## Models


 - 01_compact.eprime
 - 04_nochPrunedLevels_2.eprime
 - 06_chPrunedLevels_1_1_2.eprime
 - 06_chPrunedLevels_1_2_1.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools1


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 1.06 | 
 | 01_compact.eprime | cplex | 5.07 | 
 | 01_compact.eprime | kissat | 1.12 | 
 | 01_compact.eprime | or-tools1 | 1.61 | 
 | 04_nochPrunedLevels_2.eprime | chuffed | 1.01 | 
 | 04_nochPrunedLevels_2.eprime | cplex | 1.91 | 
 | 04_nochPrunedLevels_2.eprime | kissat | 1.12 | 
 | 04_nochPrunedLevels_2.eprime | or-tools1 | 1.35 | 
 | 06_chPrunedLevels_1_1_2.eprime | chuffed | 1.41 | 
 | 06_chPrunedLevels_1_1_2.eprime | cplex | 2.89 | 
 | 06_chPrunedLevels_1_1_2.eprime | kissat | 1.63 | 
 | 06_chPrunedLevels_1_1_2.eprime | or-tools1 | 2.04 | 
 | 06_chPrunedLevels_1_2_1.eprime | chuffed | 1.53 | 
 | 06_chPrunedLevels_1_2_1.eprime | cplex | 72000.00 | 
 | 06_chPrunedLevels_1_2_1.eprime | kissat | 1.73 | 
 | 06_chPrunedLevels_1_2_1.eprime | or-tools1 | 1.96 | 
 | VBS | VBS | 1.01 | 


## Some total runtime stats


 - Fastest option is ('04_nochPrunedLevels_2.eprime', 'chuffed'), total runtime 1.01 seconds
 - Slowest option is ('06_chPrunedLevels_1_2_1.eprime', 'cplex'), total runtime 72000.00 seconds
 - Slowest option took 71287.13 times as long as SBS
 - VBS total runtime 1.01 seconds
 - VBS as a percentage of SBS is 100.00%
