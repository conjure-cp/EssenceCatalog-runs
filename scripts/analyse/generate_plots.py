import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import seaborn as sns
from os.path import join
import os 
from sys import argv

def extract_combination_data(inst_data:dict[str,dict], combinations:list[str])-> list:
    out = []
    for key in inst_data:
        out_point = {'inst': key}
        for combination in combinations:
            out_point[combination] = inst_data[key][combination]["t"]
        out.append(out_point)
    return out

def make_stats(data:pd.DataFrame, folder:str, show:bool = False, save:bool = True)-> None:
    instances = np.unique(data["parameter"])    
    inst_data = {inst: {} for inst in instances}
    for i in range(len(data)):
        row = data.iloc[i, :]
        timeout = row["timeout"]
        if row["totalTime"] > 3600:
            timeout = 1
        inst_data[row["parameter"]][f"{row['heuristic']}_{row['solver']}"] = {"t":row["totalTime"], "o":timeout, "i": row["parameter"]}
    all_times = []
    bests = {"timeout": 0}
    bests_all = {}
    for key in inst_data.keys():
        datapoint = inst_data[key]
        combinations = list(datapoint.keys())
        best = {'c': combinations[0], 'v': datapoint[combinations[0]]["t"], "t":datapoint[combinations[0]]["o"], "i": datapoint[combinations[0]]["i"]}

        for comb in combinations:
            all_times.append({'c': comb, 'v': datapoint[comb]["t"], "t": datapoint[comb]["o"], "i": datapoint[comb]["i"]})
            if best['v'] > datapoint[comb]["t"]:
                best = {'c': comb, 'v': datapoint[comb]["t"], "t": datapoint[comb]["o"], "i": datapoint[comb]["i"]}
        if not best['c'] in bests:
            bests[best['c']] = 0
        if best["t"] == 1:
            bests["timeout"] +=1
        else:
            bests[best['c']] +=1
        bests_all[best["i"]] = best
    
    combinations = list(inst_data[list(inst_data.keys())[0]].keys())

    final_csv = [{"combination": combination} for combination in combinations]

    plt.figure(figsize=(10,10))
    plt.bar(list(bests.keys()), list(bests.values()))
    plt.xticks(rotation=90)
    plt.tight_layout()
    if save:
        plt.savefig(join(folder,'winning_combination.png'))
    if show:
        plt.show()
    plt.clf()

    for combination in bests.keys():
        for row in final_csv:
            if row["combination"] == combination:
                row["wins"] = bests[combination]
                break

    solvers = np.unique(data["solver"]).tolist()
    solv_data = {s: 0 for s in solvers}
    solv_data["timeout"] = 0
    for best in bests.keys():
        for solver in solvers:
            if solver in best:
                solv_data[solver] += bests[best]
    plt.figure(figsize=(10,10))
    plt.bar(list(solv_data.keys()), list(solv_data.values()))
    plt.xticks(rotation=90)
    plt.tight_layout()
    if save:
        plt.savefig(join(folder,'winning_solver.png'))
    if show:
        plt.show()
    plt.clf()

    heuristics = np.unique(data["heuristic"]).tolist()
    heur_data = {h: 0 for h in heuristics}
    heur_data["timeout"] = 0
    for best in bests.keys():
        for heur in heuristics:
            if heur in best:
                heur_data[heur] += bests[best]
    plt.figure(figsize=(10,10))
    plt.bar(list(heur_data.keys()), list(heur_data.values()))
    plt.xticks(rotation=90)
    plt.tight_layout()
    if save:
        plt.savefig(join(folder,'winning_heuristic.png'))
    if show:
        plt.show()
    plt.clf()

    distances_total = {d: [] for d in np.unique(np.ravel([list(inst_data[key].keys()) for key in inst_data.keys()]))}
    distances_heuristic = {d: [] for d in heuristics}
    distances_solvers = {d: [] for d in solvers}
    maxes = {}
    for bf in all_times:
        if not bf["i"] in maxes:
            maxes[bf["i"]] = bf["v"]
        if maxes[bf["i"]] < bf["v"]:
            maxes[bf["i"]] = bf["v"]

    for bf in all_times:
        if bests_all[bf["i"]]["v"] != bf["v"]:
            normalized_distance = (bf["v"] - bests_all[bf["i"]]["v"]) / maxes[bf["i"]]
            distances_total[bf["c"]].append(normalized_distance)
            for h in heuristics:
                if h in bf["c"]:
                    distances_heuristic[h].append(normalized_distance)
            for s in solvers:
                if s in bf["c"]:
                    distances_solvers[s].append(normalized_distance)
    plt.figure(figsize=(10,10))
    plt.boxplot(list(distances_total.values()), labels=list(distances_total.keys()))
    plt.xticks(rotation=90)
    plt.tight_layout()
    if save:
        plt.savefig(join(folder,'distance_from_the_winner_combination.png')) 
    if show:
        plt.show()
    plt.clf()
    plt.boxplot(list(distances_heuristic.values()), labels=list(distances_heuristic.keys()))
    plt.xticks(rotation=90)
    plt.tight_layout()
    if save:
        plt.savefig(join(folder,'distance_from_the_winner_heuristic.png'))
    if show:
        plt.show()
    plt.clf()
    plt.boxplot(list(distances_solvers.values()), labels=list(distances_solvers.keys()))
    plt.xticks(rotation=90)
    plt.tight_layout()
    if save:
        plt.savefig(join(folder,'distance_from_the_winner_solver.png'))
    if show:
        plt.show()
    plt.clf()

    total_time_total = {d: 0 for d in np.unique(np.ravel([list(inst_data[key].keys()) for key in inst_data.keys()]))}
    total_time_heuristic = {d: 0 for d in heuristics}
    total_time_solvers = {d: 0 for d in solvers}
    for bf in all_times:
        total_time_total[bf["c"]] += bf["v"]
        for h in heuristics:
            if h in bf["c"]:
                total_time_heuristic[h] += bf["v"]
        for s in solvers:
            if s in bf["c"]:
                total_time_solvers[s] += bf["v"]
    vb = [bests_all[key]["v"] for key in bests_all.keys()]
    vb_sum = np.sum(vb)
    total_time_total["virtual best"] = vb_sum
    plt.figure(figsize=(10,10))
    plt.bar(list(total_time_total.keys()), list(total_time_total.values()))
    plt.xticks(rotation=90)
    plt.tight_layout()
    if save:
        plt.savefig(join(folder,'total_solving_time_per_combination.png'))
    if show:
        plt.show()
    plt.clf()
    plt.figure(figsize=(10,10))
    plt.bar(list(total_time_heuristic.keys()), list(total_time_heuristic.values()))
    plt.xticks(rotation=90)
    plt.tight_layout()
    if save:
        plt.savefig(join(folder,'total_solving_time_per_heuristic.png'))
    if show:
        plt.show()
    plt.clf()
    plt.figure(figsize=(10,10))
    plt.bar(list(total_time_solvers.keys()), list(total_time_solvers.values()))
    plt.xticks(rotation=90)
    plt.tight_layout()
    if save:
        plt.savefig(join(folder,'total_solving_time_per_solver.png'))
    if show:
        plt.clf()
    for combination in total_time_total.keys():
        for row in final_csv:
            if row["combination"] == combination:
                row["total solving time"] = total_time_total[combination]
    final_csv.append({"combination":"virtual_best", "total solving time": total_time_total["virtual best"], "wins": len(vb)})
    n = len(combinations)
    plot_folder = join(folder,"combinations_plot")
    os.makedirs(plot_folder)
        
    for i in range(n):
        c1 = combinations[i]
        for j in range(n):
            if i == j:
                continue
            c2 = combinations[j]
            data_to_plot = pd.DataFrame(extract_combination_data(inst_data, [c1, c2]))
            m1, m2 = np.max(data_to_plot.iloc[:,1]), np.max(data_to_plot.iloc[:,2])
            max = np.max([m1, m2])
            fig, ax = plt.subplots(1,1)
            sns.scatterplot(ax=ax, data=data_to_plot, x=c1, y=c2, markers='x', alpha=.7)
            xy = np.linspace(0, max)
            ax.set_yscale('log')
            ax.set_xscale('log')
            ax.set_xlim(left=0.1, right=max + 1)
            ax.set_ylim(bottom=0.1, top=max + 1)
            ax.plot(xy,xy, ls="--", c="#888888")
            fig.tight_layout()
            if save:
                plt.savefig(join(plot_folder,f'{c1}-vs-{c2}.png'), dpi=600)
            if show:
                plt.show()
            plt.clf()

    final_csv = pd.DataFrame(final_csv)
    final_csv.to_csv(join(folder, "stats.csv"), index=False)

def main():
    if len(argv) < 2:
        print("please provide a valid csv file to parse")
        return
    folder = '.'
    if len(argv) == 3:
        folder = argv[2]
    
    data = pd.read_csv(argv[1])
    make_stats(data, folder)

if __name__ == "__main__":
    main()
