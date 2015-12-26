#!/bin/bash

python3 gitbook-auto-summary.py .
mv SUMMARY-* SUMMARY.md
gitbook serve
