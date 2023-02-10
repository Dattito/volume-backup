#!/bin/sh
cd /backups
for dir in *; do
    if [ -d "$dir" ]; then
        tar -czf "/backups/$dir.tar.gz" "$dir"
    fi
done