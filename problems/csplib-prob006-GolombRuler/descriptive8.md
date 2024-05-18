

# Options


- Number of models         4
- Number of solvers        5
- Number of params         7
- Number of params         7 (completed)
- Number of params         2 (at least one option failed to solve)
- Number of params         0 (all options failed to solve)
- Number of params         7 (analysed in this file)


## Models


 - 01_compact.eprime
 - 04_nochPrunedLevels_2.eprime
 - 06_chPrunedLevels_1_1_1_1_2.eprime
 - 06_chPrunedLevels_1_1_1_2_1.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools1
 - or-tools8


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 2.89 | 
 | 01_compact.eprime | cplex | 5.78 | 
 | 01_compact.eprime | kissat | 20.09 | 
 | 01_compact.eprime | or-tools1 | 3.54 | 
 | 01_compact.eprime | or-tools8 | 2.01 | 
 | 04_nochPrunedLevels_2.eprime | chuffed | 72012.30 | 
 | 04_nochPrunedLevels_2.eprime | cplex | 72015.76 | 
 | 04_nochPrunedLevels_2.eprime | kissat | 72012.55 | 
 | 04_nochPrunedLevels_2.eprime | or-tools1 | 72013.24 | 
 | 04_nochPrunedLevels_2.eprime | or-tools8 | 72008.07 | 
 | 06_chPrunedLevels_1_1_1_1_2.eprime | chuffed | 5.11 | 
 | 06_chPrunedLevels_1_1_1_1_2.eprime | cplex | 9.74 | 
 | 06_chPrunedLevels_1_1_1_1_2.eprime | kissat | 23.50 | 
 | 06_chPrunedLevels_1_1_1_1_2.eprime | or-tools1 | 5.67 | 
 | 06_chPrunedLevels_1_1_1_1_2.eprime | or-tools8 | 3.51 | 
 | 06_chPrunedLevels_1_1_1_2_1.eprime | chuffed | 1760.67 | 
 | 06_chPrunedLevels_1_1_1_2_1.eprime | cplex | 72018.15 | 
 | 06_chPrunedLevels_1_1_1_2_1.eprime | kissat | 36217.22 | 
 | 06_chPrunedLevels_1_1_1_2_1.eprime | or-tools1 | 2078.98 | 
 | 06_chPrunedLevels_1_1_1_2_1.eprime | or-tools8 | 1809.52 | 
 | VBS | VBS | 1.99 | 


## Some total runtime stats


 - Fastest option is ('01_compact.eprime', 'or-tools8'), total runtime 2.01 seconds
 - Slowest option is ('06_chPrunedLevels_1_1_1_2_1.eprime', 'cplex'), total runtime 72018.15 seconds
 - Slowest option took 35829.93 times as long as SBS
 - VBS total runtime 1.99 seconds
 - VBS as a percentage of SBS is 99.00%
