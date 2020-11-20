#!/usr/bin/env bash

if echo "$1" | grep -qi '\.cfg$'; then
    twidlk "$1"
    out="$(echo "$1" | sed 's/\.cfg$/.txt/i')"
    ./unreverse.py < "$out" > "$out.tmp"
    rm "$out"
    mv "$out.tmp" "$out"
elif echo "$1" | grep -qi '\.txt$'; then
    ./unreverse.py < "$1" > "$1.tmp.txt"
    twidlk "$1.tmp.txt"
    out="$(echo "$1" | sed 's/\.txt$/.cfg/i')"
    mv "$1.tmp.cfg" "$out"
    rm *.tmp.*
fi
