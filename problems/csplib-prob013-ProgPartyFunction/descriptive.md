

# Options


- Number of models         4
- Number of solvers        4
- Number of params       150
- Number of params       150 (completed)
- Number of params       139 (at least one option failed to solve)
- Number of params       118 (all options failed to solve)
- Number of params        32 (analysed in this file)


## Models


 - 01_compact.eprime
 - 03_sparse.eprime
 - 04_nochPrunedLevels_3.eprime
 - 04_nochPrunedLevels_4.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools1


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 217384.07 | 
 | 01_compact.eprime | cplex | 468178.32 | 
 | 01_compact.eprime | kissat | 217689.29 | 
 | 01_compact.eprime | or-tools1 | 217963.66 | 
 | 03_sparse.eprime | chuffed | 255472.43 | 
 | 03_sparse.eprime | cplex | 756062.22 | 
 | 03_sparse.eprime | kissat | 221994.10 | 
 | 03_sparse.eprime | or-tools1 | 366460.53 | 
 | 04_nochPrunedLevels_3.eprime | chuffed | 223440.54 | 
 | 04_nochPrunedLevels_3.eprime | cplex | 756058.41 | 
 | 04_nochPrunedLevels_3.eprime | kissat | 256000.80 | 
 | 04_nochPrunedLevels_3.eprime | or-tools1 | 271057.55 | 
 | 04_nochPrunedLevels_4.eprime | chuffed | 256981.40 | 
 | 04_nochPrunedLevels_4.eprime | cplex | 756057.43 | 
 | 04_nochPrunedLevels_4.eprime | kissat | 221391.79 | 
 | 04_nochPrunedLevels_4.eprime | or-tools1 | 76507.08 | 
 | VBS | VBS | 22463.27 | 


## Some total runtime stats


 - Fastest option is ('04_nochPrunedLevels_4.eprime', 'or-tools1'), total runtime 76507.08 seconds
 - Slowest option is ('03_sparse.eprime', 'cplex'), total runtime 756062.22 seconds
 - Slowest option took 9.88 times as long as SBS
 - VBS total runtime 22463.27 seconds
 - VBS as a percentage of SBS is 29.36%
