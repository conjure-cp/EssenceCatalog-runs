

# Options


- Number of models         4
- Number of solvers        4
- Number of params        80
- Number of params        80 (completed)
- Number of params        64 (at least one option failed to solve)
- Number of params         0 (all options failed to solve)
- Number of params        80 (analysed in this file)


## Models


 - 01_compact.eprime
 - 05_nochAllLevels_2.eprime
 - 07_chAllLevels_1_1_1_1_1_1_2.eprime
 - 07_chAllLevels_1_1_1_1_1_2_1.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools1


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 222761.40 | 
 | 01_compact.eprime | cplex | 108268.12 | 
 | 01_compact.eprime | kissat | 130.51 | 
 | 01_compact.eprime | or-tools1 | 227356.72 | 
 | 05_nochAllLevels_2.eprime | chuffed | 2269987.57 | 
 | 05_nochAllLevels_2.eprime | cplex | 2268970.54 | 
 | 05_nochAllLevels_2.eprime | kissat | 2234638.73 | 
 | 05_nochAllLevels_2.eprime | or-tools1 | 2234266.37 | 
 | 07_chAllLevels_1_1_1_1_1_1_2.eprime | chuffed | 1875773.24 | 
 | 07_chAllLevels_1_1_1_1_1_1_2.eprime | cplex | 1909983.08 | 
 | 07_chAllLevels_1_1_1_1_1_1_2.eprime | kissat | 1910325.70 | 
 | 07_chAllLevels_1_1_1_1_1_1_2.eprime | or-tools1 | 1876483.16 | 
 | 07_chAllLevels_1_1_1_1_1_2_1.eprime | chuffed | 1876121.58 | 
 | 07_chAllLevels_1_1_1_1_1_2_1.eprime | cplex | 1910183.99 | 
 | 07_chAllLevels_1_1_1_1_1_2_1.eprime | kissat | 1910612.09 | 
 | 07_chAllLevels_1_1_1_1_1_2_1.eprime | or-tools1 | 1876853.10 | 
 | VBS | VBS | 129.56 | 


## Some total runtime stats


 - Fastest option is ('01_compact.eprime', 'kissat'), total runtime 130.51 seconds
 - Slowest option is ('05_nochAllLevels_2.eprime', 'chuffed'), total runtime 2269987.57 seconds
 - Slowest option took 17393.21 times as long as SBS
 - VBS total runtime 129.56 seconds
 - VBS as a percentage of SBS is 99.27%
