

# Options


- Number of models         4
- Number of solvers        4
- Number of params      2832
- Number of params         5 (completed)
- Number of params         5 (at least one option failed to solve)
- Number of params         0 (all options failed to solve)
- Number of params         5 (analysed in this file)


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
 | 01_compact.eprime | chuffed | 76.75 | 
 | 01_compact.eprime | cplex | 180000.00 | 
 | 01_compact.eprime | kissat | 345.00 | 
 | 01_compact.eprime | or-tools1 | 949.77 | 
 | 05_nochAllLevels_2.eprime | chuffed | 180000.00 | 
 | 05_nochAllLevels_2.eprime | cplex | 180000.00 | 
 | 05_nochAllLevels_2.eprime | kissat | 180000.00 | 
 | 05_nochAllLevels_2.eprime | or-tools1 | 180000.00 | 
 | 06_chPrunedLevels.eprime | chuffed | 74.70 | 
 | 06_chPrunedLevels.eprime | cplex | 180000.00 | 
 | 06_chPrunedLevels.eprime | kissat | 318.83 | 
 | 06_chPrunedLevels.eprime | or-tools1 | 819.67 | 
 | 07_chAllLevels_1_1_2.eprime | chuffed | 523.69 | 
 | 07_chAllLevels_1_1_2.eprime | cplex | 180000.00 | 
 | 07_chAllLevels_1_1_2.eprime | kissat | 2523.55 | 
 | 07_chAllLevels_1_1_2.eprime | or-tools1 | 1740.85 | 
 | VBS | VBS | 72.81 | 


## Some total runtime stats


 - Fastest option is ('06_chPrunedLevels.eprime', 'chuffed'), total runtime 74.70 seconds
 - Slowest option is ('07_chAllLevels_1_1_2.eprime', 'cplex'), total runtime 180000.00 seconds
 - Slowest option took 2409.64 times as long as SBS
 - VBS total runtime 72.81 seconds
 - VBS as a percentage of SBS is 97.47%
