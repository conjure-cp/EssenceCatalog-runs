"""
Generate some descriptive stats for a given problem class.
"""
from pathlib import Path
import sys
import json


def main(problem_dir):
    """Given a problem class directory, print descriptive stats to stdout."""

    # indexed by (model, param, solver) --> (status, time)
    raw = {}

    # set of (model, solver)
    options = set()

    # set of string
    models = set()
    solvers = set()
    params = set()
    opts = set()

    no_stats_json_files = True

    pathlist = Path(problem_dir).glob("**/*.stats.json")
    for path in pathlist:
        no_stats_json_files = False
        path_str = str(path)
        stats = None
        with open(path_str, "r", encoding="utf8") as f:
            try:
                stats = json.load(f, strict=False)
            except json.decoder.JSONDecodeError as e:
                sys.exit(f"MALFORMED JSON: {path_str}\n\n{e}")

            model = stats["useExistingModels"][0]
            model = model.split("/")[-1]

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
                models.add(model)
                solvers.add(solver)
                params.add(param)
                options.add((model, solver))
                # print(model, param, status, totalTime)

    if no_stats_json_files:
        print(f"no_stats_json_files - {problem_dir}", file=sys.stderr)
        sys.exit(0)

    # print(opts)

    # indexed by model, solver
    total_time_for_options = {}
    for (model, solver) in options:
        total_time_for_options[model, solver] = 0

    # one entry per param
    min_times = []

    # one entry per param
    max_times = []

    completed_params = 0
    all_to_params = 0
    some_to_params = 0

    for param in params:
        completed = True
        for (model, solver) in options:
            try:
                _ = raw[model, param, solver]
            except KeyError:
                completed = False

        if completed:
            completed_params += 1
            times = set()
            for (model, solver) in options:
                (status, time) = raw[model, param, solver]
                if status == "OK" and time <= 3600:
                    times.add(time)
                else:
                    times.add(36000)
            if max(times) >= 36000:
                some_to_params += 1
            if min(times) >= 36000:
                # all timeouts, ignore instances
                # print(f"ALL TO: {param}", file=sys.stderr)
                all_to_params += 1
            else:
                for (model, solver) in options:
                    (status, time) = raw[model, param, solver]
                    if status == "OK" and time <= 3600:
                        total_time_for_options[model, solver] += time
                    else:
                        total_time_for_options[model, solver] += 36000
                min_times.append(min(times))
                max_times.append(max(times))

    if len(min_times) == 0:
        vbs_time = "NA"
    else:
        vbs_time = sum(min_times)

    print("\n\n# Options\n\n")

    print(f"- Number of models {len(models)}")
    print(f"- Number of solvers {len(solvers)}")
    print(f"- Number of params {len(params)}")
    print(f"- Number of params {completed_params:8d} (completed)")
    print(f"- Number of params {some_to_params:8d} (at least one timed out)")
    print(f"- Number of params {all_to_params:8d} (all timed out)")
    print(f"- Number of params {completed_params - all_to_params:8d} (analysed in this file)")

    print("\n\n## Models\n\n")
    for model in sorted(models):
        print(f" - {model}")

    print("\n\n## Solvers\n\n")
    for solver in sorted(solvers):
        print(f" - {solver}")

    print("\n\n# Total runtime with each option\n\n")

    fastest = None
    fastest_option = None
    slowest = None
    slowest_option = None

    print(" | " +
          " | ".join(["Model", "Solver", "Total time (seconds)"]) +
          " | ")
    print(" | -- | -- | -- | ")
    for (model, solver) in sorted(options):
        print(" | " +
              " | ".join([model, solver, f"{total_time_for_options[model, solver]:.2f}"]) +
              " | ")
        if fastest is None or total_time_for_options[model, solver] <= fastest:
            fastest = total_time_for_options[model, solver]
            fastest_option = (model, solver)
        if slowest is None or total_time_for_options[model, solver] >= slowest:
            slowest = total_time_for_options[model, solver]
            slowest_option = (model, solver)
    if vbs_time == "NA":
        print(" | " +
              " | ".join(["VBS", "VBS", "NA"]) +
              " | ")
    else:
        print(" | " +
              " | ".join(["VBS", "VBS", f"{vbs_time:.2f}"]) +
              " | ")

    print("\n\n## Some total runtime stats\n\n")

    print(f" - Fastest option is {fastest_option}, total runtime {fastest:.2f} seconds")
    print(f" - Slowest option is {slowest_option}, total runtime {slowest:.2f} seconds")
    if fastest > 0:
        print(f" - Slowest option took {slowest / fastest:.2f} times as long as SBS")
    if vbs_time != "NA":
        print(f" - VBS total runtime {vbs_time:.2f} seconds")
        print(f" - VBS as a percentage of SBS is {vbs_time / fastest:.2%}")


main(sys.argv[1])
