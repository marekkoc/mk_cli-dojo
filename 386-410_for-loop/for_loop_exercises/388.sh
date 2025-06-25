#!/bin/bash

# Taks 388
# Make all .sh files in scripts/bash/ directory executable
#
# (c) marekkoc
#
# C: 2025.06.25
# U: 2025.06.25
#
#

for file in scripts/bash/*.sh; do
  if [ -f $file ]; then
     ls -l $file;
     chmod +x $file;
     ls -l $file;
     echo;
  fi
done
