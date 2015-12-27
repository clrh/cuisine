#!/bin/bash

git pull --rebase
python3 gitbook-auto-summary.py .
mv SUMMARY-* SUMMARY.md
gitbook serve
