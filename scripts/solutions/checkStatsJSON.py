
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
        if "time out: time limit reached" in sr:
            if stats["status"] != "TimeOut":
                print(
                    f'Found (time limit reached) -- {stats["status"]} -- {path_str}')
                stats["status"] = "TimeOut"
                changed = True
                # print(stats)

        if "undefined identifier" in sr:
            if stats["status"] != "Error":
                print(
                    f'Found (undefined identifier) -- {stats["status"]} -- {path_str}')
                stats["status"] = "Error"
                changed = True
                # print(stats)
                with open(path_str + ".modified", "w") as f2:
                    json.dump(stats, f2, indent=2)

    if changed:
        with open(path_str, "w") as f2:
            print(f'Saved {path_str}')
            json.dump(stats, f2, indent=2)

    try:
        os.remove(path_str + ".modified")
    except FileNotFoundError:
        pass
