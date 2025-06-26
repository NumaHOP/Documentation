#!/usr/bin/env sh
set -x

cd technical_doc || exit 1

rm build-src -r > /dev/null 2>&1
mkdir build-src

cp src/* -r build-src/. 

# Patch in include files.
cat include/summary_stub.md >> build-src/SUMMARY.md
#cp include/api build-src/code -r
mkdir build-src/code/api -p
cp include/scraped-api.md build-src/code/api/index.md
cp include/open-api.md build-src/code/api/.
