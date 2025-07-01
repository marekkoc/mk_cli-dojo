#!/bin/bash
echo "Creating backup..."
tar -czf backup_$(date +%Y%m%d).tar.gz data/
