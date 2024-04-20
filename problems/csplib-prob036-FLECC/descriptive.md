

# Options


- Number of models         4
- Number of solvers        4
- Number of params      6946
- Number of params      5909 (completed)
- Number of params      5907 (at least one option failed to solve)
- Number of params         0 (all options failed to solve)
- Number of params      5909 (analysed in this file)


## Models


 - 01_compact.eprime
 - 05_nochAllLevels_2.eprime
 - 06_chPrunedLevels.eprime
 - 07_chAllLevels_1_1_2.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools1


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 3486436.32 | 
 | 01_compact.eprime | cplex | 210744377.48 | 
 | 01_compact.eprime | kissat | 702895.64 | 
 | 01_compact.eprime | or-tools1 | 73838518.65 | 
 | 05_nochAllLevels_2.eprime | chuffed | 211621538.99 | 
 | 05_nochAllLevels_2.eprime | cplex | 212616519.46 | 
 | 05_nochAllLevels_2.eprime | kissat | 212263395.70 | 
 | 05_nochAllLevels_2.eprime | or-tools1 | 211519324.39 | 
 | 06_chPrunedLevels.eprime | chuffed | 3510809.14 | 
 | 06_chPrunedLevels.eprime | cplex | 210600375.91 | 
 | 06_chPrunedLevels.eprime | kissat | 744734.50 | 
 | 06_chPrunedLevels.eprime | or-tools1 | 72804950.07 | 
 | 07_chAllLevels_1_1_2.eprime | chuffed | 39799348.44 | 
 | 07_chAllLevels_1_1_2.eprime | cplex | 212580040.76 | 
 | 07_chAllLevels_1_1_2.eprime | kissat | 63950203.67 | 
 | 07_chAllLevels_1_1_2.eprime | or-tools1 | 108604417.08 | 
 | VBS | VBS | 179668.83 | 


## Some total runtime stats


 - Fastest option is ('01_compact.eprime', 'kissat'), total runtime 702895.64 seconds
 - Slowest option is ('05_nochAllLevels_2.eprime', 'cplex'), total runtime 212616519.46 seconds
 - Slowest option took 302.49 times as long as SBS
 - VBS total runtime 179668.83 seconds
 - VBS as a percentage of SBS is 25.56%
