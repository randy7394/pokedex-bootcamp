#!/bin/bash

files=$1
commit_message=$2
has_push=$3

echo "Adding files" 
git add "$files"

echo "Making commit"; git commit -m "$commit_message"

if [[ "$has_push" == "true" ]]; then
git push origin $(git branch --show-current)
fi