

# Options


- Number of models         4
- Number of solvers        5
- Number of params        19
- Number of params        19 (completed)
- Number of params        16 (at least one option failed to solve)
- Number of params        12 (all options failed to solve)
- Number of params         7 (analysed in this file)


## Models


 - 01_compact.eprime
 - 04_nochPrunedLevels_2.eprime
 - 06_chPrunedLevels_1_1_1_2.eprime
 - 06_chPrunedLevels_1_1_2_1.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools1
 - or-tools8


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 72117.82 | 
 | 01_compact.eprime | cplex | 108012.91 | 
 | 01_compact.eprime | kissat | 296.16 | 
 | 01_compact.eprime | or-tools1 | 72099.60 | 
 | 01_compact.eprime | or-tools8 | 37035.58 | 
 | 04_nochPrunedLevels_2.eprime | chuffed | 72182.38 | 
 | 04_nochPrunedLevels_2.eprime | cplex | 108012.73 | 
 | 04_nochPrunedLevels_2.eprime | kissat | 247.07 | 
 | 04_nochPrunedLevels_2.eprime | or-tools1 | 72331.32 | 
 | 04_nochPrunedLevels_2.eprime | or-tools8 | 37120.52 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | chuffed | 72273.59 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | cplex | 144008.97 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | kissat | 2011.45 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | or-tools1 | 73693.68 | 
 | 06_chPrunedLevels_1_1_1_2.eprime | or-tools8 | 72387.43 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | chuffed | 74814.07 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | cplex | 144009.09 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | kissat | 1864.58 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | or-tools1 | 73238.02 | 
 | 06_chPrunedLevels_1_1_2_1.eprime | or-tools8 | 72298.13 | 
 | VBS | VBS | 244.94 | 


## Some total runtime stats


 - Fastest option is ('04_nochPrunedLevels_2.eprime', 'kissat'), total runtime 247.07 seconds
 - Slowest option is ('06_chPrunedLevels_1_1_2_1.eprime', 'cplex'), total runtime 144009.09 seconds
 - Slowest option took 582.87 times as long as SBS
 - VBS total runtime 244.94 seconds
 - VBS as a percentage of SBS is 99.14%
