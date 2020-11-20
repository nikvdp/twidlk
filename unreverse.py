#!/usr/bin/env python3
import sys
import re

col = re.compile(
    r"(.*)([LRMO])([LRMO])([LRMO])([LRMO])(.*)"
)

for line in sys.stdin.readlines():
    match = col.match(line)
    if match:
        grouped_line = list(match.groups())
        all_keys = grouped_line[1:-1]
        for idx, key in enumerate(grouped_line):
            if idx > 0 and idx < len(grouped_line):
                if key == "L":
                    grouped_line[idx] = "R"
                if key == "R":
                    grouped_line[idx] = "L"

        new_line = "".join(grouped_line) + "\n"

        sys.stdout.write(new_line)
    else:
        sys.stdout.write(line)
