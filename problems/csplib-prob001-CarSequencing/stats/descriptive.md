

# Options

- Number of models 4
- Number of solvers 5
- Number of params 10214


## Models


 - 01_compact.eprime
 - 02_compact.eprime
 - 05_nochAllLevels_2.eprime
 - 06_chPrunedLevels.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools-1
 - or-tools-8


# Total runtime with each option


 | Model | Solver | Total time (seconds) | number of wins | 
 | -- | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 10367831.07 | 529 | 
 | 02_compact.eprime | chuffed | 7404031.23 | 1 | 
 | 05_nochAllLevels_2.eprime | chuffed | 219775354.74 | 0 | 
 | 06_chPrunedLevels.eprime | chuffed | 10268243.87 | 505 | 
 | 01_compact.eprime | cplex | 61455015.56 | 115 | 
 | 02_compact.eprime | cplex | 367704000.00 | 0 | 
 | 05_nochAllLevels_2.eprime | cplex | 219364389.47 | 0 | 
 | 06_chPrunedLevels.eprime | cplex | 61598746.06 | 106 | 
 | 01_compact.eprime | kissat | 28051232.54 | 1 | 
 | 02_compact.eprime | kissat | 34423507.53 | 0 | 
 | 05_nochAllLevels_2.eprime | kissat | 222768999.80 | 0 | 
 | 06_chPrunedLevels.eprime | kissat | 28011575.78 | 2 | 
 | 01_compact.eprime | or-tools-1 | 8301687.57 | 0 | 
 | 02_compact.eprime | or-tools-1 | 11559523.76 | 0 | 
 | 05_nochAllLevels_2.eprime | or-tools-1 | 219966419.01 | 0 | 
 | 06_chPrunedLevels.eprime | or-tools-1 | 9736581.42 | 0 | 
 | 01_compact.eprime | or-tools-8 | 2790849.24 | 4333 | 
 | 02_compact.eprime | or-tools-8 | 2921016.47 | 133 | 
 | 05_nochAllLevels_2.eprime | or-tools-8 | 219434519.82 | 0 | 
 | 06_chPrunedLevels.eprime | or-tools-8 | 2718716.20 | 4489 | 
 | VBS | VBS | 84020.21 | 10214 | 


## Some total runtime stats

 - Fastest option is or-tools-8-06_chPrunedLevels.eprime, total runtime 2718716.20
 - Slowest option is cplex-02_compact.eprime, total runtime 367704000.00
 - VBS total runtime 84020.20999999989
 - VBS as a percentage of SBS is 3.09%
