

# Options


- Number of models         4
- Number of solvers        4
- Number of params      3113
- Number of params      3099 (completed)
- Number of params      3092 (at least one option failed to solve)
- Number of params         1 (all options failed to solve)
- Number of params      3098 (analysed in this file)


## Models


 - 01_compact.eprime
 - 05_nochAllLevels_2.eprime
 - 07_chAllLevels_1_1_1_2.eprime
 - 07_chAllLevels_1_1_2_1.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools1


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 9480451.40 | 
 | 01_compact.eprime | cplex | 69496673.78 | 
 | 01_compact.eprime | kissat | 465982.40 | 
 | 01_compact.eprime | or-tools1 | 59362132.24 | 
 | 05_nochAllLevels_2.eprime | chuffed | 104229607.89 | 
 | 05_nochAllLevels_2.eprime | cplex | 109261403.65 | 
 | 05_nochAllLevels_2.eprime | kissat | 90586300.00 | 
 | 05_nochAllLevels_2.eprime | or-tools1 | 110594467.49 | 
 | 07_chAllLevels_1_1_1_2.eprime | chuffed | 91581399.51 | 
 | 07_chAllLevels_1_1_1_2.eprime | cplex | 111060117.37 | 
 | 07_chAllLevels_1_1_1_2.eprime | kissat | 83200771.79 | 
 | 07_chAllLevels_1_1_1_2.eprime | or-tools1 | 95160454.97 | 
 | 07_chAllLevels_1_1_2_1.eprime | chuffed | 103528776.69 | 
 | 07_chAllLevels_1_1_2_1.eprime | cplex | 111132113.19 | 
 | 07_chAllLevels_1_1_2_1.eprime | kissat | 95039558.44 | 
 | 07_chAllLevels_1_1_2_1.eprime | or-tools1 | 101157613.30 | 
 | VBS | VBS | 201245.53 | 


## Some total runtime stats


 - Fastest option is ('01_compact.eprime', 'kissat'), total runtime 465982.40 seconds
 - Slowest option is ('07_chAllLevels_1_1_2_1.eprime', 'cplex'), total runtime 111132113.19 seconds
 - Slowest option took 238.49 times as long as SBS
 - VBS total runtime 201245.53 seconds
 - VBS as a percentage of SBS is 43.19%
