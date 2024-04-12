

# Options


- Number of models         4
- Number of solvers        4
- Number of params      6401
- Number of params      3004 (completed)
- Number of params      3004 (at least one option failed to solve)
- Number of params         0 (all options failed to solve)
- Number of params      3004 (analysed in this file)


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
 | 01_compact.eprime | chuffed | 1581007.29 | 
 | 01_compact.eprime | cplex | 107280163.93 | 
 | 01_compact.eprime | kissat | 349304.11 | 
 | 01_compact.eprime | or-tools1 | 37114855.50 | 
 | 05_nochAllLevels_2.eprime | chuffed | 107682150.43 | 
 | 05_nochAllLevels_2.eprime | cplex | 108144000.00 | 
 | 05_nochAllLevels_2.eprime | kissat | 107967307.17 | 
 | 05_nochAllLevels_2.eprime | or-tools1 | 107579629.12 | 
 | 06_chPrunedLevels.eprime | chuffed | 1609157.77 | 
 | 06_chPrunedLevels.eprime | cplex | 107244158.71 | 
 | 06_chPrunedLevels.eprime | kissat | 353763.63 | 
 | 06_chPrunedLevels.eprime | or-tools1 | 36759360.44 | 
 | 07_chAllLevels_1_1_2.eprime | chuffed | 19781436.12 | 
 | 07_chAllLevels_1_1_2.eprime | cplex | 108108010.79 | 
 | 07_chAllLevels_1_1_2.eprime | kissat | 32066027.91 | 
 | 07_chAllLevels_1_1_2.eprime | or-tools1 | 55145942.71 | 
 | VBS | VBS | 90553.20 | 


## Some total runtime stats


 - Fastest option is ('01_compact.eprime', 'kissat'), total runtime 349304.11 seconds
 - Slowest option is ('05_nochAllLevels_2.eprime', 'cplex'), total runtime 108144000.00 seconds
 - Slowest option took 309.60 times as long as SBS
 - VBS total runtime 90553.20 seconds
 - VBS as a percentage of SBS is 25.92%
