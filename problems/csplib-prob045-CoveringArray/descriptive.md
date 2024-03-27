

# Options


- Number of models         2
- Number of solvers        4
- Number of params       356
- Number of params       352 (completed)
- Number of params       160 (at least one timed out)
- Number of params         0 (all timed out)
- Number of params       352 (analysed in this file)


## Models


 - 01_compact.eprime
 - 06_chPrunedLevels.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools1


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 44367.62 | 
 | 01_compact.eprime | cplex | 5473466.90 | 
 | 01_compact.eprime | kissat | 42331.95 | 
 | 01_compact.eprime | or-tools1 | 263544.89 | 
 | 06_chPrunedLevels.eprime | chuffed | 44480.81 | 
 | 06_chPrunedLevels.eprime | cplex | 5509456.27 | 
 | 06_chPrunedLevels.eprime | kissat | 78344.41 | 
 | 06_chPrunedLevels.eprime | or-tools1 | 263450.49 | 
 | VBS | VBS | 4530.75 | 


## Some total runtime stats


 - Fastest option is ('01_compact.eprime', 'kissat'), total runtime 42331.95 seconds
 - Slowest option is ('06_chPrunedLevels.eprime', 'cplex'), total runtime 5509456.27 seconds
 - Slowest option took 130.15 times as long as SBS
 - VBS total runtime 4530.75 seconds
 - VBS as a percentage of SBS is 10.70%
