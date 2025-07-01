#!/bin/bash
#
# Task: 391
# Rename all .txt files in numbered_files/ to add .bak extension
#
# (c) marekkoc
#
# C: 2025.06.24
# U: 2025.06.24
#

echo
echo "###########"
echo "### 391 ###"
echo "###########"
echo


for file in numbered_files/*.bak; do
  mv ${file} ${file}.bak
  echo "Renamed ${file} to ${file}.bak";
done
