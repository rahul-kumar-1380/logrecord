#!/bin/bash

# my file names
historyfile="command_history.txt"
statsfile="cpu_ram_usage.txt"

# saving history of commands run
history > "$historyfile"

# saving cpu usage and ram usage record
echo "==== $(date) ====" > "$statsfile"
top -b -n 1 | head -n 5 >> "$statsfile"

# git operations
git add .
git commit -m "Updated logs at $(date)"
git push
