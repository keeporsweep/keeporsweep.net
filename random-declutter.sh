#!/bin/bash
# 💻🔀🗑️ Random declutter
# Show a random file so you can clean your stuff
# Simply make executable and click (or run as bash random-declutter.sh)
# Jan-Christoph Borchardt, http://jancborchardt.net

# Use the current folder
FOLDER=$(pwd)

# Get a random file
# "tr -d '\0'" gets rid of "command substitution: ignored null byte in input"
RANDOMFILE=$(find "$FOLDER" -type f -print0 | shuf -zn1 | tr -d '\0')

# Open file with relevant app
xdg-open "$RANDOMFILE"
