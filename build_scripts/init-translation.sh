#!/usr/bin/env bash

source manuals.env

manual="$1";
lang="$2";

if [ ! -f "$manual/book.toml" ]; then
	echo "Manual $manual not found";
	exit 1;
fi

readarray -d '' pot_files < <(find "$manual"/po/pot -name "*.pot" -print0);

for pot_file in "${pot_files[@]}"; do 
	filename=$(basename "$pot_file");
	filepath=$(dirname "$pot_file" | sed s@^"$manual"/po/pot@@);
	[ ! -d "${manual}/po/$lang$filepath" ] && mkdir -p "${manual}/po/$lang$filepath"
	msginit -i "$pot_file" -l "$lang" -o "${manual}/po/$lang$filepath/${filename%.pot}.po";
done
