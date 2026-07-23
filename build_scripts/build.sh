#!/usr/bin/env bash 

set -x

source manuals.env

[ -d manuals ] && rm -r manuals/*;
mkdir manuals;

# ==========================================
# === Tasks before the mdbook executions ===
# ==========================================
# Make the build directory (build-src) with the fusion 
# between src and the generated markdown files.

for manual in "${MANUALS[@]}"; do
	# Clean up old build
	cp "$manual"/src -r "$manual/build-src";

	# Patch in the generated inside the source.
	if [ -d "$manual/include-cache" ]; then
		echo "include for $manual";
		if [ -f "$manual"/include-cache/summary_stub.md ]; then
			cat "$manual"/include-cache/summary_stub.md \
				>> "$manual"/build-src/SUMMARY.md;
		fi

		cp "$manual"/include-cache/md/* -r "$manual/build-src/."
	fi
done

# =========================
# === MdBook executions ===
# =========================
for manual in "${MANUALS[@]}"; do
	# generate english manual
	mdbook build "$manual/." -d "manuals/$manual/en";

	# generate available translations
	for lang in "${LANGUAGES[@]}"; do
		[ ! -d "$manual/po/$lang" ] && continue;
		find "$manual/po/$lang" -name "*.po" | msgcat -f - -o "$manual/po/$lang.po";

		MDBOOK_BOOK__LANGUAGE="$lang" \
			mdbook build "$manual" -d "manuals/$manual/$lang";

		rm "$manual/po/$lang.po";
	done

	# delete build directories
	rm "$manual/build-src" -r;
done

# ==========================
# === Tasks after MdBook ===
# ==========================
for manual in "${MANUALS[@]}"; do
	echo "Include generated HTML and assets.";
	cp "$manual"/include-cache/html/* -r manuals/"$manual"/en; 
	for lang in "${LANGUAGES[@]}"; do
		if [ -d "$manual"/include-cache/html ] && [ -d "$manual/po/$lang" ]; then 
			cp "$manual"/include-cache/html/* -r manuals/"$manual"/"$lang"; 
		fi
	done
	cp landing.html manuals/index.html;
	cp common/theme/favicon.png  manuals/.;
	cp common/theme/css/variables.css manuals/.;
done
