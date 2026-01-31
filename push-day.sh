#!/bin/bash

# push-day.sh - Stage, commit, and push daily progress

DAY_NUM=$1
shift
COMMIT_MSG="$*"

if [ -z "$DAY_NUM" ]; then
    echo "❌ Error: Day number is required"
    echo "Usage: ./push-day.sh <day-number> [commit message]"
    exit 1
fi

# Default commit message if none provided
if [ -z "$COMMIT_MSG" ]; then
    COMMIT_MSG="Day $DAY_NUM tasks completed"
fi

git add .
git commit -m "Day $DAY_NUM: $COMMIT_MSG"
git push