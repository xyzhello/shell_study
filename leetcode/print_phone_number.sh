#!/bin/bash
grep -E '^\d{3}-\d{3}-\d{4}$|^\(\d{3}\) \d{3}-\d{4}$' ./file.txt
