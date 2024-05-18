

# Options


- Number of models         4
- Number of solvers        5
- Number of params        17
- Number of params        17 (completed)
- Number of params        17 (at least one option failed to solve)
- Number of params        10 (all options failed to solve)
- Number of params         7 (analysed in this file)


## Models


 - 01_compact.eprime
 - 04_nochPrunedLevels_1_2.eprime
 - 04_nochPrunedLevels_2_1.eprime
 - 04_nochPrunedLevels_2_2.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools1
 - or-tools8


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 72335.15 | 
 | 01_compact.eprime | cplex | 180007.42 | 
 | 01_compact.eprime | kissat | 252000.00 | 
 | 01_compact.eprime | or-tools1 | 108295.37 | 
 | 01_compact.eprime | or-tools8 | 72645.12 | 
 | 04_nochPrunedLevels_1_2.eprime | chuffed | 72294.22 | 
 | 04_nochPrunedLevels_1_2.eprime | cplex | 144018.30 | 
 | 04_nochPrunedLevels_1_2.eprime | kissat | 40141.71 | 
 | 04_nochPrunedLevels_1_2.eprime | or-tools1 | 74878.95 | 
 | 04_nochPrunedLevels_1_2.eprime | or-tools8 | 72407.77 | 
 | 04_nochPrunedLevels_2_1.eprime | chuffed | 39357.21 | 
 | 04_nochPrunedLevels_2_1.eprime | cplex | 180007.08 | 
 | 04_nochPrunedLevels_2_1.eprime | kissat | 39847.02 | 
 | 04_nochPrunedLevels_2_1.eprime | or-tools1 | 75796.41 | 
 | 04_nochPrunedLevels_2_1.eprime | or-tools8 | 72479.65 | 
 | 04_nochPrunedLevels_2_2.eprime | chuffed | 72184.37 | 
 | 04_nochPrunedLevels_2_2.eprime | cplex | 180007.63 | 
 | 04_nochPrunedLevels_2_2.eprime | kissat | 2210.75 | 
 | 04_nochPrunedLevels_2_2.eprime | or-tools1 | 75334.55 | 
 | 04_nochPrunedLevels_2_2.eprime | or-tools8 | 72346.78 | 
 | VBS | VBS | 2203.02 | 


## Some total runtime stats


 - Fastest option is ('04_nochPrunedLevels_2_2.eprime', 'kissat'), total runtime 2210.75 seconds
 - Slowest option is ('01_compact.eprime', 'kissat'), total runtime 252000.00 seconds
 - Slowest option took 113.99 times as long as SBS
 - VBS total runtime 2203.02 seconds
 - VBS as a percentage of SBS is 99.65%
