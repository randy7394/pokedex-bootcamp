#!/bin/bash

files=$1
commit_message=$2
has_push=$3

echo "Adding files" 
git add "$files"

echo "Making commit"
    git commit -m "$commit_message"

if [[ "$has_push" == "true" ]]; then
    current_branch=$(git branch --show-current)
    echo "Pushing from $current_branch"
    git push origin $current_branch
fi