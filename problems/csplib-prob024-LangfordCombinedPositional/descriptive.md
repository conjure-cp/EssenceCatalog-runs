

# Options


- Number of models         4
- Number of solvers        4
- Number of params        80
- Number of params        80 (completed)
- Number of params        63 (at least one option failed to solve)
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
 | 01_compact.eprime | chuffed | 297289.33 | 
 | 01_compact.eprime | cplex | 144263.23 | 
 | 01_compact.eprime | kissat | 130.52 | 
 | 01_compact.eprime | or-tools1 | 192913.32 | 
 | 05_nochAllLevels_2.eprime | chuffed | 2234159.99 | 
 | 05_nochAllLevels_2.eprime | cplex | 2269015.60 | 
 | 05_nochAllLevels_2.eprime | kissat | 2234574.50 | 
 | 05_nochAllLevels_2.eprime | or-tools1 | 2234684.18 | 
 | 07_chAllLevels_1_1_1_1_1_1_2.eprime | chuffed | 1875591.52 | 
 | 07_chAllLevels_1_1_1_1_1_1_2.eprime | cplex | 1910029.24 | 
 | 07_chAllLevels_1_1_1_1_1_1_2.eprime | kissat | 1910428.73 | 
 | 07_chAllLevels_1_1_1_1_1_1_2.eprime | or-tools1 | 1875920.20 | 
 | 07_chAllLevels_1_1_1_1_1_2_1.eprime | chuffed | 1875914.28 | 
 | 07_chAllLevels_1_1_1_1_1_2_1.eprime | cplex | 1910704.41 | 
 | 07_chAllLevels_1_1_1_1_1_2_1.eprime | kissat | 1910803.53 | 
 | 07_chAllLevels_1_1_1_1_1_2_1.eprime | or-tools1 | 1876488.03 | 
 | VBS | VBS | 129.12 | 


## Some total runtime stats


 - Fastest option is ('01_compact.eprime', 'kissat'), total runtime 130.52 seconds
 - Slowest option is ('05_nochAllLevels_2.eprime', 'cplex'), total runtime 2269015.60 seconds
 - Slowest option took 17384.43 times as long as SBS
 - VBS total runtime 129.12 seconds
 - VBS as a percentage of SBS is 98.93%
