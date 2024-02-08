#!/bin/bash

# Converte ficheiros txt em html
for file in *.txt; do
    if [ -f "$file" ]; then
        filename="${file%.*}"
        pandoc -s "$file" -o "${filename}.html"
    fi
done
