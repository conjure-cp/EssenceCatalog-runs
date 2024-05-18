

# Options


- Number of models         4
- Number of solvers        5
- Number of params         7
- Number of params         7 (completed)
- Number of params         7 (at least one option failed to solve)
- Number of params         0 (all options failed to solve)
- Number of params         7 (analysed in this file)


## Models


 - 01_compact.eprime
 - 05_nochAllLevels_1_2.eprime
 - 05_nochAllLevels_2_1.eprime
 - 05_nochAllLevels_2_2.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools1
 - or-tools8


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 2.56 | 
 | 01_compact.eprime | cplex | 19.12 | 
 | 01_compact.eprime | kissat | 36457.24 | 
 | 01_compact.eprime | or-tools1 | 8.63 | 
 | 01_compact.eprime | or-tools8 | 1.18 | 
 | 05_nochAllLevels_1_2.eprime | chuffed | 180032.60 | 
 | 05_nochAllLevels_1_2.eprime | cplex | 180038.47 | 
 | 05_nochAllLevels_1_2.eprime | kissat | 180158.67 | 
 | 05_nochAllLevels_1_2.eprime | or-tools1 | 180027.09 | 
 | 05_nochAllLevels_1_2.eprime | or-tools8 | 180020.36 | 
 | 05_nochAllLevels_2_1.eprime | chuffed | 296.47 | 
 | 05_nochAllLevels_2_1.eprime | cplex | 130.26 | 
 | 05_nochAllLevels_2_1.eprime | kissat | 252000.00 | 
 | 05_nochAllLevels_2_1.eprime | or-tools1 | 122.43 | 
 | 05_nochAllLevels_2_1.eprime | or-tools8 | 105.87 | 
 | 05_nochAllLevels_2_2.eprime | chuffed | 180352.31 | 
 | 05_nochAllLevels_2_2.eprime | cplex | 180182.46 | 
 | 05_nochAllLevels_2_2.eprime | kissat | 252000.00 | 
 | 05_nochAllLevels_2_2.eprime | or-tools1 | 180182.53 | 
 | 05_nochAllLevels_2_2.eprime | or-tools8 | 180175.61 | 
 | VBS | VBS | 1.18 | 


## Some total runtime stats


 - Fastest option is ('01_compact.eprime', 'or-tools8'), total runtime 1.18 seconds
 - Slowest option is ('05_nochAllLevels_2_2.eprime', 'kissat'), total runtime 252000.00 seconds
 - Slowest option took 213559.32 times as long as SBS
 - VBS total runtime 1.18 seconds
 - VBS as a percentage of SBS is 100.00%
