#!/bin/bash

if [ -z "$1" ]; then
    msg="Updates"
else
    msg="$1"
fi

git add .
git commit -m "$msg"
git push
git checkout latest
git merge main
git push
git checkout main
