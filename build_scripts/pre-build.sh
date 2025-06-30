#!/usr/bin/env sh
set -x

rm developper_manual/build-src -r > /dev/null 2>&1
cp developper_manual/src -r developper_manual/build-src

# Patch in include files.
cat developper_manual/include/summary_stub.md >> developper_manual/build-src/SUMMARY.md
#cp include/api build-src/code -r
mkdir developper_manual/build-src/code/api -p
cp developper_manual/include/scraped-api.md developper_manual/build-src/code/api/.
cp developper_manual/include/open-api.md developper_manual/build-src/code/api/.
