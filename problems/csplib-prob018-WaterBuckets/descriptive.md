

# Options


- Number of models 4
- Number of solvers 4
- Number of params 6
- Number of params (completed) 2
- Number of params (all timed out) 0


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
 | 01_compact.eprime | chuffed | 11.45 | 
 | 01_compact.eprime | cplex | 20.51 | 
 | 01_compact.eprime | kissat | 108001.39 | 
 | 01_compact.eprime | or-tools1 | 14.06 | 
 | 02_compact_1_1_1.eprime | chuffed | 10.88 | 
 | 02_compact_1_1_1.eprime | cplex | 19.93 | 
 | 02_compact_1_1_1.eprime | kissat | 144001.27 | 
 | 02_compact_1_1_1.eprime | or-tools1 | 16.70 | 
 | 05_nochAllLevels_2.eprime | chuffed | 349.28 | 
 | 05_nochAllLevels_2.eprime | cplex | 108070.84 | 
 | 05_nochAllLevels_2.eprime | kissat | 144062.32 | 
 | 05_nochAllLevels_2.eprime | or-tools1 | 323.53 | 
 | 07_chAllLevels_1_1_1_1_1_1_1_1_1_1_1_1_1_1_2.eprime | chuffed | 38.45 | 
 | 07_chAllLevels_1_1_1_1_1_1_1_1_1_1_1_1_1_1_2.eprime | cplex | 30.01 | 
 | 07_chAllLevels_1_1_1_1_1_1_1_1_1_1_1_1_1_1_2.eprime | kissat | 144005.05 | 
 | 07_chAllLevels_1_1_1_1_1_1_1_1_1_1_1_1_1_1_2.eprime | or-tools1 | 111.84 | 
 | VBS | VBS | 3.72 | 


## Some total runtime stats


 - Fastest option is ('02_compact_1_1_1.eprime', 'chuffed'), total runtime 10.88
 - Slowest option is ('05_nochAllLevels_2.eprime', 'kissat'), total runtime 144062.32
 - VBS total runtime 3.72
 - VBS as a percentage of SBS is 34.19%
