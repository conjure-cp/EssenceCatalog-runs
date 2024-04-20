

# Options


- Number of models         4
- Number of solvers        4
- Number of params      7192
- Number of params      7192 (completed)
- Number of params      7178 (at least one option failed to solve)
- Number of params         0 (all options failed to solve)
- Number of params      7192 (analysed in this file)


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


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 4717282.49 | 
 | 01_compact.eprime | cplex | 256176476.43 | 
 | 01_compact.eprime | kissat | 840840.96 | 
 | 01_compact.eprime | or-tools1 | 88956650.46 | 
 | 05_nochAllLevels_2.eprime | chuffed | 257131280.82 | 
 | 05_nochAllLevels_2.eprime | cplex | 258337079.33 | 
 | 05_nochAllLevels_2.eprime | kissat | 257948111.90 | 
 | 05_nochAllLevels_2.eprime | or-tools1 | 257028515.63 | 
 | 06_chPrunedLevels.eprime | chuffed | 4739596.73 | 
 | 06_chPrunedLevels.eprime | cplex | 255996473.97 | 
 | 06_chPrunedLevels.eprime | kissat | 884481.80 | 
 | 06_chPrunedLevels.eprime | or-tools1 | 87636002.97 | 
 | 07_chAllLevels_1_1_2.eprime | chuffed | 48349203.52 | 
 | 07_chAllLevels_1_1_2.eprime | cplex | 258336121.41 | 
 | 07_chAllLevels_1_1_2.eprime | kissat | 77416328.15 | 
 | 07_chAllLevels_1_1_2.eprime | or-tools1 | 131855171.78 | 
 | VBS | VBS | 221280.63 | 


## Some total runtime stats


 - Fastest option is ('01_compact.eprime', 'kissat'), total runtime 840840.96 seconds
 - Slowest option is ('05_nochAllLevels_2.eprime', 'cplex'), total runtime 258337079.33 seconds
 - Slowest option took 307.24 times as long as SBS
 - VBS total runtime 221280.63 seconds
 - VBS as a percentage of SBS is 26.32%
