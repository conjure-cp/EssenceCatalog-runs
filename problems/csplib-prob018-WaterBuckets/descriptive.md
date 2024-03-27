

# Options


- Number of models 4
- Number of solvers 4
- Number of params 6
- Number of params        6 (completed)
- Number of params        5 (at least one timed out)
- Number of params        0 (all timed out)
- Number of params        6 (analysed in this file)


## Models


 - 01_compact.eprime
 - 02_compact_1_1_1.eprime
 - 05_nochAllLevels_2.eprime
 - 07_chAllLevels_1_1_1_1_1_1_1_1_1_1_1_1_1_1_2.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools1


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 14.31 | 
 | 01_compact.eprime | cplex | 26.54 | 
 | 01_compact.eprime | kissat | 180001.39 | 
 | 01_compact.eprime | or-tools1 | 19.83 | 
 | 02_compact_1_1_1.eprime | chuffed | 14.80 | 
 | 02_compact_1_1_1.eprime | cplex | 25.62 | 
 | 02_compact_1_1_1.eprime | kissat | 180001.27 | 
 | 02_compact_1_1_1.eprime | or-tools1 | 16.70 | 
 | 05_nochAllLevels_2.eprime | chuffed | 435.49 | 
 | 05_nochAllLevels_2.eprime | cplex | 108070.84 | 
 | 05_nochAllLevels_2.eprime | kissat | 180062.32 | 
 | 05_nochAllLevels_2.eprime | or-tools1 | 447.60 | 
 | 07_chAllLevels_1_1_1_1_1_1_1_1_1_1_1_1_1_1_2.eprime | chuffed | 48.53 | 
 | 07_chAllLevels_1_1_1_1_1_1_1_1_1_1_1_1_1_1_2.eprime | cplex | 54.46 | 
 | 07_chAllLevels_1_1_1_1_1_1_1_1_1_1_1_1_1_1_2.eprime | kissat | 180005.05 | 
 | 07_chAllLevels_1_1_1_1_1_1_1_1_1_1_1_1_1_1_2.eprime | or-tools1 | 133.01 | 
 | VBS | VBS | 13.94 | 


## Some total runtime stats


 - Fastest option is ('01_compact.eprime', 'chuffed'), total runtime 14.31 seconds
 - Slowest option is ('05_nochAllLevels_2.eprime', 'kissat'), total runtime 180062.32 seconds
 - Slowest option took 12582.97 times as long as SBS
 - VBS total runtime 13.94 seconds
 - VBS as a percentage of SBS is 97.41%
