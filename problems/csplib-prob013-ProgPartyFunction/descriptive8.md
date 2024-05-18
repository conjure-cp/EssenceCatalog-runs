

# Options


- Number of models         4
- Number of solvers        5
- Number of params       150
- Number of params       150 (completed)
- Number of params       139 (at least one option failed to solve)
- Number of params       117 (all options failed to solve)
- Number of params        33 (analysed in this file)


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
 - or-tools8


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 253384.07 | 
 | 01_compact.eprime | cplex | 504178.32 | 
 | 01_compact.eprime | kissat | 253689.29 | 
 | 01_compact.eprime | or-tools1 | 253963.66 | 
 | 01_compact.eprime | or-tools8 | 181865.81 | 
 | 03_sparse.eprime | chuffed | 291472.43 | 
 | 03_sparse.eprime | cplex | 792062.22 | 
 | 03_sparse.eprime | kissat | 257994.10 | 
 | 03_sparse.eprime | or-tools1 | 402460.53 | 
 | 03_sparse.eprime | or-tools8 | 293438.86 | 
 | 04_nochPrunedLevels_3.eprime | chuffed | 259440.54 | 
 | 04_nochPrunedLevels_3.eprime | cplex | 792058.41 | 
 | 04_nochPrunedLevels_3.eprime | kissat | 292000.80 | 
 | 04_nochPrunedLevels_3.eprime | or-tools1 | 307057.55 | 
 | 04_nochPrunedLevels_3.eprime | or-tools8 | 364853.77 | 
 | 04_nochPrunedLevels_4.eprime | chuffed | 292981.40 | 
 | 04_nochPrunedLevels_4.eprime | cplex | 792057.43 | 
 | 04_nochPrunedLevels_4.eprime | kissat | 257391.79 | 
 | 04_nochPrunedLevels_4.eprime | or-tools1 | 112507.08 | 
 | 04_nochPrunedLevels_4.eprime | or-tools8 | 366956.23 | 
 | VBS | VBS | 17754.22 | 


## Some total runtime stats


 - Fastest option is ('04_nochPrunedLevels_4.eprime', 'or-tools1'), total runtime 112507.08 seconds
 - Slowest option is ('03_sparse.eprime', 'cplex'), total runtime 792062.22 seconds
 - Slowest option took 7.04 times as long as SBS
 - VBS total runtime 17754.22 seconds
 - VBS as a percentage of SBS is 15.78%
