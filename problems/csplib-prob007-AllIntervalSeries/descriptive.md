

# Options


- Number of models 4
- Number of solvers 4
- Number of params 10
- Number of params (completed) 10
- Number of params (all timed out) 0


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


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 1.39 | 
 | 01_compact.eprime | cplex | 3.55 | 
 | 01_compact.eprime | kissat | 1.63 | 
 | 01_compact.eprime | or-tools1 | 1.85 | 
 | 05_nochAllLevels_1_2.eprime | chuffed | 3.57 | 
 | 05_nochAllLevels_1_2.eprime | cplex | 5.96 | 
 | 05_nochAllLevels_1_2.eprime | kissat | 4.24 | 
 | 05_nochAllLevels_1_2.eprime | or-tools1 | 4.12 | 
 | 05_nochAllLevels_2_1.eprime | chuffed | 3.34 | 
 | 05_nochAllLevels_2_1.eprime | cplex | 5.96 | 
 | 05_nochAllLevels_2_1.eprime | kissat | 3.35 | 
 | 05_nochAllLevels_2_1.eprime | or-tools1 | 4.07 | 
 | 05_nochAllLevels_2_2.eprime | chuffed | 8.37 | 
 | 05_nochAllLevels_2_2.eprime | cplex | 11.83 | 
 | 05_nochAllLevels_2_2.eprime | kissat | 8.79 | 
 | 05_nochAllLevels_2_2.eprime | or-tools1 | 8.91 | 
 | VBS | VBS | 1.38 | 


## Some total runtime stats


 - Fastest option is ('01_compact.eprime', 'chuffed'), total runtime 1.39
 - Slowest option is ('05_nochAllLevels_2_2.eprime', 'cplex'), total runtime 11.83
 - VBS total runtime 1.38
 - VBS as a percentage of SBS is 99.28%
