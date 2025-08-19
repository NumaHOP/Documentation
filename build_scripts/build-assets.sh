#!/usr/bin/env bash
# Script that handle the generation of different types of assets that require processing.

MANUAL="$1";


# Handle the mermaid-graphs.
list=$(ls "./$MANUAL/include/mermaid_graphs" 2>/dev/null) || exit 0;

readarray mmds <<< "$list";

mkdir -p "./book/$MANUAL/assets/graphs";
for mmd in "${mmds[@]}"; do
	mmdc -c ./common/mermaid-config.json \
		-b transparent \
		--input "./$MANUAL/include/mermaid_graphs/${mmd%$'\n'}" \
		-o "./book/$MANUAL/assets/graphs/${mmd%.mmd$'\n'}.svg" 
done
