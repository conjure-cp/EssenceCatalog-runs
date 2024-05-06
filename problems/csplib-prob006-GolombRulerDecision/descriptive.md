

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
 | 01_compact.eprime | chuffed | 340369.70 | 
 | 01_compact.eprime | cplex | 378853.15 | 
 | 01_compact.eprime | kissat | 2335482.31 | 
 | 01_compact.eprime | or-tools1 | 306821.26 | 
 | 04_nochPrunedLevels_2.eprime | chuffed | 4789551.85 | 
 | 04_nochPrunedLevels_2.eprime | cplex | 4789488.94 | 
 | 04_nochPrunedLevels_2.eprime | kissat | 4789377.04 | 
 | 04_nochPrunedLevels_2.eprime | or-tools1 | 4789528.71 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | chuffed | 419128.13 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | cplex | 1860439.27 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | kissat | 2301896.13 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | or-tools1 | 306991.85 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | chuffed | 4463060.34 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | cplex | 5584658.44 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | kissat | 4709101.48 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | or-tools1 | 4429464.19 | 
 | VBS | VBS | 45081.27 | 


## Some total runtime stats


 - Fastest option is ('01_compact.eprime', 'or-tools1'), total runtime 306821.26 seconds
 - Slowest option is ('06_chPrunedLevels_1_1_2_1.eprime', 'cplex'), total runtime 5584658.44 seconds
 - Slowest option took 18.20 times as long as SBS
 - VBS total runtime 45081.27 seconds
 - VBS as a percentage of SBS is 14.69%
