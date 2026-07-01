#!/usr/bin/env bash

source manuals.env

manual="$1";
lang="$2";

if [ ! -f "$manual/book.toml" ]; then
	echo "Manual $manual not found";
	exit 1;
fi
if [ ! -d "$manual/po/$lang" ]; then
	echo "Translation '$lang' not found for manual '$manual'";
	exit 1;
fi

# create i18n templates files
[ -d "$manual"/po/pot ] && rm -r "$manual/po/pot";
MDBOOK_OUTPUT='{"xgettext": {"depth": 3}}' \
	mdbook build "$manual" -d "$manual/po/pot"

readarray -d '' pot_files < <(find "$manual"/po/pot -name "*.pot" -print0);


for pot_file in "${pot_files[@]}"; do 
	filename=$(basename "$pot_file");
	filepath=$(dirname "$pot_file" | sed s@^"$manual"/po/pot@@);
	po_file="${manual}/po/$lang$filepath/${filename%.pot}.po"
	
	[ ! -d "${manual}/po/$lang$filepath" ] && mkdir -p "${manual}/po/$lang$filepath"
	# If po file doesn't exist create it
	[ ! -f "$po_file" ] && 
		msginit -i "$pot_file" -l "$lang" -o "$po_file";

	# Otherwise update it
	msgmerge -U "$po_file" "$pot_file"; 
done

rm -r "$manual/po/pot"
