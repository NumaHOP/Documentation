#!/usr/bin/env bash 

MANUALS=("developper_manual" "user_manual")

rm book/developper_manual/code/db_schema/index.html 
cp developper_manual/include/db_schema/numahop/* book/developper_manual/code/db_schema -r 

for manual in "${MANUALS[@]}"; do
	echo "Building assets for: $manual";
	./build_scripts/build-assets.sh "$manual";
done
