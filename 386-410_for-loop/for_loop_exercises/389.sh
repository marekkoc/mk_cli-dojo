#!/bin/bas
#
# Task: 389
# Change ownership of all log files to current user (simulate with echo)
#
# (C) marekkoc
#
# C: 2025.06.24
# U: 2025.06.24
#
echo
echo "###########"
echo "### 389 ###"
echo "###########"
echo


for logfile in logs/*/*.log; do
    echo "chown $(whoami): $logfile";
done


