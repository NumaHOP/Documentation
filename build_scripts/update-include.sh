#!/usr/bin/env bash
# This script updates the parts in the include-cache directory.
MANUALS=("developper_manual" "user_manual")

# Common updates
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

# Developper manual specific
echo "Update the database schema...";
# Check the db is running on port 3306.
if grep -q ":$(printf '%04X' 3306)" /proc/net/tcp; then
	# Generate the database schema
	java \
		-jar vendor/schemaspy.jar \
		-configFile developper_manual/scripts/schemaspy.properties \
		-all \
		-nopages \
		-norows \
		-noviews \
		-renderer :cairo \
		$
	
	# Get only the part containing the db schema
	mkdir -p ./devlopper_manual/include-cache/html/code/db_schema
	cp /tpm/numahop-db-schemaspy/numahop ./developper_manual/include-cache/html/code/db_schema
else
	echo "Data base not found. Couldn't run schema spy."
fi

echo "Update the api documentation from the source code...";
if [ -d "$NH_SOURCE_PATH" ]; then 
	python3 devlopper_manual/scripts/grep_api "$NH_SOURCE_PATH" -o developper_manual/include-cache/scraped-api.md
else
	echo "NumaHOP source not found please define the NH_SOURCE_PATH environement variable.";
fi

