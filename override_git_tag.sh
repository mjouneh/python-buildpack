#!/bin/bash

git add -all

git commit

git push

#delete local tag
git tag -d v1.6.28-numpy

# Delete the tag on any remote before you push
git push origin :refs/tags/v1.6.28-numpy

# Replace the tag to reference the most recent commit
git tag -fa v1.6.28-numpy

# Push the tag to the remote origin
git push origin master --tags
