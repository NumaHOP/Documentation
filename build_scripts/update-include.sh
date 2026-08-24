#!/usr/bin/env bash
# This script updates the parts in the include-cache directory.
source manuals.env

# Common updates.
# Replace by an mdbook plugin that does the rendering at book evaluation.
echo "Updating generated assets...";
for manual in "${MANUALS[@]}"; do
	echo "Building assets for: $manual";

	# Handle the mermaid-graphs.
	list=$(ls "./$manual/assets/graphs" 2>/dev/null) || continue;

	readarray mmds <<< "$list";

	mkdir -p "./$manual/include-cache/assets/graphs";
	for mmd in "${mmds[@]}"; do
		echo "Compiling ./$manual/assets/graphs/${mmd%$'\n'}";
		config="./common/mermaid-config.json" 
		if [ -f "./$manual/assets/graphs/${mmd%.mmd}.json" ]; then  
			config="./$manual/assets/graphs/${mmd%.mmd}.json";
		fi

		mmdc -c "$config" \
			-b transparent \
			--input "./$manual/assets/graphs/${mmd%$'\n'}" \
			-o "./$manual/include-cache/md/assets/graphs/${mmd%.mmd$'\n'}.svg";
	done
	# No other generated assets for now.
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
	mkdir -p ./developper_manual/include-cache/html/code/db_schema
	cp /tpm/numahop-db-schemaspy/numahop ./developper_manual/include-cache/html/code/db_schema
else
	echo "Data base not found. Couldn't run schema spy."
fi

echo "Update the api documentation from the source code...";
if [ -d "$NH_SOURCE_PATH" ]; then 
	python3 developper_manual/scripts/grep_api "$NH_SOURCE_PATH" -o developper_manual/include-cache/scraped-api.md
else
	echo "NumaHOP source not found please define the NH_SOURCE_PATH environement variable.";
fi

