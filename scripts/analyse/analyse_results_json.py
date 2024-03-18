from load_jsons import load_jsons
from chech_missing import check_missing
from add_aggregate_stats import add_stats
from generate_plots import make_stats
from sys import argv
from os.path import join, isdir
from os import makedirs
import pandas as pd
from typing import Any

def rebuild(data:list[dict]) -> list[dict]:
    out = []
    for datapoint in data:
        out.append({
            "parameter": datapoint["essenceParams"][0],
            "heuristic": datapoint["useExistingModels"][0].split("/")[-1],
            "solver": datapoint["solver"],
            "totalTime": datapoint["totalTime"] if "totalTime" in datapoint else 3600,
            "timeout": 1 if datapoint["status"] == "OK" else 0
        })
    return out

def parse_args() -> dict:
    args:dict[str,Any] = {
        "verbose":False,
        "save":False,
    }

    for arg in argv:
        if arg == "--help":
            return { "help":True }
        if arg == "--verbose" or arg == "-v":
            args["verbose"] = True
        elif "stats-folder" in arg:
            args["stats-folder"] = arg.replace("stats-folder=", "")
        else:
            args["folder"] = arg

    return args

def print_verbose(msg:str, verbose:bool):
    if verbose:
        print(msg)
def print_help():
    print(f"""
usage: python {argv[0]} folder [options]
--help          shows this message
--verbose/-v    print to stdout the results of the scripts
--stats-folder  save the stats into a particular folder
        """)

def main():
    args = parse_args()
    if "help" in args:
        print_help()   
        return
    if not "folder" in args:
        print("invalid usage, please see --help for reference")
        return

    verbose = args["verbose"]
    if not isdir(args["stats-folder"]):
        print_verbose("folder missing, generating it", verbose)
        makedirs(args["stats-folder"])

    data = load_jsons(args["folder"], verbose=verbose)
    print_verbose("JSONs loaded", verbose)
    data = rebuild(data)
    data = pd.DataFrame(data)
    print_verbose("checking for missing", verbose)
    missings = check_missing(data, verbose, save=False)
    print_verbose("missing checked", verbose)
    
    print_verbose("making graphs", verbose)
    make_stats(data, args['stats-folder'])
    print_verbose("graphs generated", verbose)

if __name__ == "__main__":
    main()
