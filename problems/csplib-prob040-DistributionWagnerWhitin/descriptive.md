

# Options


- Number of models         2
- Number of solvers        3
- Number of params         1
- Number of params         1 (completed)
- Number of params         1 (at least one option failed to solve)
- Number of params         0 (all options failed to solve)
- Number of params         1 (analysed in this file)


## Models


 - 02_compact_1_1.eprime
 - 04_nochPrunedLevels_2.eprime


## Solvers


 - chuffed
 - cplex
 - or-tools1


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 02_compact_1_1.eprime | or-tools1 | 19.13 | 
 | 04_nochPrunedLevels_2.eprime | chuffed | 36000.00 | 
 | 04_nochPrunedLevels_2.eprime | cplex | 7.17 | 
 | VBS | VBS | 7.17 | 


## Some total runtime stats


 - Fastest option is ('04_nochPrunedLevels_2.eprime', 'cplex'), total runtime 7.17 seconds
 - Slowest option is ('04_nochPrunedLevels_2.eprime', 'chuffed'), total runtime 36000.00 seconds
 - Slowest option took 5020.92 times as long as SBS
 - VBS total runtime 7.17 seconds
 - VBS as a percentage of SBS is 100.00%
