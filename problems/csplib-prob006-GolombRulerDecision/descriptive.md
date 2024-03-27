

# Options


- Number of models         4
- Number of solvers        4
- Number of params       319
- Number of params       319 (completed)
- Number of params       313 (at least one option failed to solve)
- Number of params       157 (all options failed to solve)
- Number of params       162 (analysed in this file)


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
 | 01_compact.eprime | chuffed | 340331.58 | 
 | 01_compact.eprime | cplex | 378789.61 | 
 | 01_compact.eprime | kissat | 2335435.96 | 
 | 01_compact.eprime | or-tools1 | 306772.58 | 
 | 04_nochPrunedLevels_2.eprime | chuffed | 4789537.26 | 
 | 04_nochPrunedLevels_2.eprime | cplex | 4789474.78 | 
 | 04_nochPrunedLevels_2.eprime | kissat | 4789363.85 | 
 | 04_nochPrunedLevels_2.eprime | or-tools1 | 4789514.58 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | chuffed | 419079.56 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | cplex | 1860406.48 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | kissat | 2301846.11 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | or-tools1 | 306936.27 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | chuffed | 4462969.71 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | cplex | 5584512.20 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | kissat | 4708946.61 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | or-tools1 | 4429398.04 | 
 | VBS | VBS | 45068.09 | 


## Some total runtime stats


 - Fastest option is ('01_compact.eprime', 'or-tools1'), total runtime 306772.58 seconds
 - Slowest option is ('06_chPrunedLevels_1_1_2_1.eprime', 'cplex'), total runtime 5584512.20 seconds
 - Slowest option took 18.20 times as long as SBS
 - VBS total runtime 45068.09 seconds
 - VBS as a percentage of SBS is 14.69%
