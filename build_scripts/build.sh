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
for manual in "${MANUALS[@]}"; do
   mdbook build "$manual" -d "./manuals/$manual"
done

# ==========================
# === Tasks after MdBook ===
# ==========================

for manual in "${MANUALS[@]}"; do
	# delete build directory.
	[ -d "$manual/build-src" ] && rm "$manual/build-src" -r;

	echo "Include generated HTML.";

	[ -d "$manual/include-cache/html" ] && cp -r "$manual"/include-cache/html/* "manuals/$manual"

	echo "Building assets for: $manual";
done
