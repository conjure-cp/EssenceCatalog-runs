

# Options


- Number of models         4
- Number of solvers        4
- Number of params        17
- Number of params        17 (completed)
- Number of params        17 (at least one option failed to solve)
- Number of params         8 (all options failed to solve)
- Number of params         9 (analysed in this file)


## Models


 - 01_compact.eprime
 - 04_nochPrunedLevels_2.eprime
 - 06_chPrunedLevels_1_1_1_1_1_1_1_1.eprime
 - 06_chPrunedLevels_1_1_1_1_1_1_1_2.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools1


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 6540.13 | 
 | 01_compact.eprime | cplex | 288014.90 | 
 | 01_compact.eprime | kissat | 75564.64 | 
 | 01_compact.eprime | or-tools1 | 7578.66 | 
 | 04_nochPrunedLevels_2.eprime | chuffed | 39960.17 | 
 | 04_nochPrunedLevels_2.eprime | cplex | 288014.15 | 
 | 04_nochPrunedLevels_2.eprime | kissat | 4751.51 | 
 | 04_nochPrunedLevels_2.eprime | or-tools1 | 7919.74 | 
 | 06_chPrunedLevels_1_1_1_1_1_1_1_1.eprime | chuffed | 6548.65 | 
 | 06_chPrunedLevels_1_1_1_1_1_1_1_1.eprime | cplex | 324000.00 | 
 | 06_chPrunedLevels_1_1_1_1_1_1_1_1.eprime | kissat | 75643.28 | 
 | 06_chPrunedLevels_1_1_1_1_1_1_1_1.eprime | or-tools1 | 40481.39 | 
 | 06_chPrunedLevels_1_1_1_1_1_1_1_2.eprime | chuffed | 40850.48 | 
 | 06_chPrunedLevels_1_1_1_1_1_1_1_2.eprime | cplex | 324000.00 | 
 | 06_chPrunedLevels_1_1_1_1_1_1_1_2.eprime | kissat | 76361.64 | 
 | 06_chPrunedLevels_1_1_1_1_1_1_1_2.eprime | or-tools1 | 74997.87 | 
 | VBS | VBS | 4654.45 | 


## Some total runtime stats


 - Fastest option is ('04_nochPrunedLevels_2.eprime', 'kissat'), total runtime 4751.51 seconds
 - Slowest option is ('06_chPrunedLevels_1_1_1_1_1_1_1_2.eprime', 'cplex'), total runtime 324000.00 seconds
 - Slowest option took 68.19 times as long as SBS
 - VBS total runtime 4654.45 seconds
 - VBS as a percentage of SBS is 97.96%
