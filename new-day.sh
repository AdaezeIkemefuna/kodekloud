#!/bin/bash

# new-day.sh - Create a new day folder with specific tracks

if [ -z "$1" ]; then
    echo "Usage: ./new-day.sh <day-number> [tracks...]"
    echo "Tracks: devops, azure, aws, kubernetes, terraform"
    echo ""
    echo "Examples:"
    echo "  ./new-day.sh 2 devops azure           # Only DevOps and Azure"
    echo "  ./new-day.sh 3 kubernetes terraform   # Only K8s and Terraform"
    echo "  ./new-day.sh 4                        # All 5 tracks"
    exit 1
fi

DAY_NUM=$1
shift
TRACKS=("$@")
DAY_FOLDER="day-$DAY_NUM"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# If no tracks specified, use all
if [ ${#TRACKS[@]} -eq 0 ]; then
    TRACKS=("devops" "azure" "aws" "kubernetes" "terraform")
fi

# Check if folder already exists
if [ -d "$SCRIPT_DIR/$DAY_FOLDER" ]; then
    echo "❌ Error: $DAY_FOLDER already exists!"
    exit 1
fi

# Create day folder
mkdir -p "$SCRIPT_DIR/$DAY_FOLDER"

# Copy only requested templates
for track in "${TRACKS[@]}"; do
    template="$SCRIPT_DIR/templates/${track}-task.md"
    if [ -f "$template" ]; then
        cp "$template" "$SCRIPT_DIR/$DAY_FOLDER/"
        sed -i "s/Day X/Day $DAY_NUM/g" "$SCRIPT_DIR/$DAY_FOLDER/${track}-task.md"
        echo "✅ Created ${track}-task.md"
    else
        echo "⚠️  Template not found: ${track}-task.md"
    fi
done

echo ""
echo "📁 Created $DAY_FOLDER with ${#TRACKS[@]} track(s)"