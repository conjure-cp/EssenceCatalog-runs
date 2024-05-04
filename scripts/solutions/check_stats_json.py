"""
Cheks the stats.json files for anything unexpected.
"""
from pathlib import Path
import sys
import json
import os


def main(problem_dir):
    """
    Walk all the stats.json files in a given dir and check them for consistency
    """

    pathlist = Path(problem_dir).glob('**/*.stats.json')
    for path in pathlist:
        path_str = str(path)
        stats = None
        # print(f'Parsing {path_str}')
        with open(path_str, "r", encoding="utf8") as f:
            try:
                stats = json.load(f, strict=False)
            except json.decoder.JSONDecodeError as e:
                sys.exit(f"MALFORMED JSON: {path_str}\n\n{e}")

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

            error_messages = {
                "TimeOut": [
                    "time out: time limit reached",
                    "Received SIGTERM or SIGINT, killing child"],
                "Error": [
                    "undefined identifier",
                    "MiniZinc error: Memory violation detected",
                    "Check failed: ParseFlatzincFile",
                    "parse error: unexpected end-of-file after parsing number of clauses",  # kissat
                    "error: Cannot open file",
                    "kissat: error: can not read",  # kissat
                    "kissat: fatal error: maximum arena capacity",  # kissat
                    "Error: syntax error, unexpected ]]",  # cplex
                    "*** Check failure stack trace: ***",  # or-tools
                    "Error: evaluation error: Index set mismatch.",
                    "Savile Row killed by: java.lang.AssertionError",
                    "java.lang.ClassCastException",
                    "ERROR: File not found",  # savilerow
                    "ERROR: Failed when writing SAT encoding to file.",  # savilerow
                ],
                "Invalid": [
                    "ERROR: In statement: where false"],
                "MemOut": [
                    "ERROR: Out of Memory",
                    "Maximum memory exceeded"]
            }

            for expected_status, messages in error_messages.items():
                if any(m in sr for m in messages) and stats["status"] != expected_status:
                    print(f'Found ({expected_status}, should be {stats["status"]} -- {path_str}')
                    stats["status"] = expected_status
                    changed = True

            if "ERROR: File not found" in sr:
                print(f"FILE NOT FOUND: {path_str}")

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
                print(path_str)
                print(sr)
                print()
                print()

        if changed:
            with open(path_str, "w", encoding="utf8") as f2:
                print(f'Saved {path_str}')
                json.dump(stats, f2, indent=2)

        if "ERROR: File not found" in sr and stats["savilerowLogs"]["exitCode"] == 1:
            print(f"rm {path_str}")
            os.remove(path_str)


main(sys.argv[1])
