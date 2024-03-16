"""
Cheks the stats.json files for anything unexpected.
"""
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
    with open(path_str, "r", encoding = "utf8") as f:
        stats = json.load(f)
        sr = ""
        try:
            sr += "\n".join(stats["savilerowLogs"]["stdout"])
        except KeyError:
            pass
        try:
            sr += "\n".join(stats["savilerowLogs"]["stderr"])
        except KeyError:
            pass

        changed = False
        if "time out: time limit reached" in sr and stats["status"] != "TimeOut":
            print(
                f'Found (time limit reached) -- {stats["status"]} -- {path_str}')
            stats["status"] = "TimeOut"
            changed = True

        if "ERROR: Out of Memory" in sr and stats["status"] != "MemOut":
            print(
                f'Found (should be MemOut) -- {stats["status"]} -- {path_str}')
            stats["status"] = "MemOut"
            changed = True

        messages = [
            "undefined identifier",
            "MiniZinc error: Memory violation detected and error message",
            "Check failed: ParseFlatzincFile",
            "parse error: unexpected end-of-file after parsing number of clauses",
            "error: Cannot open file",
            "kissat: error: can not read",
            "kissat: fatal error: maximum arena capacity"
        ]

        if any([m in sr for m in messages]) and stats["status"] != "Error":
            print(
                f'Found (should be Error, but is not) -- {stats["status"]} -- {path_str}')
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
        with open(path_str, "w", encoding="utf8") as f2:
            print(f'Saved {path_str}')
            json.dump(stats, f2, indent=2)

    if "ERROR: File not found" in sr and stats["savilerowLogs"]["exitCode"] == 1:
        print(f"rm {path_str}")
        os.remove(path_str)
