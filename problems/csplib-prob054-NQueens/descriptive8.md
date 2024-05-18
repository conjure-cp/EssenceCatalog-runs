

# Options


- Number of models         4
- Number of solvers        5
- Number of params        13
- Number of params        13 (completed)
- Number of params        10 (at least one option failed to solve)
- Number of params         7 (all options failed to solve)
- Number of params         6 (analysed in this file)


## Models


 - 01_compact.eprime
 - 05_nochAllLevels_2.eprime
 - 07_chAllLevels_1_1_2.eprime
 - 07_chAllLevels_1_2_1.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools1
 - or-tools8


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 2258.85 | 
 | 01_compact.eprime | cplex | 36020.90 | 
 | 01_compact.eprime | kissat | 36106.41 | 
 | 01_compact.eprime | or-tools1 | 507.72 | 
 | 01_compact.eprime | or-tools8 | 95.64 | 
 | 05_nochAllLevels_2.eprime | chuffed | 73150.03 | 
 | 05_nochAllLevels_2.eprime | cplex | 108009.05 | 
 | 05_nochAllLevels_2.eprime | kissat | 108016.59 | 
 | 05_nochAllLevels_2.eprime | or-tools1 | 73238.00 | 
 | 05_nochAllLevels_2.eprime | or-tools8 | 72072.94 | 
 | 07_chAllLevels_1_1_2.eprime | chuffed | 73698.17 | 
 | 07_chAllLevels_1_1_2.eprime | cplex | 108007.66 | 
 | 07_chAllLevels_1_1_2.eprime | kissat | 73701.70 | 
 | 07_chAllLevels_1_1_2.eprime | or-tools1 | 73756.31 | 
 | 07_chAllLevels_1_1_2.eprime | or-tools8 | 72064.29 | 
 | 07_chAllLevels_1_2_1.eprime | chuffed | 73688.35 | 
 | 07_chAllLevels_1_2_1.eprime | cplex | 108007.42 | 
 | 07_chAllLevels_1_2_1.eprime | kissat | 73769.85 | 
 | 07_chAllLevels_1_2_1.eprime | or-tools1 | 73649.26 | 
 | 07_chAllLevels_1_2_1.eprime | or-tools8 | 72062.55 | 
 | VBS | VBS | 95.64 | 


## Some total runtime stats


 - Fastest option is ('01_compact.eprime', 'or-tools8'), total runtime 95.64 seconds
 - Slowest option is ('05_nochAllLevels_2.eprime', 'kissat'), total runtime 108016.59 seconds
 - Slowest option took 1129.41 times as long as SBS
 - VBS total runtime 95.64 seconds
 - VBS as a percentage of SBS is 100.00%
