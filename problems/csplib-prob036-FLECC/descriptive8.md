

# Options


- Number of models         4
- Number of solvers        5
- Number of params      7206
- Number of params      7206 (completed)
- Number of params      7181 (at least one option failed to solve)
- Number of params         0 (all options failed to solve)
- Number of params      7206 (analysed in this file)


## Models


 - 01_compact.eprime
 - 05_nochAllLevels_2.eprime
 - 06_chPrunedLevels.eprime
 - 07_chAllLevels_1_1_2.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools1
 - or-tools8


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 4717305.54 | 
 | 01_compact.eprime | cplex | 256176535.32 | 
 | 01_compact.eprime | kissat | 840876.78 | 
 | 01_compact.eprime | or-tools1 | 88956805.75 | 
 | 01_compact.eprime | or-tools8 | 109842222.58 | 
 | 05_nochAllLevels_2.eprime | chuffed | 257132108.73 | 
 | 05_nochAllLevels_2.eprime | cplex | 258409664.71 | 
 | 05_nochAllLevels_2.eprime | kissat | 257948942.25 | 
 | 05_nochAllLevels_2.eprime | or-tools1 | 257029529.39 | 
 | 05_nochAllLevels_2.eprime | or-tools8 | 256910618.27 | 
 | 06_chPrunedLevels.eprime | chuffed | 4739616.54 | 
 | 06_chPrunedLevels.eprime | cplex | 255996529.33 | 
 | 06_chPrunedLevels.eprime | kissat | 884512.88 | 
 | 06_chPrunedLevels.eprime | or-tools1 | 87636150.75 | 
 | 06_chPrunedLevels.eprime | or-tools8 | 109842688.34 | 
 | 07_chAllLevels_1_1_2.eprime | chuffed | 48349315.32 | 
 | 07_chAllLevels_1_1_2.eprime | cplex | 258444203.54 | 
 | 07_chAllLevels_1_1_2.eprime | kissat | 77346944.03 | 
 | 07_chAllLevels_1_1_2.eprime | or-tools1 | 131855516.90 | 
 | 07_chAllLevels_1_1_2.eprime | or-tools8 | 152096144.87 | 
 | VBS | VBS | 219740.32 | 


## Some total runtime stats


 - Fastest option is ('01_compact.eprime', 'kissat'), total runtime 840876.78 seconds
 - Slowest option is ('07_chAllLevels_1_1_2.eprime', 'cplex'), total runtime 258444203.54 seconds
 - Slowest option took 307.35 times as long as SBS
 - VBS total runtime 219740.32 seconds
 - VBS as a percentage of SBS is 26.13%
