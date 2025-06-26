#!/usr/bin/env sh
set -x

rm technical_doc/build-src -r > /dev/null 2>&1
cp technical_doc/src -r technical_doc/build-src

# Patch in include files.
cat technical_doc/include/summary_stub.md >> technical_doc/build-src/SUMMARY.md
#cp include/api build-src/code -r
mkdir technical_doc/build-src/code/api -p
cp technical_doc/include/scraped-api.md technical_doc/build-src/code/api/.
cp technical_doc/include/open-api.md technical_doc/build-src/code/api/.
