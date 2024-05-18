

# Options


- Number of models         4
- Number of solvers        5
- Number of params       319
- Number of params       319 (completed)
- Number of params       313 (at least one option failed to solve)
- Number of params       156 (all options failed to solve)
- Number of params       163 (analysed in this file)


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
 - or-tools8


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 376369.70 | 
 | 01_compact.eprime | cplex | 414853.15 | 
 | 01_compact.eprime | kissat | 2371482.31 | 
 | 01_compact.eprime | or-tools1 | 342821.26 | 
 | 01_compact.eprime | or-tools8 | 305322.55 | 
 | 04_nochPrunedLevels_2.eprime | chuffed | 4825551.85 | 
 | 04_nochPrunedLevels_2.eprime | cplex | 4825488.94 | 
 | 04_nochPrunedLevels_2.eprime | kissat | 4825377.04 | 
 | 04_nochPrunedLevels_2.eprime | or-tools1 | 4825528.71 | 
 | 04_nochPrunedLevels_2.eprime | or-tools8 | 4825249.90 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | chuffed | 455128.13 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | cplex | 1896439.27 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | kissat | 2337896.13 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | or-tools1 | 342991.85 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | or-tools8 | 307127.60 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | chuffed | 4499060.34 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | cplex | 5620658.44 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | kissat | 4745101.48 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | or-tools1 | 4465464.19 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | or-tools8 | 4462848.52 | 
 | VBS | VBS | 46465.67 | 


## Some total runtime stats


 - Fastest option is ('01_compact.eprime', 'or-tools8'), total runtime 305322.55 seconds
 - Slowest option is ('06_chPrunedLevels_1_1_2_1.eprime', 'cplex'), total runtime 5620658.44 seconds
 - Slowest option took 18.41 times as long as SBS
 - VBS total runtime 46465.67 seconds
 - VBS as a percentage of SBS is 15.22%
