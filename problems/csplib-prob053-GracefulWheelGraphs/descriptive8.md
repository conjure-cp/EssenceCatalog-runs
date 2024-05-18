

# Options


- Number of models         4
- Number of solvers        5
- Number of params        17
- Number of params        17 (completed)
- Number of params         7 (at least one option failed to solve)
- Number of params         0 (all options failed to solve)
- Number of params        17 (analysed in this file)


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
 | 01_compact.eprime | chuffed | 9.60 | 
 | 01_compact.eprime | cplex | 53.61 | 
 | 01_compact.eprime | kissat | 93.97 | 
 | 01_compact.eprime | or-tools1 | 48.77 | 
 | 01_compact.eprime | or-tools8 | 9.38 | 
 | 05_nochAllLevels_1_2.eprime | chuffed | 730.10 | 
 | 05_nochAllLevels_1_2.eprime | cplex | 1143.20 | 
 | 05_nochAllLevels_1_2.eprime | kissat | 5086.00 | 
 | 05_nochAllLevels_1_2.eprime | or-tools1 | 524.15 | 
 | 05_nochAllLevels_1_2.eprime | or-tools8 | 533.80 | 
 | 05_nochAllLevels_2_1.eprime | chuffed | 43614.12 | 
 | 05_nochAllLevels_2_1.eprime | cplex | 216644.60 | 
 | 05_nochAllLevels_2_1.eprime | kissat | 41060.36 | 
 | 05_nochAllLevels_2_1.eprime | or-tools1 | 112130.74 | 
 | 05_nochAllLevels_2_1.eprime | or-tools8 | 1324.65 | 
 | 05_nochAllLevels_2_2.eprime | chuffed | 217028.32 | 
 | 05_nochAllLevels_2_2.eprime | cplex | 252369.88 | 
 | 05_nochAllLevels_2_2.eprime | kissat | 217958.98 | 
 | 05_nochAllLevels_2_2.eprime | or-tools1 | 216898.58 | 
 | 05_nochAllLevels_2_2.eprime | or-tools8 | 216408.64 | 
 | VBS | VBS | 6.23 | 


## Some total runtime stats


 - Fastest option is ('01_compact.eprime', 'or-tools8'), total runtime 9.38 seconds
 - Slowest option is ('05_nochAllLevels_2_2.eprime', 'cplex'), total runtime 252369.88 seconds
 - Slowest option took 26905.10 times as long as SBS
 - VBS total runtime 6.23 seconds
 - VBS as a percentage of SBS is 66.42%
