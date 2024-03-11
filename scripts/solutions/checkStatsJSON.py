
from pathlib import Path
import sys
import json
import os

problem_dir = sys.argv[1]


pathlist = Path(problem_dir).glob('**/*.stats.json')
for path in pathlist:
    path_str = str(path)
    stats = None
    # print(f'Parsing {path_str}')
    with open(path_str) as f:
        stats = json.load(f)
        sr = ""
        try:
            sr += "\n".join(stats["savileRowLogs"]["stdout"])
        except KeyError:
            pass
        try:
            sr += "\n".join(stats["savileRowLogs"]["stderr"])
        except KeyError:
            pass

        changed = False
        if "time out: time limit reached" in sr and stats["status"] != "TimeOut":
            print(
                f'Found (time limit reached) -- {stats["status"]} -- {path_str}')
            stats["status"] = "TimeOut"
            changed = True

        if "undefined identifier" in sr and stats["status"] != "Error":
            print(
                f'Found (undefined identifier) -- {stats["status"]} -- {path_str}')
            stats["status"] = "Error"
            changed = True

        if "MiniZinc error: Memory violation detected and error message" in sr and stats["status"] != "Error":
            print(f'Found (MiniZinc error) -- {stats["status"]} -- {path_str}')
            stats["status"] = "Error"
            changed = True

        if "Check failed: ParseFlatzincFile" in sr and stats["status"] != "Error":
            print(f'Found (MiniZinc error) -- {stats["status"]} -- {path_str}')
            stats["status"] = "Error"
            changed = True

        sr = sr.replace("Solver exited with error code:0 and error message",
                        "IGNORED1")
        sr = sr.replace("Sub-process exited with error code:0 and error message",
                        "IGNORED2")
        sr = sr.replace("SAT solver exited with error code:0 and message",
                        "IGNORED3")
        sr = sr.replace("Solver exited with error code:0 and message",
                        "IGNORED4")
        sr = sr.replace("Sub-process exited with error code:1 and error message:",
                        "IGNORED5")

        if "error" in sr and stats["status"] == "OK":
            print(sr)

    if changed:
        with open(path_str, "w") as f2:
            print(f'Saved {path_str}')
            json.dump(stats, f2, indent=2)
