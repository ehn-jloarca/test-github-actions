#!/bin/sh
poetry -V
poetry update --dry-run

ts=$(date "+%Y.%m.%d-%H.%M.%S")
echo "This file was added via GitHub Actions on $ts" > "gactions-$ts.txt"
exec git add "gactions-$ts.txt"
exec git commit -m "Added gactions-$ts.txt file"