#!/usr/bin/env sh

rm developper_manual/build-src -r > /dev/null 2>&1
cp developper_manual/src -r developper_manual/build-src

# Patch in include files.
cat developper_manual/include-cache/summary_stub.md >> developper_manual/build-src/SUMMARY.md

# Patch in the generated api documentation
mkdir developper_manual/build-src/code/api -p
cp developper_manual/include-cache/scraped-api.md developper_manual/build-src/code/api/.
cp developper_manual/include-cache/open-api.md developper_manual/build-src/code/api/.

# Patch in the compiled mermaid graphs
cp -r developper_manual/include-cache/assets developper_manual/build-src/
