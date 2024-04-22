

# Options


- Number of models         4
- Number of solvers        4
- Number of params        56
- Number of params        55 (completed)
- Number of params        55 (at least one option failed to solve)
- Number of params        32 (all options failed to solve)
- Number of params        23 (analysed in this file)


## Models


 - 01_compact.eprime
 - 05_nochAllLevels_1_2.eprime
 - 05_nochAllLevels_2_1.eprime
 - 05_nochAllLevels_2_2.eprime


## Solvers


 - chuffed
 - cplex
 - kissat
 - or-tools1


# Total runtime with each option


 | Model | Solver | Total time (seconds) | 
 | -- | -- | -- | 
 | 01_compact.eprime | chuffed | 613720.06 | 
 | 01_compact.eprime | cplex | 576050.23 | 
 | 01_compact.eprime | kissat | 371647.41 | 
 | 01_compact.eprime | or-tools1 | 190328.01 | 
 | 05_nochAllLevels_1_2.eprime | chuffed | 828000.00 | 
 | 05_nochAllLevels_1_2.eprime | cplex | 792013.10 | 
 | 05_nochAllLevels_1_2.eprime | kissat | 792303.19 | 
 | 05_nochAllLevels_1_2.eprime | or-tools1 | 758011.33 | 
 | 05_nochAllLevels_2_1.eprime | chuffed | 684663.67 | 
 | 05_nochAllLevels_2_1.eprime | cplex | 792008.55 | 
 | 05_nochAllLevels_2_1.eprime | kissat | 618521.68 | 
 | 05_nochAllLevels_2_1.eprime | or-tools1 | 615160.52 | 
 | 05_nochAllLevels_2_2.eprime | chuffed | 792451.64 | 
 | 05_nochAllLevels_2_2.eprime | cplex | 792011.18 | 
 | 05_nochAllLevels_2_2.eprime | kissat | 792476.73 | 
 | 05_nochAllLevels_2_2.eprime | or-tools1 | 686194.55 | 
 | VBS | VBS | 35975.08 | 


## Some total runtime stats


 - Fastest option is ('01_compact.eprime', 'or-tools1'), total runtime 190328.01 seconds
 - Slowest option is ('05_nochAllLevels_1_2.eprime', 'chuffed'), total runtime 828000.00 seconds
 - Slowest option took 4.35 times as long as SBS
 - VBS total runtime 35975.08 seconds
 - VBS as a percentage of SBS is 18.90%
