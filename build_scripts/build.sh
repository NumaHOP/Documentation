#!/usr/bin/env bash 

MANUALS=("developper_manual" "user_manual")

# ==========================================
# === Tasks before the mdbook executions ===
# ==========================================
# Make the build directory (build-src) with the fusion 
# between src and the generated markdown files.

for manual in "${MANUALS[@]}"; do
	[ -d "$manual/build-src" ] && rm "$manual/build-src" -r
	# Build the initial source directory
	cp "$manual/src" -r "$manual/build-src"
	# Patch in the generated inside the source.
	if [ -d "$manual/include-cache" ]; then
		[ -f "$manual/include-cache/summary_stub.md" ] && cat "$manual/include-cache/summary_stub.md" >> "$manual/build-src/SUMMARY.md"
		include_cache="$manual/include-cache/md/*" 
		cp $include_cache -r "$manual/build-src/."
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
	[ -d "$manual/build-src" ] && rm "$manual/build-src" -r

	echo "Include generated HTML."
	include_cache="$manual/include-cache/html/*"
	[ -d "$manual/include-cache/html" ] && cp -r $include_cache "manuals/$manual"
	echo "Building assets for: $manual";
done
