#!/bin/bash
# 💻🔀🗑️ Random declutter
# Show a random file so you can clean your stuff
# Simply make executable and click (or run as bash random-declutter.sh)
# Jan-Christoph Borchardt, http://jancborchardt.net

# Use the current folder for now
FOLDER=$(pwd)

# Get a random file, ignoring hidden files
# https://askubuntu.com/questions/266179/how-to-exclude-ignore-hidden-files-and-directories-in-a-wildcard-embedded-find/749708#749708
# "tr -d '\0'" gets rid of "command substitution: ignored null byte in input"
# https://stackoverflow.com/questions/46163678/get-rid-of-warning-command-substitution-ignored-null-byte-in-input/46163991#46163991
RANDOMFILE=$(find "$FOLDER" -not -path '*/\.*' -type f -print0 | shuf -zn1 | tr -d '\0')

# Open file with relevant app
xdg-open "$RANDOMFILE"
