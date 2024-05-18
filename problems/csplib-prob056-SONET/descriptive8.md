

# Options


- Number of models         4
- Number of solvers        5
- Number of params       243
- Number of params       243 (completed)
- Number of params       207 (at least one option failed to solve)
- Number of params       182 (all options failed to solve)
- Number of params        61 (analysed in this file)


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
 | 01_compact.eprime | chuffed | 832184.05 | 
 | 01_compact.eprime | cplex | 211.91 | 
 | 01_compact.eprime | kissat | 577806.99 | 
 | 01_compact.eprime | or-tools1 | 351256.29 | 
 | 01_compact.eprime | or-tools8 | 576493.95 | 
 | 03_sparse.eprime | chuffed | 905574.87 | 
 | 03_sparse.eprime | cplex | 576150.47 | 
 | 03_sparse.eprime | kissat | 576659.89 | 
 | 03_sparse.eprime | or-tools1 | 623206.77 | 
 | 03_sparse.eprime | or-tools8 | 577891.24 | 
 | 04_nochPrunedLevels_3.eprime | chuffed | 835502.63 | 
 | 04_nochPrunedLevels_3.eprime | cplex | 576161.43 | 
 | 04_nochPrunedLevels_3.eprime | kissat | 576516.09 | 
 | 04_nochPrunedLevels_3.eprime | or-tools1 | 591591.79 | 
 | 04_nochPrunedLevels_3.eprime | or-tools8 | 577894.44 | 
 | 04_nochPrunedLevels_4.eprime | chuffed | 905240.18 | 
 | 04_nochPrunedLevels_4.eprime | cplex | 576149.57 | 
 | 04_nochPrunedLevels_4.eprime | kissat | 576798.30 | 
 | 04_nochPrunedLevels_4.eprime | or-tools1 | 625458.58 | 
 | 04_nochPrunedLevels_4.eprime | or-tools8 | 578714.34 | 
 | VBS | VBS | 188.25 | 


## Some total runtime stats


 - Fastest option is ('01_compact.eprime', 'cplex'), total runtime 211.91 seconds
 - Slowest option is ('03_sparse.eprime', 'chuffed'), total runtime 905574.87 seconds
 - Slowest option took 4273.39 times as long as SBS
 - VBS total runtime 188.25 seconds
 - VBS as a percentage of SBS is 88.83%
