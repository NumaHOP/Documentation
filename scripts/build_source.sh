#!/usr/bin/env sh

rm build-src -r > /dev/null 2>&1
mkdir build-src

cp src/* -r build-src/. 

# Patch in include files.
cat include/summary_stub.md >> build-src/SUMMARY.md
cp include/api build-src/code -r
cp include/open-api.md build-src/code/api/.
