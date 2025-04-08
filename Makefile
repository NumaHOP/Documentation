export MDBOOK_PREPROCESSOR__MERMAID__COMMAND="vendor/mdbook-mermaid"

build:
	./scripts/build_source.sh
	vendor/mdbook build 
	# Remove empty stub pages
	rm book/code/db_schema/index.html 
	cp include/db_schema/numahop/* book/code/db_schema -r 

# Open the book in your prefered browser.
open:
	xdg-open book/index.html

# Fetches mdbook with the needed processors, the mariadb J connector and the schemaspy jars.
# It fetches the gh binary releases wich is quicker than installing normally. If you don't want
# to fetch the binary installations you can install everything manually.
setup:
	-if [ ! -d vendor ]; then mkdir vendor; fi
	@echo "Downloading mdbook..."
	@curl -sSL https://github.com/rust-lang/mdBook/releases/download/v0.4.47/mdbook-v0.4.47-x86_64-unknown-linux-gnu.tar.gz | tar -xz --directory=vendor
	@echo "Downloading mdbook mermaid preproc..."
	@curl -sSL https://github.com/badboy/mdbook-mermaid/releases/download/v0.14.1/mdbook-mermaid-v0.14.1-x86_64-unknown-linux-gnu.tar.gz | tar -xz --directory=vendor
	@echo "Downloading schemaspy..."
	@curl -sSL https://github.com/schemaspy/schemaspy/releases/download/v6.2.4/schemaspy-6.2.4.jar --output-dir vendor --output schemaspy-6.2.4.jar
	@echo "Downloading mariadb connector..."
	@curl -sSL https://dlm.mariadb.com/4174416/Connectors/java/connector-java-3.5.2/mariadb-java-client-3.5.2.jar --output-dir vendor --output mariadb-java-client-3.5.2.jar

# Make sure you have the dockerised version of numahop running on your machine 
# before running this.
update-gen:
	nu scripts/gen-from-open-api.nu
	nu scripts/grep-api.nu 
	./scripts/gen_db_schema.sh
