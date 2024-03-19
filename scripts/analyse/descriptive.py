"""
Generate some descriptive stats for a given problem class.
"""
from pathlib import Path
import sys
import json


def main(problem_dir):

    # indexed by (model, param, solver) --> (status, time)
    raw = {}

    # set of (model, solver)
    options = set()

    # set of string
    params = set()

    opts = set()
    pathlist = Path(problem_dir).glob('**/*.stats.json')
    for path in pathlist:
        path_str = str(path)
        stats = None
        with open(path_str, "r", encoding="utf8") as f:
            stats = json.load(f)
            model = stats["useExistingModels"][0]
            param = stats["essenceParams"][0]
            solver_options = stats["solverOptions"][0]
            solver = stats["solver"]

            if solver == "or-tools":
                opts.add(solver_options)
                if "--threads=1" in solver_options:
                    solver = "or-tools1"
                else:
                    solver = "or-tools8"

            if solver != "or-tools8":
                status = stats["status"]
                total_time = None
                if status == "OK":
                    total_time = stats["totalTime"]
                raw[model, param, solver] = (status, total_time)
                params.add(param)
                options.add((model, solver))
                # print(model, param, status, totalTime)

    print(opts)
    total_time_for_options = {}

    # indexed by model, solver
    for (model, solver) in options:
        print(model, solver)
        total_time_for_options[model, solver] = 0
        for param in params:
            (status, time) = raw[model, param, solver]
            if status == "OK":
                total_time_for_options[model, solver] += time
            else:
                total_time_for_options[model, solver] += 36000

    vbs_time = 0
    for param in params:
        times = set()
        for (model, solver) in options:
            (status, time) = raw[model, param, solver]
            if status == "OK":
                times.add(time)
            else:
                times.add(36000)
        # if len(times) == 1:
        #     # everything times out
        #     print(param, times)
        vbs_time += min(times)

    print(total_time_for_options)

    for (model, solver) in options:
        print(
            ",".join([model, solver, str(total_time_for_options[model, solver])]))
    print(",".join(["VBS", "VBS", str(vbs_time)]))


main(sys.argv[1])
