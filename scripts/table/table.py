import sys

modelName = {}
modelName["csplib-prob001"] = "Car Sequencing"
modelName["csplib-prob002"] = "Template Design"
modelName["csplib-prob003"] = "Quasigroup Existence"
modelName["csplib-prob004"] = "Mystery Shopper"
modelName["csplib-prob005"] = "Low Autocorrelation Binary Sequences"
modelName["csplib-prob006"] = "Golomb rulers"
modelName["csplib-prob007"] = "All-Interval Series"
modelName["csplib-prob008"] = "Vessel Loading"
modelName["csplib-prob009"] = "Perfect Square Placement"
modelName["csplib-prob010"] = "Social Golfers Problem"
modelName["csplib-prob011"] = "ACC Basketball Schedule"
modelName["csplib-prob012"] = "Nonogram"
modelName["csplib-prob013"] = "Progressive Party Problem"
modelName["csplib-prob014"] = "Solitaire Battleships"
modelName["csplib-prob015"] = "Schur's Lemma"
modelName["csplib-prob016"] = "Traffic Lights"
modelName["csplib-prob017"] = "Ramsey Numbers"
modelName["csplib-prob018"] = "Water Bucket Problem"
modelName["csplib-prob019"] = "Magic Squares and Sequences"
modelName["csplib-prob020"] = "Darts Tournament"
modelName["csplib-prob021"] = "Crossfigures"
modelName["csplib-prob022"] = "Bus Driver Scheduling"
modelName["csplib-prob023"] = "Magic Hexagon"
modelName["csplib-prob024"] = "Langford's number problem"
modelName["csplib-prob025"] = "Lam's Problem"
modelName["csplib-prob026"] = "Sports Tournament Scheduling"
modelName["csplib-prob027"] = "Alien Tiles Problem"
modelName["csplib-prob028"] = "Balanced Incomplete Block Designs"
modelName["csplib-prob029"] = "Prime queen attacking problem"
modelName["csplib-prob030"] = "Balanced Academic Curriculum Problem (BACP)"
modelName["csplib-prob031"] = "Rack Configuration Problem"
modelName["csplib-prob032"] = "Maximum density still life"
modelName["csplib-prob033"] = "Word Design for DNA Computing on Surfaces"
modelName["csplib-prob034"] = "Warehouse Location Problem"
modelName["csplib-prob035"] = "Molnar's Problem"
modelName["csplib-prob036"] = "Fixed Length Error Correcting Codes"
modelName["csplib-prob037"] = "Peg Solitaire"
modelName["csplib-prob038"] = "Steel Mill Slab Design"
modelName["csplib-prob039"] = "The Rehearsal Problem"
modelName["csplib-prob040"] = "A Distribution Problem with Wagner-Whitin Costs"
modelName["csplib-prob041"] = "The n-Fractions Puzzle"
modelName["csplib-prob042"] = "diagnosis"
modelName["csplib-prob043"] = "differential diagnosis"
modelName["csplib-prob044"] = "Steiner triple systems"
modelName["csplib-prob045"] = "The Covering Array Problem"
modelName["csplib-prob046"] = "Meeting Scheduling"
modelName["csplib-prob047"] = "Supply Chain Coordinations"
modelName["csplib-prob048"] = "Minimum Energy Broadcast (MEB)"
modelName["csplib-prob049"] = "Number Partitioning"
modelName["csplib-prob050"] = "Diamond-free Degree Sequences"
modelName["csplib-prob051"] = "Tank Allocation"
modelName["csplib-prob052"] = "Extremal Graphs with Small Girth"
modelName["csplib-prob053"] = "Graceful Graphs"
modelName["csplib-prob054"] = "N-Queens"
modelName["csplib-prob055"] = "Equidistant Frequency Permutation Arrays"
modelName["csplib-prob056"] = "Synchronous Optical Networking (SONET) Problem"
modelName["csplib-prob057"] = "Killer Sudoku"
modelName["csplib-prob058"] = "Discrete Lot Sizing Problem"
modelName["csplib-prob059"] = "Energy-Cost Aware Scheduling"
modelName["csplib-prob060"] = "Ridesharing"
modelName["csplib-prob061"] = "Resource-Constrained Project Scheduling Problem (RCPSP)"
modelName["csplib-prob062"] = "Interview Assignment Problem"
modelName["csplib-prob063"] = "Winner Determination Problem (Combinatorial Auction)"
modelName["csplib-prob064"] = "Generalised Balanced Academic Curriculum Problem"
modelName["csplib-prob065"] = "Optimal Financial Portfolio Design"
modelName["csplib-prob066"] = "Distance-Based Constrained Clustering"
modelName["csplib-prob067"] = "Quasigroup Completion"
modelName["csplib-prob068"] = "Traveling Tournament Problem with Predefined Venues (TTPPV)"
modelName["csplib-prob069"] = "Balanced Nursing Workload Problem"
modelName["csplib-prob070"] = "Distributed Channel Assignment Problem"
modelName["csplib-prob071"] = "Diameter and Degree Bounded Network Design Problem"
modelName["csplib-prob072"] = "Target Tracking in Distributed Sensor Network"
modelName["csplib-prob073"] = "Test Scheduling Problem"
modelName["csplib-prob074"] = "Maximum Clique"
modelName["csplib-prob075"] = "Product Matrix Travelling Salesman Problem"
modelName["csplib-prob076"] = "Costas Arrays"
modelName["csplib-prob077"] = "Stochastic Assignment and Scheduling Problem"
modelName["csplib-prob078"] = "Train Traffic Rescheduling"
modelName["csplib-prob079"] = "n-Queens Completion Problem and Excluded Diagonals n-Queens Problem"
modelName["csplib-prob080"] = "Blocked n-Queens Problem"
modelName["csplib-prob081"] = "Black Hole"
modelName["csplib-prob082"] = "Patient Transportation Problem"
modelName["csplib-prob110"] = "Peaceably Co-existing Armies of Queens"
modelName["csplib-prob115"] = "Tail Assignment"
modelName["csplib-prob116"] = "Vellino's Problem"
modelName["csplib-prob131"] = "Production Line Sequencing"
modelName["csplib-prob132"] = "A Layout Problem"
modelName["csplib-prob133"] = "Knapsack Problem"
modelName["rcpsp"] = "Resource-Constrained Project Scheduling Problem (RCPSP)"
modelName["prob131-pls"] = modelName["csplib-prob131"]
modelName["csplib-prob013-decision"] = modelName["csplib-prob013"]
modelName["csplib-prob006-decision"] = modelName["csplib-prob006"]
modelName["prob037"] = modelName["csplib-prob037"]
modelName["prob037-peg"] = modelName["csplib-prob037"]
modelName["prob037-peg-simple"] = modelName["csplib-prob037"]
modelName["tsp"] = "Traveling Salesman Problem"
modelName["Transshipment"] = "Transshipment Problem"
modelName["VanDerWaerdenNumbers"] = "Van der Waerden Numbers"
modelName["csplib-prob053-GracefulGears"] = modelName["csplib-prob053"] + " - Gears"
modelName["csplib-prob053-GracefulHelms"] = modelName["csplib-prob053"] + " - Helms"
modelName["csplib-prob053-GracefulWheelGraphs"] = modelName["csplib-prob053"] + " - Wheel Graphs"
modelName["csplib-prob053-GracefulDoubleWheelGraphs"] = modelName["csplib-prob053"] + " - Double Wheel Graphs"
modelName["CVRP"] = "Capacitated Vehicle Routing Problem"
modelName["prob128-Cross"] = "SKIP"
modelName["prob123-Milk"] = "SKIP"

modeName = {}
modeName['00_compact'] = "SKIP"
modeName['01_noch_lvlPruned'] = "no-channelling, pruning"
modeName['03_full_lvlPruned_paramSparse'] = "channelling (except parameters), pruning"
modeName['04_full_lvlPruned_paramAll'] = "channelling, pruning"
modeName['02_noch_lvlFlat'] = "no-channelling, no-pruning"
modeName['05_full_lvlFlat_paramSparse'] = "channelling (except parameters), no-pruning"
modeName['06_full_lvlFlat_paramAll'] = "channelling, no-pruning"

modes = modeName.keys()

counts = {}

with open("scripts/table/estimates-sorted") as fp:
    for line in fp:
        [run, modelsTxt] = line.strip().split(":")
        [_, model, _, mode, _] = run.split("/")
        numModels = modelsTxt.split(" ")[6]
        # print(modelName[model])
        # print(config)
        # print(numModels)
        # print()
                
        if modelName[model] != "SKIP" and modeName[mode] != "SKIP":
            key = (modelName[model], mode)
            if key in counts:
                counts[key] = max(counts[key], numModels)
            else:
                counts[key] = numModels
            # print("\t".join([modelName[model], numModels]))

models = []
for k in counts.keys():
    if not k[0] in models:
        models.append(k[0])

for m in models:
    for mo in modes:
        if mo != "00_compact":
            if not (m,mo) in counts.keys():
                print("Not found", m, mo, file=sys.stderr)
            else:
                pass
                # print(m, mo, counts.keys(), file=sys.stderr)

# print(counts.keys(), file=sys.stderr)
# print(models)



print("Problem\t" + "\t".join([name for mode, name in modeName.items() if name != "SKIP"]))

for model in models:
    if model != "SKIP":
        print("%s\t%s" % (model, "\t".join([ counts[(model, mode)]
                                             for mode in modes
                                             if modeName[mode] != "SKIP"
                                           ])))



# print("%-60s & References \\\\ \\hline" % "Problem")
#
# for model in models:
#     if model != "SKIP":
#         print("%-60s & citations \\\\" % model)



