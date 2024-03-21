

# Options


- Number of models 4
- Number of solvers 4
- Number of params 1039


## Models


 - 01_compact.eprime
 - 04_nochPrunedLevels_2.eprime
 - 04_nochPrunedLevels_3.eprime
 - 06_chPrunedLevels_1_2.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools1


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 5070241.90 | 
 | 01_compact.eprime | cplex | 36792249.68 | 
 | 01_compact.eprime | kissat | 2080500.30 | 
 | 01_compact.eprime | or-tools1 | 3166555.74 | 
 | 04_nochPrunedLevels_2.eprime | chuffed | 353404.56 | 
 | 04_nochPrunedLevels_2.eprime | cplex | 36684146.30 | 
 | 04_nochPrunedLevels_2.eprime | kissat | 698353.52 | 
 | 04_nochPrunedLevels_2.eprime | or-tools1 | 7295783.96 | 
 | 04_nochPrunedLevels_3.eprime | chuffed | 33420670.50 | 
 | 04_nochPrunedLevels_3.eprime | cplex | 36936103.06 | 
 | 04_nochPrunedLevels_3.eprime | kissat | 33462628.21 | 
 | 04_nochPrunedLevels_3.eprime | or-tools1 | 34083419.16 | 
 | 06_chPrunedLevels_1_2.eprime | chuffed | 36129836.82 | 
 | 06_chPrunedLevels_1_2.eprime | cplex | 37224106.39 | 
 | 06_chPrunedLevels_1_2.eprime | kissat | 36192673.77 | 
 | 06_chPrunedLevels_1_2.eprime | or-tools1 | 36298966.59 | 
 | VBS | VBS | 178314.27 | 


## Some total runtime stats


 - Fastest option is ('04_nochPrunedLevels_2.eprime', 'chuffed'), total runtime 353404.56
 - Slowest option is ('06_chPrunedLevels_1_2.eprime', 'cplex'), total runtime 37224106.39
 - VBS total runtime 178314.27
 - VBS as a percentage of SBS is 50.46%
