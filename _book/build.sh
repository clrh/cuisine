#!/bin/bash

# Updates local branch
git checkout master
git pull --rebase

# Generates Summary of gitbook and git it
python3 gitbook-auto-summary.py .
mv SUMMARY-* SUMMARY.md
git add SUMMARY.md
git commit -m "summary update"

# Generate gitbook and git it
gitbook build
git add _book
git commit -m "ebook build update"

# Updates repostory
git push origin master

# Push gh-pages to render the book online
git push origin `git-subtree split --prefix _book master`:gh-pages --force
