#!/bin/bash

# new-day.sh - Create a new day folder from template

if [ -z "$1" ]; then
    echo "Usage: ./new-day.sh <day-number>"
    echo "Example: ./new-day.sh 2"
    exit 1
fi

DAY_NUM=$1
DAY_FOLDER="day-$DAY_NUM"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Check if folder already exists
if [ -d "$SCRIPT_DIR/$DAY_FOLDER" ]; then
    echo "❌ Error: $DAY_FOLDER already exists!"
    exit 1
fi

# Copy template
cp -r "$SCRIPT_DIR/templates/day-template" "$SCRIPT_DIR/$DAY_FOLDER"

# Replace 'Day X' with actual day number in all files
for file in "$SCRIPT_DIR/$DAY_FOLDER"/*.md; do
    sed -i "s/Day X/Day $DAY_NUM/g" "$file"
done

echo "✅ Created $DAY_FOLDER successfully!"
echo ""
echo "📁 Files created:"
echo "   - $DAY_FOLDER/devops-task.md      🐧"
echo "   - $DAY_FOLDER/azure-task.md       ☁️"
echo "   - $DAY_FOLDER/aws-task.md         🟠"
echo "   - $DAY_FOLDER/kubernetes-task.md  ☸️"
echo "   - $DAY_FOLDER/terraform-task.md   🏗️"
echo ""
echo "💡 Tip: Delete the task files you don't use today"
echo ""
echo "Next steps:"
echo "   cd $DAY_FOLDER"
echo "   # Edit your task files"
echo "   # Delete unused templates"
echo "   git add . && git commit -m \"Day $DAY_NUM: <description>\""
