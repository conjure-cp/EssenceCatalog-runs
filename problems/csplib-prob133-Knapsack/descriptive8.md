

# Options


- Number of models         4
- Number of solvers        5
- Number of params       155
- Number of params       155 (completed)
- Number of params       151 (at least one option failed to solve)
- Number of params         0 (all options failed to solve)
- Number of params       155 (analysed in this file)


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
 | 01_compact.eprime | chuffed | 4182009.44 | 
 | 01_compact.eprime | cplex | 124.94 | 
 | 01_compact.eprime | kissat | 5328034.79 | 
 | 01_compact.eprime | or-tools1 | 4084.30 | 
 | 01_compact.eprime | or-tools8 | 72236.07 | 
 | 03_sparse.eprime | chuffed | 5149241.69 | 
 | 03_sparse.eprime | cplex | 1271686.61 | 
 | 03_sparse.eprime | kissat | 5438831.71 | 
 | 03_sparse.eprime | or-tools1 | 5013142.70 | 
 | 03_sparse.eprime | or-tools8 | 4621252.96 | 
 | 04_nochPrunedLevels_3.eprime | chuffed | 5148747.26 | 
 | 04_nochPrunedLevels_3.eprime | cplex | 1299549.39 | 
 | 04_nochPrunedLevels_3.eprime | kissat | 5437227.40 | 
 | 04_nochPrunedLevels_3.eprime | or-tools1 | 4842546.86 | 
 | 04_nochPrunedLevels_3.eprime | or-tools8 | 4584377.38 | 
 | 04_nochPrunedLevels_4.eprime | chuffed | 5148700.20 | 
 | 04_nochPrunedLevels_4.eprime | cplex | 1298860.62 | 
 | 04_nochPrunedLevels_4.eprime | kissat | 5437776.97 | 
 | 04_nochPrunedLevels_4.eprime | or-tools1 | 4938493.05 | 
 | 04_nochPrunedLevels_4.eprime | or-tools8 | 4517110.65 | 
 | VBS | VBS | 81.57 | 


## Some total runtime stats


 - Fastest option is ('01_compact.eprime', 'cplex'), total runtime 124.94 seconds
 - Slowest option is ('03_sparse.eprime', 'kissat'), total runtime 5438831.71 seconds
 - Slowest option took 43531.55 times as long as SBS
 - VBS total runtime 81.57 seconds
 - VBS as a percentage of SBS is 65.29%
