#!/bin/bash
# 💻🔀🗑️ Keep or Sweep for notes!
# Show a random block of text from a notes random notes file
# Simply make executable and click (or run as bash randomblock.sh)
# http://keeporsweep.net

# Use the current folder for now
FOLDER=$(pwd)

# Get a random file, ignoring hidden files
# https://askubuntu.com/questions/266179/how-to-exclude-ignore-hidden-files-and-directories-in-a-wildcard-embedded-find/749708#749708
# "tr -d '\0'" gets rid of "command substitution: ignored null byte in input"
# https://stackoverflow.com/questions/46163678/get-rid-of-warning-command-substitution-ignored-null-byte-in-input/46163991#46163991
RANDOMFILE=$(find "$FOLDER" -not -path '*/\.*' -type f -print0 | shuf -zn1 | tr -d '\0')

# Separate note files to blocks, give out one random block
# Code from https://stackoverflow.com/a/18539730
i=1
s=1
declare -a arr
while read -r line
do
    # If we find an empty line, then we increase the counter (i),
    # set the flag (s) to one, and skip to the next line
    [[ $line == "" ]] && ((i++)) && s=1 && continue

    # If the flag (s) is zero, then we are not in a new line of the block
    # so we set the value of the array to be the previous value concatenated
    # with the current line
    [[ $s == 0 ]] && arr[$i]="${arr[$i]}
$line" || {
            # Otherwise we are in the first line of the block, so we set the value
            # of the array to the current line, and then we reset the flag (s) to zero
            arr[$i]="$line"
            s=0;
    }
done < $RANDOMFILE

# Choose index to be a random number from 0 to the length of the array
# Code from https://stackoverflow.com/a/2388555
selectedblock=${arr[$RANDOM % ${#arr[@]} ]}
echo "$selectedblock"
