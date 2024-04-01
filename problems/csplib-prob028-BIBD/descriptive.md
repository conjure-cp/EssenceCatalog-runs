

# Options


- Number of models         4
- Number of solvers        4
- Number of params       733
- Number of params       733 (completed)
- Number of params       733 (at least one option failed to solve)
- Number of params       473 (all options failed to solve)
- Number of params       260 (analysed in this file)


## Models


 - 01_compact.eprime
 - 03_sparse.eprime
 - 07_chAllLevels_1_1_1_1_1_1_1_1_2.eprime
 - 07_chAllLevels_1_1_1_1_1_1_1_2_1.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools1


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 64278.77 | 
 | 01_compact.eprime | cplex | 1987612.10 | 
 | 01_compact.eprime | kissat | 14121.19 | 
 | 01_compact.eprime | or-tools1 | 3089375.63 | 
 | 03_sparse.eprime | chuffed | 9360000.00 | 
 | 03_sparse.eprime | cplex | 9360000.00 | 
 | 03_sparse.eprime | kissat | 9360000.00 | 
 | 03_sparse.eprime | or-tools1 | 9360000.00 | 
 | 07_chAllLevels_1_1_1_1_1_1_1_1_2.eprime | chuffed | 9289828.89 | 
 | 07_chAllLevels_1_1_1_1_1_1_1_1_2.eprime | cplex | 9360000.00 | 
 | 07_chAllLevels_1_1_1_1_1_1_1_1_2.eprime | kissat | 8841703.32 | 
 | 07_chAllLevels_1_1_1_1_1_1_1_1_2.eprime | or-tools1 | 9293600.16 | 
 | 07_chAllLevels_1_1_1_1_1_1_1_2_1.eprime | chuffed | 9360000.00 | 
 | 07_chAllLevels_1_1_1_1_1_1_1_2_1.eprime | cplex | 9360000.00 | 
 | 07_chAllLevels_1_1_1_1_1_1_1_2_1.eprime | kissat | 9360000.00 | 
 | 07_chAllLevels_1_1_1_1_1_1_1_2_1.eprime | or-tools1 | 9360000.00 | 
 | VBS | VBS | 11928.99 | 


## Some total runtime stats


 - Fastest option is ('01_compact.eprime', 'kissat'), total runtime 14121.19 seconds
 - Slowest option is ('07_chAllLevels_1_1_1_1_1_1_1_2_1.eprime', 'or-tools1'), total runtime 9360000.00 seconds
 - Slowest option took 662.83 times as long as SBS
 - VBS total runtime 11928.99 seconds
 - VBS as a percentage of SBS is 84.48%
