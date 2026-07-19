#!/usr/bin/env fish

# create-issue.fish
# Creates a GitHub issue on NamalD/cantus-vani and adds it to
# project 6 ("Cantus Vani project") in the "Todo" column.
#
# Usage:
#   create-issue "Fix navigation bug"
#   create-issue "Scaffold website" "Optional body text here"

set REPO "NamalD/cantus-vani"
set PROJECT_NUMBER 6

if test (count $argv) -lt 1
    echo "Usage: create-issue <title> [body]"
    exit 1
end

set TITLE $argv[1]
set BODY ""

if test (count $argv) -ge 2
    set BODY $argv[2]
end

# Step 1: Create the issue
set RESPONSE (gh api repos/$REPO/issues -X POST -f title="$TITLE" -f body="$BODY" --jq '{url: .html_url, number: .number}')
set ISSUE_URL (echo "$RESPONSE" | jq -r '.url')

if test -z "$ISSUE_URL" -o "$ISSUE_URL" = "null"
    echo "Failed to create issue."
    exit 1
end

# Step 2: Add the issue to the project board (status auto-sets to 'Todo')
set ITEM_ID (gh project item-add "$PROJECT_NUMBER" \
    --owner "NamalD" \
    --url "$ISSUE_URL" \
    --format "json")

if test -z "$ITEM_ID"
    echo "Failed to add issue to project."
    exit 1
end

echo "$ISSUE_URL"
