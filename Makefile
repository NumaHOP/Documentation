
build:
	mdbook build
	rm book/code/db_schema/index.html # Remove empty stub page
	cp include/db_schema/numahop/* book/code/db_schema -r # Patch the schemaspy page in

# Open the book in your prefered browser.
open:
	xdg-open book/index.html

# Fetches the mariadb J connector and the schemaspy jars.
setup:
	if [[ ! -d vendor ]]; then mkdir vendor; fi
	wget "https://github.com/schemaspy/schemaspy/releases/download/v6.2.4/schemaspy-6.2.4.jar" -P vendor
	wget "https://dlm.mariadb.com/4174416/Connectors/java/connector-java-3.5.2/mariadb-java-client-3.5.2.jar" -P vendor

# Make sure you have the dockerised version of numahop running on your machine 
# before running this
update-gen:
	nu scripts/gen-from-open-api.nu
	./scripts/gen_db_schema.sh
