from os.path import exists, join
from os import makedirs
import seaborn as sns
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

def extract_combination_data(inst_data:dict[str,dict], combinations:list[str])-> list:
    out = []
    for key in inst_data:
        out_point = {'inst': key}
        for combination in combinations:
            out_point[combination] = inst_data[key][combination]
        out.append(out_point)
    return out

def make_stats(data:list[dict], folder:str):

    instances_data = {}
    models = set()
    solvers = set()
    instances = set()

    for datapoint in data:
        inst = datapoint["instance"]
        model = datapoint["model"]
        solver = datapoint["solver"]
        comb = f"{solver}-{model}"
        if not inst in instances_data:
            instances_data[inst] = {}
        instances_data[inst][comb] = datapoint["total_time"]
        models.add(model)
        instances.add(inst)
        solvers.add(solver)

    combinations = [f"{solver}-{model}" for solver in solvers for model in models]
    wins = {comb:0 for comb in combinations}
    wins["timeout"] = 0
    times = {comb:0 for comb in combinations}
    times["virtual_best"] = 0
    distances = {comb:[] for comb in combinations} 

    for instance in instances:
        min_time = ("timeout", 36000)
        for comb in combinations:
            t = instances_data[instance][comb]
            times[comb] += t
            if min_time[1] > t:
                min_time = (comb, t)

        if min_time[1] >= 3600:
            wins["timeout"] += 1
            for comb in combinations:
                times[comb] -= instances_data[instance][comb]
        else:
            wins[min_time[0]] += 1
            times["virtual_best"] += min_time[1]
        
            for comb in combinations:
                if comb != min_time[0]:
                    distances[comb].append(instances_data[instance][comb] - min_time[1])
    
    plt.figure(figsize=(10,10))
    plt.bar(list(wins.keys()), list(wins.values()))
    plt.xticks(rotation=90)
    plt.tight_layout()
    plt.savefig(join(folder,'winning_combination.png'))
    plt.clf()

    plt.figure(figsize=(10,10))
    plt.bar(list(times.keys()), list(times.values()))
    plt.xticks(rotation=90)
    plt.tight_layout()
    plt.savefig(join(folder,'total_solving_time_per_combination.png'))
    plt.clf()

    plt.figure(figsize=(10,10))
    plt.boxplot(list(distances.values()), labels=list(distances.keys()))
    plt.xticks(rotation=90)
    plt.tight_layout()
    plt.savefig(join(folder,'distance_from_the_winner_combination.png')) 
    plt.clf()

    plot_folder = join(folder,"combinations_plot")
    if not exists(plot_folder):
        makedirs(plot_folder)

    n = len(combinations)
    for i in range(n):
        c1 = combinations[i]
        for j in range(n):
            if i == j:
                continue
            c2 = combinations[j]
            data_to_plot = pd.DataFrame(extract_combination_data(instances_data, [c1, c2]))
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
            plt.savefig(join(plot_folder,f'{c1}-vs-{c2}.png'), dpi=600)
            fig.clf()
            del ax
            del fig
            plt.clf()
            plt.close()
    
    out_md = ""
    out_md += "\n\n# Options\n\n"

    out_md += f"- Number of models {len(models)}\n"
    out_md += f"- Number of solvers {len(solvers)}\n"
    out_md += f"- Number of params {len(instances)}\n"

    out_md += "\n\n## Models\n\n\n"
    for model in sorted(models):
        out_md += f" - {model}\n"

    out_md += "\n\n## Solvers\n\n\n"
    for solver in sorted(solvers):
        out_md += f" - {solver}\n"

    out_md += "\n\n# Total runtime with each option\n\n\n"

    fastest = None
    fastest_option = None
    slowest = None
    slowest_option = None

    out_md += " | " +\
          " | ".join(["Model", "Solver", "Total time (seconds)", "number of wins"]) +\
          " | \n"
    out_md += " | -- | -- | -- | -- | \n"
    for combination in sorted(combinations):
        split_comb = combination.split("-")
        solver = "-".join(split_comb[:-1])
        model = split_comb[-1]
        out_md += " | " +\
              " | ".join([model, solver, f"{times[combination]:.2f}", str(wins[combination])]) +\
              " | \n"
        if fastest is None or times[combination] <= fastest:
            fastest = times[combination]
            fastest_option = combination
        if slowest is None or times[combination] >= slowest:
            slowest = times[combination]
            slowest_option = combination
    out_md += " | " +\
          " | ".join(["VBS", "VBS", f"{times['virtual_best']:.2f}", str(len(instances))]) + \
          " | \n"

    out_md += "\n\n## Some total runtime stats\n\n"

    out_md += f" - Fastest option is {fastest_option}, total runtime {fastest:.2f}\n"
    out_md += f" - Slowest option is {slowest_option}, total runtime {slowest:.2f}\n"
    out_md += f" - VBS total runtime {times['virtual_best']}\n"
    out_md += f" - VBS as a percentage of SBS is {times['virtual_best'] / fastest:.2%}\n"
    f = open(join(folder, "descriptive.md"), "w")
    f.write(out_md)
    f.close()

