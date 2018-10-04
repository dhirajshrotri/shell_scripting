#!/bin/bash
cat plant_catalog.xml |  grep "<com>" | sed --expression 's/<[^>]*>//g' | sed 's/^..//' | awk '{ sum += $1; } END { print sum; }' 