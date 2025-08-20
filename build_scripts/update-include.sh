#!/usr/bin/env bash
# This script updates the parts in the include-cache directory.
MANUALS=("developper_manual" "user_manual")

echo "Updating generated assets...";
for manual in "${MANUALS[@]}"; do
	echo "Building assets for: $manual";

	# Handle the mermaid-graphs.
	list=$(ls "./$manual/assets/graphs" 2>/dev/null) || continue;

	readarray mmds <<< "$list";

	mkdir -p "./$manual/include-cache/assets/graphs";
	for mmd in "${mmds[@]}"; do
		echo "Compiling ./$manual/assets/graphs/${mmd%$'\n'}";
		mmdc -c ./common/mermaid-config.json \
			-b transparent \
			--input "./$manual/assets/graphs/${mmd%$'\n'}" \
			-o "./$manual/include-cache/assets/graphs/${mmd%.mmd$'\n'}.svg";
	done
done

echo "Update the database schema...";

# Check the db is running on port 3306.
if grep -q ":$(printf '%04X' 3306)" /proc/net/tcp; then
	java \
		-jar vendor/schemaspy-6.2.4.jar \
		-configFile developper_manual/scripts/schemaspy.properties \
		-all \
		-nopages \
		-norows \
		-noviews \
		-renderer :cairo \
		$
else
	echo "Data base not found."
fi

echo "Update the api documentation...";
if [ -d "$NH_SOURCE_PATH" ]; then 
	python3 devlopper_manual/scripts/grep_api "$NH_SOURCE_PATH" -o developper_manual/include-cache/scraped-api.md
else
	echo "NumaHOP source not found please define the NH_SOURCE_PATH environement variable.";
fi

