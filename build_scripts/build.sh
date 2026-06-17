#!/usr/bin/env bash 

MANUALS=("developper_manual" "user_manual" "release_notes")

# ==========================================
# === Tasks before the mdbook executions ===
# ==========================================
# Make the build directory (build-src) with the fusion 
# between src and the generated markdown files.

for manual in "${MANUALS[@]}"; do
	# Clean up old build
	[ -d "$manual/build-src" ] && rm "$manual/build-src" -r;

	echo "mkdir ./$manual/build-src";
	[ ! -d "$manual/build-src" ] && mkdir "$manual/build-src";

	# Build the initial source directory
	cp "$manual"/src/* -r "$manual/build-src";

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
LANGUAGES=("fr")
for manual in "${MANUALS[@]}"; do
	mdbook build "$manual" -d "./manuals/$manual"

	# update templates
	rm -r "./$manual/po/pot"
	MDBOOK_OUTPUT='{"xgettext": {"depth": 3}}' \
		mdbook build "$manual" -d "./$manual/po/pot"

	
	# i18n executions
	for lang in "${LANGUAGES[@]}"; do
		find "./$manual/po/$lang/." -name "*.po" | msgcat -f - -o "./$manual/po/$lang.po"
		MDBOOK_BOOK__LANGUAGE="$lang" \
			mdbook build "$manual" -d "./manuals/$lang/$manual"
		rm "./$manual/po/$lang.po"
	done
done

# ==========================
# === Tasks after MdBook ===
# ==========================
for manual in "${MANUALS[@]}"; do
	# delete build directories
	[ -d "$manual/build-src" ] && rm "$manual/build-src" -r;

	echo "Include generated HTML.";

	[ -d "$manual/include-cache/html" ] && cp -r "$manual"/include-cache/html/* "manuals/$manual"
	cp ./landing.html ./manuals/.
done
