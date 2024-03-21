

# Options

- Number of models 4
- Number of solvers 5
- Number of params 7414


## Models


 - 01_compact.eprime
 - 05_nochAllLevels_1_1_1_2.eprime
 - 05_nochAllLevels_1_1_2_1.eprime
 - 05_nochAllLevels_1_1_2_2.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools-1
 - or-tools-8


# Total runtime with each option


 | Model | Solver | Total time (seconds) | number of wins | 
 | -- | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 6676.94 | 0 | 
 | 05_nochAllLevels_1_1_1_2.eprime | chuffed | 24279419.49 | 0 | 
 | 05_nochAllLevels_1_1_2_1.eprime | chuffed | 23978178.02 | 0 | 
 | 05_nochAllLevels_1_1_2_2.eprime | chuffed | 111409255.47 | 0 | 
 | 01_compact.eprime | cplex | 148036937.58 | 0 | 
 | 05_nochAllLevels_1_1_1_2.eprime | cplex | 165931420.46 | 0 | 
 | 05_nochAllLevels_1_1_2_1.eprime | cplex | 165635943.33 | 0 | 
 | 05_nochAllLevels_1_1_2_2.eprime | cplex | 218147160.29 | 0 | 
 | 01_compact.eprime | kissat | 6733.54 | 1 | 
 | 05_nochAllLevels_1_1_1_2.eprime | kissat | 24278118.54 | 0 | 
 | 05_nochAllLevels_1_1_2_1.eprime | kissat | 23977540.33 | 0 | 
 | 05_nochAllLevels_1_1_2_2.eprime | kissat | 111373458.63 | 0 | 
 | 01_compact.eprime | or-tools-1 | 6785.20 | 2 | 
 | 05_nochAllLevels_1_1_1_2.eprime | or-tools-1 | 24278372.01 | 0 | 
 | 05_nochAllLevels_1_1_2_1.eprime | or-tools-1 | 23977519.07 | 0 | 
 | 05_nochAllLevels_1_1_2_2.eprime | or-tools-1 | 111444501.32 | 0 | 
 | 01_compact.eprime | or-tools-8 | 3897.78 | 7411 | 
 | 05_nochAllLevels_1_1_1_2.eprime | or-tools-8 | 24215545.71 | 0 | 
 | 05_nochAllLevels_1_1_2_1.eprime | or-tools-8 | 23932402.45 | 0 | 
 | 05_nochAllLevels_1_1_2_2.eprime | or-tools-8 | 111349447.46 | 0 | 
 | VBS | VBS | 3896.73 | 7414 | 


## Some total runtime stats

 - Fastest option is or-tools-8-01_compact.eprime, total runtime 3897.78
 - Slowest option is cplex-05_nochAllLevels_1_1_2_2.eprime, total runtime 218147160.29
 - VBS total runtime 3896.730000000018
 - VBS as a percentage of SBS is 99.97%
