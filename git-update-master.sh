#!/bin/bash
current_branch=$(git symbolic-ref --short HEAD)
git stash && git checkout master && git pull --rebase && git checkout $current_branch
unset current_branch
