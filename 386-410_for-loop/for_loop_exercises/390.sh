#!/bin/bash
#
# Task: 390
# Count lines in each .txt file and show filename with line count
#
# (C) marekkoc
#
# C: 2025.06.24
# U: 2025.06.24
#
echo
echo "###########"
echo "### 390 ###"
echo "###########"
echo

for file in documents/txt/*.txt; do
  echo -n "${file##/}: "; wc -l < "$file";
done
